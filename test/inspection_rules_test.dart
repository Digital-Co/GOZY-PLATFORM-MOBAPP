import 'package:flutter_test/flutter_test.dart';
import 'package:gozy/utils/inspection/inspection_models.dart';
import 'package:gozy/utils/inspection/inspection_rules.dart';

InspectionRecord _record({
  String type = inspectionTypeCheckin,
  String status = statusToValidate,
  int version = 1,
  String? hostAt,
  String? guestAt,
  String? lockedAt,
  bool? hasDamage,
}) =>
    InspectionRecord(
      id: 1,
      reservationId: 10,
      type: type,
      status: status,
      version: version,
      hostValidatedAt: hostAt,
      guestValidatedAt: guestAt,
      lockedAt: lockedAt,
      hasDamage: hasDamage,
    );

void main() {
  group('mileage', () {
    test('accepts whole kilometres with spaces', () {
      expect(parseMileage('45 230').value, 45230);
      expect(parseMileage('0').value, 0);
      expect(parseMileage(' 12 345 ').value, 12345);
    });

    test('refuses empty, negative, decimal and letters', () {
      expect(parseMileage('').errorKey, 'insp_err_mileage_required');
      expect(parseMileage(null).errorKey, 'insp_err_mileage_required');
      expect(parseMileage('-5').errorKey, 'insp_err_mileage_invalid');
      expect(parseMileage('12a').errorKey, 'insp_err_mileage_invalid');
      expect(parseMileage('10000000').errorKey, 'insp_err_mileage_invalid');
    });

    test('the return mileage cannot be lower than the departure mileage', () {
      expect(parseMileage('45229', minimum: 45230).errorKey,
          'insp_err_mileage_decreasing');
      expect(parseMileage('45230', minimum: 45230).isOk, isTrue);
      expect(parseMileage('45980', minimum: 45230).value, 45980);
    });
  });

  group('fuel', () {
    test('five levels, in order', () {
      expect(fuelLevels,
          ['reserve', 'quarter', 'half', 'three_quarters', 'full']);
      expect(isFuelLevel('half'), isTrue);
      expect(isFuelLevel('1/2'), isFalse);
      expect(isFuelLevel(null), isFalse);
    });

    test('delta in marks', () {
      expect(fuelDelta('half', 'quarter'), -1);
      expect(fuelDelta('reserve', 'full'), 4);
      expect(fuelDelta('half', 'half'), 0);
      expect(fuelDelta('half', null), 0);
    });
  });

  group('photo slots', () {
    test('8 at most, counting pictures stored and still queued', () {
      expect(remainingPhotoSlots(stored: 0, queued: 0), 8);
      expect(remainingPhotoSlots(stored: 5, queued: 2), 1);
      expect(remainingPhotoSlots(stored: 8, queued: 0), 0);
      expect(remainingPhotoSlots(stored: 7, queued: 4), 0);
    });
  });

  group('check-in form', () {
    final checklist = [
      const ChecklistItemInfo(key: 'registration_card', required: true),
      const ChecklistItemInfo(key: 'technical_inspection'),
    ];

    test('is complete with state, mileage and fuel', () {
      final form = InspectionFormData(
          generalState: 'clean', mileageText: '45 230', fuelLevel: 'half');
      expect(validateCheckinForm(form, checklist), isEmpty);
    });

    test('lists every missing field', () {
      final errors = validateCheckinForm(InspectionFormData(), checklist);
      expect(errors.keys,
          unorderedEquals(['generalState', 'mileage', 'fuelLevel']));
    });

    test('the comment is limited to 500 characters', () {
      final form = InspectionFormData(
          generalState: 'dirty',
          mileageText: '1',
          fuelLevel: 'full',
          comment: 'x' * 501);
      expect(validateCheckinForm(form, checklist)['comment'],
          'insp_err_comment_long');
      form.comment = 'x' * 500;
      expect(validateCheckinForm(form, checklist), isEmpty);
    });

    test('the body answers every checklist item and sends no amount', () {
      final form = InspectionFormData(
        generalState: 'average',
        mileageText: '45 230',
        fuelLevel: 'three_quarters',
        keysConfirmed: true,
        comment: ' ok ',
        checklist: {'registration_card': true},
      );
      final input = buildInspectionInput(form,
          type: inspectionTypeCheckin, checklist: checklist, photoIds: [3, 4]);
      expect(input['mileage'], 45230);
      expect(input['fuelLevel'], 'three_quarters');
      expect(input['generalState'], 'average');
      expect(input['keysConfirmed'], true);
      expect(input['comment'], 'ok');
      expect(input['checklist'], [
        {'key': 'registration_card', 'present': true},
        {'key': 'technical_inspection', 'present': false},
      ]);
      expect(input['photoIds'], [3, 4]);
      expect(input.keys.any((k) => k.toLowerCase().contains('price')), isFalse);
    });
  });

  group('check-out form', () {
    test('the Yes/No answer is required', () {
      final form = InspectionFormData(mileageText: '46000', fuelLevel: 'half');
      expect(validateCheckoutForm(form)['hasDamage'], 'insp_err_damage_answer');
    });

    test('without damage: mileage and fuel are enough', () {
      final form = InspectionFormData(
          hasDamage: false, mileageText: '45 980', fuelLevel: 'half');
      expect(validateCheckoutForm(form, minMileage: 45230), isEmpty);
    });

    test('with damage: a description is required', () {
      final form = InspectionFormData(
          hasDamage: true, mileageText: '45 980', fuelLevel: 'half');
      expect(validateCheckoutForm(form)['damageDescription'],
          'insp_err_damage_description');
      form.damageDescription = 'Rayure sur le pare-choc';
      expect(validateCheckoutForm(form), isEmpty);
    });

    test('mileage below the check-in is refused', () {
      final form = InspectionFormData(
          hasDamage: false, mileageText: '100', fuelLevel: 'half');
      expect(validateCheckoutForm(form, minMileage: 45230)['mileage'],
          'insp_err_mileage_decreasing');
    });

    test('the body of a check-out without damage carries no description', () {
      final form = InspectionFormData(
          hasDamage: false,
          mileageText: '45980',
          fuelLevel: 'half',
          damageDescription: 'leftover');
      final input = buildInspectionInput(form, type: inspectionTypeCheckout);
      expect(input['hasDamage'], false);
      expect(input['damageDescription'], '');
      expect(input.containsKey('generalState'), isFalse);
      expect(input.containsKey('checklist'), isFalse);
    });
  });

  group('review (existing review module)', () {
    test('required for the renter: rating and text', () {
      expect(validateReview(0, '', required: true).errors.keys,
          unorderedEquals(['rating', 'review']));
      expect(validateReview(4, '', required: true).errors.keys, ['review']);
      expect(validateReview(4, 'Très bien', required: true).isOk, isTrue);
    });

    test('optional for the owner: empty means nothing is sent', () {
      expect(validateReview(0, '', required: false).isOk, isTrue);
      expect(hasReviewContent(0, ''), isFalse);
      expect(validateReview(3, '', required: false).isOk, isFalse);
      expect(hasReviewContent(3, ''), isTrue);
    });
  });

  group('client state machine', () {
    InspectionStage stage({
      String type = inspectionTypeCheckin,
      String? role = roleHost,
      InspectionRecord? record,
      bool open = true,
      String? reason = 'open',
    }) =>
        resolveInspectionStage(
            type: type,
            viewerRole: role,
            record: record,
            windowOpen: open,
            windowReason: reason);

    test('feature switched off hides everything', () {
      expect(stage(reason: 'inspectionDisabled', open: false),
          InspectionStage.disabled);
      expect(stage(record: _record(), reason: 'inspectionDisabled'),
          InspectionStage.disabled);
    });

    test('before the window opens, after it closes, or not possible', () {
      expect(stage(open: false, reason: 'notYetOpen'), InspectionStage.notOpen);
      expect(stage(open: false, reason: 'closed'), InspectionStage.windowClosed);
      expect(stage(open: false, reason: 'reservationState'),
          InspectionStage.notAvailable);
      expect(stage(open: false, reason: 'paymentNotCompleted'),
          InspectionStage.notAvailable);
    });

    test('owner starts the check-in, renter waits for it', () {
      expect(stage(role: roleHost), InspectionStage.todo);
      expect(stage(role: roleGuest), InspectionStage.waitingForOwner);
    });

    test('either party can start a check-out', () {
      expect(stage(type: inspectionTypeCheckout, role: roleGuest),
          InspectionStage.todo);
      expect(stage(type: inspectionTypeCheckout, role: roleHost),
          InspectionStage.todo);
    });

    test('to validate: the author waits, the other party validates', () {
      final record = _record(hostAt: '2026-10-27T10:00:00Z');
      expect(stage(role: roleHost, record: record), InspectionStage.waitingForOther);
      expect(stage(role: roleGuest, record: record), InspectionStage.toValidateByMe);
    });

    test('validated by both is final', () {
      final record = _record(
          status: statusValidated,
          hostAt: '2026-10-27T10:00:00Z',
          guestAt: '2026-10-27T10:05:00Z',
          lockedAt: '2026-10-27T10:05:00Z');
      expect(stage(role: roleGuest, record: record, open: false, reason: 'locked'),
          InspectionStage.validated);
    });

    test('a draft of mine is still to do', () {
      expect(stage(record: _record(status: statusDraft)), InspectionStage.todo);
    });

    test('every stage has a badge text', () {
      for (final value in InspectionStage.values) {
        expect(stageBadge(value).textKey, startsWith('insp_stage_'));
      }
    });
  });

  group('lists', () {
    test('entry points only for confirmed or completed reservations', () {
      for (final state in ['pending', 'declined', 'expired', 'cancelled', null]) {
        expect(
            inspectionEntryFor(reservationState: state, globalStatus: null)
                .isVisible,
            isFalse,
            reason: '$state');
      }
      for (final state in ['approved', 'completed']) {
        final entry =
            inspectionEntryFor(reservationState: state, globalStatus: null);
        expect(entry.showCheckin && entry.showCheckout, isTrue);
        expect(entry.badgeKey, isNull);
      }
    });

    test('badge follows the derived status sent by the API', () {
      InspectionEntry entry(String status) => inspectionEntryFor(
          reservationState: 'approved', globalStatus: status);
      expect(entry('to_validate').badgeKey, 'insp_status_to_validate');
      expect(entry('damage_declared').badgeTone, BadgeTone.danger);
      expect(entry('dispute').badgeKey, 'insp_status_dispute');
      expect(entry('dispute_closed').badgeKey, 'insp_status_dispute_closed');
      expect(entry('upcoming').badgeKey, isNull);
      expect(entry('in_progress').badgeKey, isNull);
      expect(entry('completed').badgeKey, isNull);
    });

    test('a locked or disputed check-out is read only', () {
      expect(isCheckoutReadOnly(_record(type: inspectionTypeCheckout), null), isFalse);
      expect(
          isCheckoutReadOnly(
              _record(type: inspectionTypeCheckout, status: statusValidated), null),
          isTrue);
      expect(
          isCheckoutReadOnly(
              _record(type: inspectionTypeCheckout),
              const DisputeRecord(id: 1, reservationId: 10, status: 'open')),
          isTrue);
    });

    test('HTTP errors of the photo routes map to a text', () {
      expect(photoHttpErrorKey(413), 'insp_err_photo_too_large');
      expect(photoHttpErrorKey(415), 'insp_err_photo_format');
      expect(photoHttpErrorKey(503), 'insp_err_unavailable');
      expect(photoHttpErrorKey(409), 'insp_err_photo_limit');
      expect(photoHttpErrorKey(418), 'insp_err_generic');
    });
  });

  group('parsing the API answers', () {
    test('an inspection with its photos', () {
      final outcome = InspectionOutcome.fromJson({
        'status': 200,
        'errorMessage': null,
        'windowOpen': true,
        'windowReason': 'open',
        'viewerRole': 'host',
        'inspection': {
          'id': 5,
          'reservationId': 10,
          'type': 'checkin',
          'status': 'to_validate',
          'version': 3,
          'mileage': 45230,
          'fuelLevel': 'half',
          'keysConfirmed': true,
          'hostValidatedAt': '2026-10-27T10:00:00.000Z',
          'checklist': [
            {'key': 'registration_card', 'present': true}
          ],
          'photos': [
            {'id': 1, 'kind': 'vehicle', 'position': 1},
            {'id': 2, 'kind': 'damage', 'position': 1},
          ],
          'canValidate': false,
          'canEdit': true,
        },
      });
      expect(outcome.isOk, isTrue);
      final record = outcome.inspection!;
      expect(record.version, 3);
      expect(record.isToValidate, isTrue);
      expect(record.validatedBy(roleHost), isTrue);
      expect(record.validatedBy(roleGuest), isFalse);
      expect(record.mainPhotos.map((p) => p.id), [1]);
      expect(record.checklistValue('registration_card'), isTrue);
      expect(record.checklistValue('unknown'), isNull);
      expect(record.canEdit, isTrue);
    });

    test('no inspection yet', () {
      final outcome = InspectionOutcome.fromJson({
        'status': 200,
        'inspection': null,
        'windowOpen': false,
        'windowReason': 'notYetOpen',
        'opensAt': '2026-11-10T00:00:00.000Z',
      });
      expect(outcome.inspection, isNull);
      expect(outcome.windowReason, 'notYetOpen');
      expect(outcome.isDisabled, isFalse);
    });

    test('the disabled feature is recognised', () {
      final outcome = InspectionOutcome.fromJson({
        'status': 200,
        'windowReason': 'inspectionDisabled',
        'windowOpen': false,
      });
      expect(outcome.isDisabled, isTrue);
    });

    test('a server error keeps its message, a missing answer is a network failure', () {
      final failed = InspectionOutcome.fromJson(
          {'status': 400, 'errorMessage': 'Une nouvelle version existe'});
      expect(failed.isOk, isFalse);
      expect(failed.errorMessage, 'Une nouvelle version existe');
      expect(InspectionOutcome.fromJson(null).networkFailure, isTrue);
    });

    test('a dispute with its statements and decision', () {
      final outcome = DisputeOutcome.fromJson({
        'status': 200,
        'dispute': {
          'id': 4,
          'reservationId': 10,
          'status': 'in_review',
          'isActive': true,
          'depositAmount': 300000,
          'statements': [
            {'id': 1, 'role': 'guest', 'content': 'Non', 'attachments': [8, 9]},
          ],
          'decisions': [
            {'id': 1, 'type': 'retain_part', 'retainedAmount': 75000.0,
             'refundAmount': 225000.0, 'motive': 'ok', 'currency': 'XAF'},
          ],
        },
      });
      final dispute = outcome.dispute!;
      expect(dispute.isActive, isTrue);
      expect(dispute.statements.single.attachments, [8, 9]);
      expect(dispute.decisions.single.refundAmount, 225000.0);
      expect(dispute.hasDecision, isTrue);
      expect(DisputeOutcome.fromJson({'status': 200, 'dispute': null}).dispute, isNull);
    });
  });
}
