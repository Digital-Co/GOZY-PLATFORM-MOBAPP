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
