import 'package:flutter_test/flutter_test.dart';
import 'package:gozy/screens/views/inspection/inspection_entry.dart';
import 'package:gozy/utils/inspection/inspection_models.dart';
import 'package:gozy/utils/inspection/inspection_rules.dart';

class _Item {
  _Item(this.id, this.inspectionEnabled);
  final int id;
  final bool? inspectionEnabled;
}

void main() {
  group('inspection switch', () {
    test('only an explicit false hides the buttons', () {
      expect(isInspectionEnabled(false), isFalse);
      expect(isInspectionEnabled(true), isTrue);
      expect(isInspectionEnabled(null), isTrue);
    });

    test('inspectionEnabledOf reads the reservation, unknown keeps the entry', () {
      expect(inspectionEnabledOf(_Item(1, false)), isFalse);
      expect(inspectionEnabledOf(_Item(1, true)), isTrue);
      expect(inspectionEnabledOf(_Item(1, null)), isTrue);
      expect(inspectionEnabledOf(Object()), isTrue);
      expect(inspectionEnabledOf(null), isTrue);
    });
  });

  group('photo limits from the server', () {
    test('fallbacks are 8 max and 0 min', () {
      expect(effectivePhotoMax(null), 8);
      expect(effectivePhotoMin(null), 0);
      expect(effectivePhotoMax(-1), 8);
      expect(effectivePhotoMin(-3), 0);
    });

    test('server values are used', () {
      expect(effectivePhotoMax(12), 12);
      expect(effectivePhotoMax(3), 3);
      expect(effectivePhotoMin(2), 2);
    });

    test('remaining slots follow the max', () {
      expect(remainingPhotoSlots(stored: 2, queued: 1), 5);
      expect(remainingPhotoSlots(stored: 2, queued: 1, max: 4), 1);
      expect(remainingPhotoSlots(stored: 5, queued: 0, max: 4), 0);
    });

    test('minimum is enforced on check-in and on damage photos', () {
      final form = InspectionFormData(
        generalState: generalStates.first,
        mileageText: '1000',
        fuelLevel: fuelLevels.first,
      );
      expect(validateCheckinForm(form, const [], photoCount: 1, photoMin: 2)['photos'],
          'insp_err_photo_min');
      expect(validateCheckinForm(form, const [], photoCount: 2, photoMin: 2), isEmpty);
      expect(validateCheckinForm(form, const []), isEmpty);

      final out = InspectionFormData(
        hasDamage: true,
        damageDescription: 'scratch',
        mileageText: '1000',
        fuelLevel: fuelLevels.first,
      );
      expect(validateCheckoutForm(out, damagePhotoCount: 0, photoMin: 1)['photos'],
          'insp_err_photo_min');
      expect(validateCheckoutForm(out, damagePhotoCount: 1, photoMin: 1), isEmpty);
    });
  });

  group('parsing settings', () {
    test('values are read, absent ones stay null', () {
      final o = InspectionOutcome.fromJson({
        'status': 200,
        'inspectionEnabled': false,
        'photoMin': 1,
        'photoMax': 5,
      });
      expect(o.inspectionEnabled, isFalse);
      expect(o.photoMin, 1);
      expect(o.photoMax, 5);
      final bare = InspectionOutcome.fromJson({'status': 200});
      expect(bare.inspectionEnabled, isNull);
      expect(bare.photoMax, isNull);
    });
  });
}
