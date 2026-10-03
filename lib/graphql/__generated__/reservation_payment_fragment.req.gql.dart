// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:ferry_exec/ferry_exec.dart' as _i1;
import 'package:gozy/graphql/__generated__/reservation_payment_fragment.ast.gql.dart'
    as _i4;
import 'package:gozy/graphql/__generated__/reservation_payment_fragment.data.gql.dart'
    as _i2;
import 'package:gozy/graphql/__generated__/reservation_payment_fragment.var.gql.dart'
    as _i3;
import 'package:gozy/graphql/__generated__/serializers.gql.dart' as _i6;
import 'package:gql/ast.dart' as _i5;

part 'reservation_payment_fragment.req.gql.g.dart';

abstract class GreservationPaymentFragmentReq
    implements
        Built<GreservationPaymentFragmentReq,
            GreservationPaymentFragmentReqBuilder>,
        _i1.FragmentRequest<_i2.GreservationPaymentFragmentData,
            _i3.GreservationPaymentFragmentVars> {
  GreservationPaymentFragmentReq._();

  factory GreservationPaymentFragmentReq(
          [void Function(GreservationPaymentFragmentReqBuilder b) updates]) =
      _$GreservationPaymentFragmentReq;

  static void _initializeBuilder(GreservationPaymentFragmentReqBuilder b) => b
    ..document = _i4.document
    ..fragmentName = 'reservationPaymentFragment';

  @override
  _i3.GreservationPaymentFragmentVars get vars;
  @override
  _i5.DocumentNode get document;
  @override
  String? get fragmentName;
  @override
  Map<String, dynamic> get idFields;
  @override
  _i2.GreservationPaymentFragmentData? parseData(Map<String, dynamic> json) =>
      _i2.GreservationPaymentFragmentData.fromJson(json);

  @override
  Map<String, dynamic> varsToJson() => vars.toJson();

  @override
  Map<String, dynamic> dataToJson(_i2.GreservationPaymentFragmentData data) =>
      data.toJson();

  static Serializer<GreservationPaymentFragmentReq> get serializer =>
      _$greservationPaymentFragmentReqSerializer;

  Map<String, dynamic> toJson() => (_i6.serializers.serializeWith(
        GreservationPaymentFragmentReq.serializer,
        this,
      ) as Map<String, dynamic>);

  static GreservationPaymentFragmentReq? fromJson(Map<String, dynamic> json) =>
      _i6.serializers.deserializeWith(
        GreservationPaymentFragmentReq.serializer,
        json,
      );
}
