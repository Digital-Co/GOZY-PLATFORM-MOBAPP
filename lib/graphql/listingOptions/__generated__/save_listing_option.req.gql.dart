// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:ferry_exec/ferry_exec.dart' as _i1;
import 'package:gozy/graphql/__generated__/serializers.gql.dart' as _i6;
import 'package:gozy/graphql/listingOptions/__generated__/save_listing_option.ast.gql.dart'
    as _i5;
import 'package:gozy/graphql/listingOptions/__generated__/save_listing_option.data.gql.dart'
    as _i2;
import 'package:gozy/graphql/listingOptions/__generated__/save_listing_option.var.gql.dart'
    as _i3;
import 'package:gql_exec/gql_exec.dart' as _i4;

part 'save_listing_option.req.gql.g.dart';

abstract class GsaveListingOptionReq
    implements
        Built<GsaveListingOptionReq, GsaveListingOptionReqBuilder>,
        _i1.OperationRequest<_i2.GsaveListingOptionData,
            _i3.GsaveListingOptionVars> {
  GsaveListingOptionReq._();

  factory GsaveListingOptionReq(
          [void Function(GsaveListingOptionReqBuilder b) updates]) =
      _$GsaveListingOptionReq;

  static void _initializeBuilder(GsaveListingOptionReqBuilder b) => b
    ..operation = _i4.Operation(
      document: _i5.document,
      operationName: 'saveListingOption',
    )
    ..executeOnListen = true;

  @override
  _i3.GsaveListingOptionVars get vars;
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
  _i2.GsaveListingOptionData? Function(
    _i2.GsaveListingOptionData?,
    _i2.GsaveListingOptionData?,
  )? get updateResult;
  @override
  _i2.GsaveListingOptionData? get optimisticResponse;
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
  _i2.GsaveListingOptionData? parseData(Map<String, dynamic> json) =>
      _i2.GsaveListingOptionData.fromJson(json);

  @override
  Map<String, dynamic> varsToJson() => vars.toJson();

  @override
  Map<String, dynamic> dataToJson(_i2.GsaveListingOptionData data) =>
      data.toJson();

  @override
  _i1.OperationRequest<_i2.GsaveListingOptionData, _i3.GsaveListingOptionVars>
      transformOperation(_i4.Operation Function(_i4.Operation) transform) =>
          this.rebuild((b) => b..operation = transform(operation));

  static Serializer<GsaveListingOptionReq> get serializer =>
      _$gsaveListingOptionReqSerializer;

  Map<String, dynamic> toJson() => (_i6.serializers.serializeWith(
        GsaveListingOptionReq.serializer,
        this,
      ) as Map<String, dynamic>);

  static GsaveListingOptionReq? fromJson(Map<String, dynamic> json) =>
      _i6.serializers.deserializeWith(
        GsaveListingOptionReq.serializer,
        json,
      );
}
