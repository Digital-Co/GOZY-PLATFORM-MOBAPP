// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:ferry_exec/ferry_exec.dart' as _i1;
import 'package:gozy/graphql/__generated__/serializers.gql.dart' as _i6;
import 'package:gozy/graphql/listingOptions/__generated__/reservation_option_snapshot_fragment.ast.gql.dart'
    as _i4;
import 'package:gozy/graphql/listingOptions/__generated__/reservation_option_snapshot_fragment.data.gql.dart'
    as _i2;
import 'package:gozy/graphql/listingOptions/__generated__/reservation_option_snapshot_fragment.var.gql.dart'
    as _i3;
import 'package:gql/ast.dart' as _i5;

part 'reservation_option_snapshot_fragment.req.gql.g.dart';

abstract class GreservationOptionSnapshotFragmentReq
    implements
        Built<GreservationOptionSnapshotFragmentReq,
            GreservationOptionSnapshotFragmentReqBuilder>,
        _i1.FragmentRequest<_i2.GreservationOptionSnapshotFragmentData,
            _i3.GreservationOptionSnapshotFragmentVars> {
  GreservationOptionSnapshotFragmentReq._();

  factory GreservationOptionSnapshotFragmentReq(
      [void Function(GreservationOptionSnapshotFragmentReqBuilder b)
          updates]) = _$GreservationOptionSnapshotFragmentReq;

  static void _initializeBuilder(
          GreservationOptionSnapshotFragmentReqBuilder b) =>
      b
        ..document = _i4.document
        ..fragmentName = 'reservationOptionSnapshotFragment';

  @override
  _i3.GreservationOptionSnapshotFragmentVars get vars;
  @override
  _i5.DocumentNode get document;
  @override
  String? get fragmentName;
  @override
  Map<String, dynamic> get idFields;
  @override
  _i2.GreservationOptionSnapshotFragmentData? parseData(
          Map<String, dynamic> json) =>
      _i2.GreservationOptionSnapshotFragmentData.fromJson(json);

  @override
  Map<String, dynamic> varsToJson() => vars.toJson();

  @override
  Map<String, dynamic> dataToJson(
          _i2.GreservationOptionSnapshotFragmentData data) =>
      data.toJson();

  static Serializer<GreservationOptionSnapshotFragmentReq> get serializer =>
      _$greservationOptionSnapshotFragmentReqSerializer;

  Map<String, dynamic> toJson() => (_i6.serializers.serializeWith(
        GreservationOptionSnapshotFragmentReq.serializer,
        this,
      ) as Map<String, dynamic>);

  static GreservationOptionSnapshotFragmentReq? fromJson(
          Map<String, dynamic> json) =>
      _i6.serializers.deserializeWith(
        GreservationOptionSnapshotFragmentReq.serializer,
        json,
      );
}
