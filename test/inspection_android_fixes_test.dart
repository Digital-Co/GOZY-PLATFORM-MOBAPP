import 'package:flutter_test/flutter_test.dart';
import 'package:gozy/utils/inspection/inspection_i18n.dart';
import 'package:gozy/utils/inspection/inspection_models.dart';
import 'package:gozy/utils/inspection/inspection_rules.dart';

InspectionStepEntry entry(String status, {bool open = false, bool awaiting = false, bool owner = false}) =>
    inspectionStepEntryFor(
      step: InspectionStepInfo(status: status, open: open, awaitingViewer: awaiting),
      isOwner: owner,
    );

void main() {
  group('step buttons and statuses', () {
    test('open step: normal button, no status when not done', () {
      final e = entry('not_done', open: true);
      expect(e.visible, isTrue);
      expect(e.readOnly, isFalse);
      expect(e.statusKey, isNull);
    });

    test('not done and closed: no button', () {
      expect(entry('not_done').visible, isFalse);
    });

    test('closed with a record: read only "View" button', () {
      for (final status in ['draft', 'to_validate', 'validated']) {
        final e = entry(status);
        expect(e.visible, isTrue, reason: status);
        expect(e.readOnly, isTrue, reason: status);
      }
    });

    test('awaitingViewer keeps the normal button even when not open', () {
      final e = entry('to_validate', awaiting: true);
      expect(e.visible, isTrue);
      expect(e.readOnly, isFalse);
      expect(e.statusKey, 'insp_step_to_validate_you');
    });

    test('statuses', () {
      expect(entry('validated').statusKey, 'insp_step_validated');
      expect(entry('validated').statusTone, BadgeTone.success);
      expect(entry('draft', open: true).statusKey, 'insp_step_draft');
      expect(entry('to_validate', owner: true).statusKey, 'insp_step_waiting_renter');
      expect(entry('to_validate', owner: false).statusKey, 'insp_step_waiting_owner');
    });

    test('no steps (old server): legacy behaviour, no status', () {
      final shown = inspectionStepEntryFor(step: null, isOwner: false);
      expect(shown.visible, isTrue);
      expect(shown.readOnly, isFalse);
      expect(shown.statusKey, isNull);
      expect(inspectionStepEntryFor(step: null, isOwner: false, legacyVisible: false).visible, isFalse);
    });

    test('the former single "to validate" badge is gone', () {
      final e = inspectionEntryFor(reservationState: 'approved', globalStatus: 'to_validate');
      expect(e.badgeKey, isNull);
    });

    test('texts exist in English and French (no raw key)', () {
      for (final key in [
        'insp_view_checkin',
        'insp_view_checkout',
        'insp_step_validated',
        'insp_step_to_validate_you',
        'insp_step_waiting_owner',
        'insp_step_waiting_renter',
        'insp_step_draft',
        'insp_review_already_sent',
      ]) {
        expect(inspFallbackText(key, languageCode: 'en'), isNot(key));
        expect(inspFallbackText(key, languageCode: 'fr'), isNot(key));
      }
      expect(inspFallbackText('insp_step_validated', languageCode: 'fr'), 'Validé');
    });
  });

  group('viewer review', () {
    test('parsed from the result', () {
      final outcome = InspectionOutcome.fromJson({
        'status': 200,
        'viewerReview': {'id': 4, 'rating': 4.5, 'reviewContent': 'Great'},
      });
      expect(outcome.viewerReview?.rating, 4.5);
      expect(outcome.viewerReview?.reviewContent, 'Great');
      expect(InspectionOutcome.fromJson({'status': 200}).viewerReview, isNull);
    });

    test('present: locked, nothing validated or sent', () {
      const review = ViewerReviewInfo(rating: 5, reviewContent: 'ok');
      expect(isReviewLocked(review), isTrue);
      expect(shouldSendReview(review, 3, 'new text'), isFalse);
    });

    test('absent: current behaviour', () {
      expect(isReviewLocked(null), isFalse);
      expect(shouldSendReview(null, 3, ''), isTrue);
      expect(shouldSendReview(null, 0, ''), isFalse);
    });
  });

  group('window banners', () {
    test('only without a record to show', () {
      expect(showsWindowBanner(hasRecord: false), isTrue);
      expect(showsWindowBanner(hasRecord: true), isFalse);
    });
  });
}
