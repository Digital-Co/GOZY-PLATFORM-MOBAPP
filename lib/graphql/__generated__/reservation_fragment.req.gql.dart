// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:ferry_exec/ferry_exec.dart' as _i1;
import 'package:gozy/graphql/__generated__/reservation_fragment.ast.gql.dart'
    as _i4;
import 'package:gozy/graphql/__generated__/reservation_fragment.data.gql.dart'
    as _i2;
import 'package:gozy/graphql/__generated__/reservation_fragment.var.gql.dart'
    as _i3;
import 'package:gozy/graphql/__generated__/serializers.gql.dart' as _i6;
import 'package:gql/ast.dart' as _i5;

part 'reservation_fragment.req.gql.g.dart';

abstract class GreservationFragmentReq
    implements
        Built<GreservationFragmentReq, GreservationFragmentReqBuilder>,
        _i1.FragmentRequest<_i2.GreservationFragmentData,
            _i3.GreservationFragmentVars> {
  GreservationFragmentReq._();

  factory GreservationFragmentReq(
          [void Function(GreservationFragmentReqBuilder b) updates]) =
      _$GreservationFragmentReq;

  static void _initializeBuilder(GreservationFragmentReqBuilder b) => b
    ..document = _i4.document
    ..fragmentName = 'reservationFragment';

  @override
  _i3.GreservationFragmentVars get vars;
  @override
  _i5.DocumentNode get document;
  @override
  String? get fragmentName;
  @override
  Map<String, dynamic> get idFields;
  @override
  _i2.GreservationFragmentData? parseData(Map<String, dynamic> json) =>
      _i2.GreservationFragmentData.fromJson(json);

  @override
  Map<String, dynamic> varsToJson() => vars.toJson();

  @override
  Map<String, dynamic> dataToJson(_i2.GreservationFragmentData data) =>
      data.toJson();

  static Serializer<GreservationFragmentReq> get serializer =>
      _$greservationFragmentReqSerializer;

  Map<String, dynamic> toJson() => (_i6.serializers.serializeWith(
        GreservationFragmentReq.serializer,
        this,
      ) as Map<String, dynamic>);

  static GreservationFragmentReq? fromJson(Map<String, dynamic> json) =>
      _i6.serializers.deserializeWith(
        GreservationFragmentReq.serializer,
        json,
      );
}
