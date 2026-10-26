// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:gozy/graphql/__generated__/serializers.gql.dart' as _i1;

part 'reservation_option_snapshot_fragment.data.gql.g.dart';

abstract class GreservationOptionSnapshotFragment {
  String get G__typename;
  int? get id;
  String? get code;
  bool? get isFixed;
  String? get label;
  String? get labelKey;
  String? get description;
  String? get billingMode;
  double? get unitPrice;
  int? get quantity;
  double? get amount;
  String? get currency;
  String? get userInput;
  Map<String, dynamic> toJson();
}

abstract class GreservationOptionSnapshotFragmentData
    implements
        Built<GreservationOptionSnapshotFragmentData,
            GreservationOptionSnapshotFragmentDataBuilder>,
        GreservationOptionSnapshotFragment {
  GreservationOptionSnapshotFragmentData._();

  factory GreservationOptionSnapshotFragmentData(
      [void Function(GreservationOptionSnapshotFragmentDataBuilder b)
          updates]) = _$GreservationOptionSnapshotFragmentData;

  static void _initializeBuilder(
          GreservationOptionSnapshotFragmentDataBuilder b) =>
      b..G__typename = 'ReservationOptionSnapshot';

  @override
  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  @override
  int? get id;
  @override
  String? get code;
  @override
  bool? get isFixed;
  @override
  String? get label;
  @override
  String? get labelKey;
  @override
  String? get description;
  @override
  String? get billingMode;
  @override
  double? get unitPrice;
  @override
  int? get quantity;
  @override
  double? get amount;
  @override
  String? get currency;
  @override
  String? get userInput;
  static Serializer<GreservationOptionSnapshotFragmentData> get serializer =>
      _$greservationOptionSnapshotFragmentDataSerializer;

  @override
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GreservationOptionSnapshotFragmentData.serializer,
        this,
      ) as Map<String, dynamic>);

  static GreservationOptionSnapshotFragmentData? fromJson(
          Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GreservationOptionSnapshotFragmentData.serializer,
        json,
      );
}
