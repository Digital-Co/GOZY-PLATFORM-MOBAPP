// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:ferry_exec/ferry_exec.dart' as _i1;
import 'package:gozy/graphql/__generated__/serializers.gql.dart' as _i6;
import 'package:gozy/graphql/listingOptions/__generated__/get_listing_options.ast.gql.dart'
    as _i5;
import 'package:gozy/graphql/listingOptions/__generated__/get_listing_options.data.gql.dart'
    as _i2;
import 'package:gozy/graphql/listingOptions/__generated__/get_listing_options.var.gql.dart'
    as _i3;
import 'package:gql_exec/gql_exec.dart' as _i4;

part 'get_listing_options.req.gql.g.dart';

abstract class GgetListingOptionsReq
    implements
        Built<GgetListingOptionsReq, GgetListingOptionsReqBuilder>,
        _i1.OperationRequest<_i2.GgetListingOptionsData,
            _i3.GgetListingOptionsVars> {
  GgetListingOptionsReq._();

  factory GgetListingOptionsReq(
          [void Function(GgetListingOptionsReqBuilder b) updates]) =
      _$GgetListingOptionsReq;

  static void _initializeBuilder(GgetListingOptionsReqBuilder b) => b
    ..operation = _i4.Operation(
      document: _i5.document,
      operationName: 'getListingOptions',
    )
    ..executeOnListen = true;

  @override
  _i3.GgetListingOptionsVars get vars;
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
  _i2.GgetListingOptionsData? Function(
    _i2.GgetListingOptionsData?,
    _i2.GgetListingOptionsData?,
  )? get updateResult;
  @override
  _i2.GgetListingOptionsData? get optimisticResponse;
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
  _i2.GgetListingOptionsData? parseData(Map<String, dynamic> json) =>
      _i2.GgetListingOptionsData.fromJson(json);

  @override
  Map<String, dynamic> varsToJson() => vars.toJson();

  @override
  Map<String, dynamic> dataToJson(_i2.GgetListingOptionsData data) =>
      data.toJson();

  @override
  _i1.OperationRequest<_i2.GgetListingOptionsData, _i3.GgetListingOptionsVars>
      transformOperation(_i4.Operation Function(_i4.Operation) transform) =>
          this.rebuild((b) => b..operation = transform(operation));

  static Serializer<GgetListingOptionsReq> get serializer =>
      _$ggetListingOptionsReqSerializer;

  Map<String, dynamic> toJson() => (_i6.serializers.serializeWith(
        GgetListingOptionsReq.serializer,
        this,
      ) as Map<String, dynamic>);

  static GgetListingOptionsReq? fromJson(Map<String, dynamic> json) =>
      _i6.serializers.deserializeWith(
        GgetListingOptionsReq.serializer,
        json,
      );
}
