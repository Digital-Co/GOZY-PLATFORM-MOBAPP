// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:ferry_exec/ferry_exec.dart' as _i1;
import 'package:gozy/graphql/__generated__/serializers.gql.dart' as _i6;
import 'package:gozy/graphql/inspection/__generated__/reservation_inspection_fragment.ast.gql.dart'
    as _i4;
import 'package:gozy/graphql/inspection/__generated__/reservation_inspection_fragment.data.gql.dart'
    as _i2;
import 'package:gozy/graphql/inspection/__generated__/reservation_inspection_fragment.var.gql.dart'
    as _i3;
import 'package:gql/ast.dart' as _i5;

part 'reservation_inspection_fragment.req.gql.g.dart';

abstract class GreservationInspectionFragmentReq
    implements
        Built<GreservationInspectionFragmentReq,
            GreservationInspectionFragmentReqBuilder>,
        _i1.FragmentRequest<_i2.GreservationInspectionFragmentData,
            _i3.GreservationInspectionFragmentVars> {
  GreservationInspectionFragmentReq._();

  factory GreservationInspectionFragmentReq(
          [void Function(GreservationInspectionFragmentReqBuilder b) updates]) =
      _$GreservationInspectionFragmentReq;

  static void _initializeBuilder(GreservationInspectionFragmentReqBuilder b) =>
      b
        ..document = _i4.document
        ..fragmentName = 'reservationInspectionFragment';

  @override
  _i3.GreservationInspectionFragmentVars get vars;
  @override
  _i5.DocumentNode get document;
  @override
  String? get fragmentName;
  @override
  Map<String, dynamic> get idFields;
  @override
  _i2.GreservationInspectionFragmentData? parseData(
          Map<String, dynamic> json) =>
      _i2.GreservationInspectionFragmentData.fromJson(json);

  @override
  Map<String, dynamic> varsToJson() => vars.toJson();

  @override
  Map<String, dynamic> dataToJson(
          _i2.GreservationInspectionFragmentData data) =>
      data.toJson();

  static Serializer<GreservationInspectionFragmentReq> get serializer =>
      _$greservationInspectionFragmentReqSerializer;

  Map<String, dynamic> toJson() => (_i6.serializers.serializeWith(
        GreservationInspectionFragmentReq.serializer,
        this,
      ) as Map<String, dynamic>);

  static GreservationInspectionFragmentReq? fromJson(
          Map<String, dynamic> json) =>
      _i6.serializers.deserializeWith(
        GreservationInspectionFragmentReq.serializer,
        json,
      );
}
