// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:gozy/graphql/__generated__/serializers.gql.dart' as _i1;

part 'reservation_inspection_fragment.data.gql.g.dart';

abstract class GreservationInspectionFragment {
  String get G__typename;
  int? get id;
  String? get inspectionStatus;
  String? get closureState;
  bool? get inspectionEnabled;
  GreservationInspectionFragment_inspectionSteps? get inspectionSteps;
  Map<String, dynamic> toJson();
}

abstract class GreservationInspectionFragment_inspectionSteps {
  String get G__typename;
  GreservationInspectionFragment_inspectionSteps_checkin? get checkin;
  GreservationInspectionFragment_inspectionSteps_checkout? get checkout;
  Map<String, dynamic> toJson();
}

abstract class GreservationInspectionFragment_inspectionSteps_checkin {
  String get G__typename;
  String? get status;
  bool? get open;
  bool? get awaitingViewer;
  Map<String, dynamic> toJson();
}

abstract class GreservationInspectionFragment_inspectionSteps_checkout {
  String get G__typename;
  String? get status;
  bool? get open;
  bool? get awaitingViewer;
  Map<String, dynamic> toJson();
}

abstract class GreservationInspectionFragmentData
    implements
        Built<GreservationInspectionFragmentData,
            GreservationInspectionFragmentDataBuilder>,
        GreservationInspectionFragment {
  GreservationInspectionFragmentData._();

  factory GreservationInspectionFragmentData(
      [void Function(GreservationInspectionFragmentDataBuilder b)
          updates]) = _$GreservationInspectionFragmentData;

  static void _initializeBuilder(GreservationInspectionFragmentDataBuilder b) =>
      b..G__typename = 'Reservation';

  @override
  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  @override
  int? get id;
  @override
  String? get inspectionStatus;
  @override
  String? get closureState;
  @override
  bool? get inspectionEnabled;
  @override
  GreservationInspectionFragmentData_inspectionSteps? get inspectionSteps;
  static Serializer<GreservationInspectionFragmentData> get serializer =>
      _$greservationInspectionFragmentDataSerializer;

  @override
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GreservationInspectionFragmentData.serializer,
        this,
      ) as Map<String, dynamic>);

  static GreservationInspectionFragmentData? fromJson(
          Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GreservationInspectionFragmentData.serializer,
        json,
      );
}

abstract class GreservationInspectionFragmentData_inspectionSteps
    implements
        Built<GreservationInspectionFragmentData_inspectionSteps,
            GreservationInspectionFragmentData_inspectionStepsBuilder>,
        GreservationInspectionFragment_inspectionSteps {
  GreservationInspectionFragmentData_inspectionSteps._();

  factory GreservationInspectionFragmentData_inspectionSteps(
      [void Function(
              GreservationInspectionFragmentData_inspectionStepsBuilder b)
          updates]) = _$GreservationInspectionFragmentData_inspectionSteps;

  static void _initializeBuilder(
          GreservationInspectionFragmentData_inspectionStepsBuilder b) =>
      b..G__typename = 'InspectionSteps';

  @override
  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  @override
  GreservationInspectionFragmentData_inspectionSteps_checkin? get checkin;
  @override
  GreservationInspectionFragmentData_inspectionSteps_checkout? get checkout;
  static Serializer<GreservationInspectionFragmentData_inspectionSteps>
      get serializer =>
          _$greservationInspectionFragmentDataInspectionStepsSerializer;

  @override
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GreservationInspectionFragmentData_inspectionSteps.serializer,
        this,
      ) as Map<String, dynamic>);

  static GreservationInspectionFragmentData_inspectionSteps? fromJson(
          Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GreservationInspectionFragmentData_inspectionSteps.serializer,
        json,
      );
}

abstract class GreservationInspectionFragmentData_inspectionSteps_checkin
    implements
        Built<GreservationInspectionFragmentData_inspectionSteps_checkin,
            GreservationInspectionFragmentData_inspectionSteps_checkinBuilder>,
        GreservationInspectionFragment_inspectionSteps_checkin {
  GreservationInspectionFragmentData_inspectionSteps_checkin._();

  factory GreservationInspectionFragmentData_inspectionSteps_checkin(
      [void Function(
              GreservationInspectionFragmentData_inspectionSteps_checkinBuilder
                  b)
          updates]) = _$GreservationInspectionFragmentData_inspectionSteps_checkin;

  static void _initializeBuilder(
          GreservationInspectionFragmentData_inspectionSteps_checkinBuilder
              b) =>
      b..G__typename = 'InspectionStep';

  @override
  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  @override
  String? get status;
  @override
  bool? get open;
  @override
  bool? get awaitingViewer;
  static Serializer<GreservationInspectionFragmentData_inspectionSteps_checkin>
      get serializer =>
          _$greservationInspectionFragmentDataInspectionStepsCheckinSerializer;

  @override
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GreservationInspectionFragmentData_inspectionSteps_checkin.serializer,
        this,
      ) as Map<String, dynamic>);

  static GreservationInspectionFragmentData_inspectionSteps_checkin? fromJson(
          Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GreservationInspectionFragmentData_inspectionSteps_checkin.serializer,
        json,
      );
}

abstract class GreservationInspectionFragmentData_inspectionSteps_checkout
    implements
        Built<GreservationInspectionFragmentData_inspectionSteps_checkout,
            GreservationInspectionFragmentData_inspectionSteps_checkoutBuilder>,
        GreservationInspectionFragment_inspectionSteps_checkout {
  GreservationInspectionFragmentData_inspectionSteps_checkout._();

  factory GreservationInspectionFragmentData_inspectionSteps_checkout(
      [void Function(
              GreservationInspectionFragmentData_inspectionSteps_checkoutBuilder
                  b)
          updates]) = _$GreservationInspectionFragmentData_inspectionSteps_checkout;

  static void _initializeBuilder(
          GreservationInspectionFragmentData_inspectionSteps_checkoutBuilder
              b) =>
      b..G__typename = 'InspectionStep';

  @override
  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  @override
  String? get status;
  @override
  bool? get open;
  @override
  bool? get awaitingViewer;
  static Serializer<GreservationInspectionFragmentData_inspectionSteps_checkout>
      get serializer =>
          _$greservationInspectionFragmentDataInspectionStepsCheckoutSerializer;

  @override
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GreservationInspectionFragmentData_inspectionSteps_checkout.serializer,
        this,
      ) as Map<String, dynamic>);

  static GreservationInspectionFragmentData_inspectionSteps_checkout? fromJson(
          Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GreservationInspectionFragmentData_inspectionSteps_checkout.serializer,
        json,
      );
}
