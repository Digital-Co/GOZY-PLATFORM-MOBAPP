// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:ferry_exec/ferry_exec.dart' as _i1;
import 'package:gozy/graphql/__generated__/serializers.gql.dart' as _i6;
import 'package:gozy/graphql/addPhoneNumber/__generated__/add_phone_number.ast.gql.dart'
    as _i5;
import 'package:gozy/graphql/addPhoneNumber/__generated__/add_phone_number.data.gql.dart'
    as _i2;
import 'package:gozy/graphql/addPhoneNumber/__generated__/add_phone_number.var.gql.dart'
    as _i3;
import 'package:gql_exec/gql_exec.dart' as _i4;

part 'add_phone_number.req.gql.g.dart';

abstract class GAddPhoneNumberReq
    implements
        Built<GAddPhoneNumberReq, GAddPhoneNumberReqBuilder>,
        _i1.OperationRequest<_i2.GAddPhoneNumberData, _i3.GAddPhoneNumberVars> {
  GAddPhoneNumberReq._();

  factory GAddPhoneNumberReq(
          [void Function(GAddPhoneNumberReqBuilder b) updates]) =
      _$GAddPhoneNumberReq;

  static void _initializeBuilder(GAddPhoneNumberReqBuilder b) => b
    ..operation = _i4.Operation(
      document: _i5.document,
      operationName: 'AddPhoneNumber',
    )
    ..executeOnListen = true;

  @override
  _i3.GAddPhoneNumberVars get vars;
  @override
  _i4.Operation get operation;
  @override
  _i4.Request get execRequest => _i4.Request(
        operation: operation,
        variables: vars.toJson(),
        context: context ?? const _i4.Context(),
      );

  @override
  String? get requestId;
  @override
  @BuiltValueField(serialize: false)
  _i2.GAddPhoneNumberData? Function(
    _i2.GAddPhoneNumberData?,
    _i2.GAddPhoneNumberData?,
  )? get updateResult;
  @override
  _i2.GAddPhoneNumberData? get optimisticResponse;
  @override
  String? get updateCacheHandlerKey;
  @override
  Map<String, dynamic>? get updateCacheHandlerContext;
  @override
  _i1.FetchPolicy? get fetchPolicy;
  @override
  bool get executeOnListen;
  @override
  @BuiltValueField(serialize: false)
  _i4.Context? get context;
  @override
  _i2.GAddPhoneNumberData? parseData(Map<String, dynamic> json) =>
      _i2.GAddPhoneNumberData.fromJson(json);

  @override
  Map<String, dynamic> varsToJson() => vars.toJson();

  @override
  Map<String, dynamic> dataToJson(_i2.GAddPhoneNumberData data) =>
      data.toJson();

  @override
  _i1.OperationRequest<_i2.GAddPhoneNumberData, _i3.GAddPhoneNumberVars>
      transformOperation(_i4.Operation Function(_i4.Operation) transform) =>
          this.rebuild((b) => b..operation = transform(operation));

  static Serializer<GAddPhoneNumberReq> get serializer =>
      _$gAddPhoneNumberReqSerializer;

  Map<String, dynamic> toJson() => (_i6.serializers.serializeWith(
        GAddPhoneNumberReq.serializer,
        this,
      ) as Map<String, dynamic>);

  static GAddPhoneNumberReq? fromJson(Map<String, dynamic> json) =>
      _i6.serializers.deserializeWith(
        GAddPhoneNumberReq.serializer,
        json,
      );
}
