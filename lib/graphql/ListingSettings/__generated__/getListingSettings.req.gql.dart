// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:ferry_exec/ferry_exec.dart' as _i1;
import 'package:gozy/graphql/__generated__/serializers.gql.dart' as _i6;
import 'package:gozy/graphql/ListingSettings/__generated__/getListingSettings.ast.gql.dart'
    as _i5;
import 'package:gozy/graphql/ListingSettings/__generated__/getListingSettings.data.gql.dart'
    as _i2;
import 'package:gozy/graphql/ListingSettings/__generated__/getListingSettings.var.gql.dart'
    as _i3;
import 'package:gql_exec/gql_exec.dart' as _i4;

part 'getListingSettings.req.gql.g.dart';

abstract class GgetListingSettingsReq
    implements
        Built<GgetListingSettingsReq, GgetListingSettingsReqBuilder>,
        _i1.OperationRequest<_i2.GgetListingSettingsData,
            _i3.GgetListingSettingsVars> {
  GgetListingSettingsReq._();

  factory GgetListingSettingsReq(
          [void Function(GgetListingSettingsReqBuilder b) updates]) =
      _$GgetListingSettingsReq;

  static void _initializeBuilder(GgetListingSettingsReqBuilder b) => b
    ..operation = _i4.Operation(
      document: _i5.document,
      operationName: 'getListingSettings',
    )
    ..executeOnListen = true;

  @override
  _i3.GgetListingSettingsVars get vars;
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
  _i2.GgetListingSettingsData? Function(
    _i2.GgetListingSettingsData?,
    _i2.GgetListingSettingsData?,
  )? get updateResult;
  @override
  _i2.GgetListingSettingsData? get optimisticResponse;
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
  _i2.GgetListingSettingsData? parseData(Map<String, dynamic> json) =>
      _i2.GgetListingSettingsData.fromJson(json);

  @override
  Map<String, dynamic> varsToJson() => vars.toJson();

  @override
  Map<String, dynamic> dataToJson(_i2.GgetListingSettingsData data) =>
      data.toJson();

  @override
  _i1.OperationRequest<_i2.GgetListingSettingsData, _i3.GgetListingSettingsVars>
      transformOperation(_i4.Operation Function(_i4.Operation) transform) =>
          this.rebuild((b) => b..operation = transform(operation));

  static Serializer<GgetListingSettingsReq> get serializer =>
      _$ggetListingSettingsReqSerializer;

  Map<String, dynamic> toJson() => (_i6.serializers.serializeWith(
        GgetListingSettingsReq.serializer,
        this,
      ) as Map<String, dynamic>);

  static GgetListingSettingsReq? fromJson(Map<String, dynamic> json) =>
      _i6.serializers.deserializeWith(
        GgetListingSettingsReq.serializer,
        json,
      );
}

abstract class GgetStep1ListingDetailsReq
    implements
        Built<GgetStep1ListingDetailsReq, GgetStep1ListingDetailsReqBuilder>,
        _i1.OperationRequest<_i2.GgetStep1ListingDetailsData,
            _i3.GgetStep1ListingDetailsVars> {
  GgetStep1ListingDetailsReq._();

  factory GgetStep1ListingDetailsReq(
          [void Function(GgetStep1ListingDetailsReqBuilder b) updates]) =
      _$GgetStep1ListingDetailsReq;

  static void _initializeBuilder(GgetStep1ListingDetailsReqBuilder b) => b
    ..operation = _i4.Operation(
      document: _i5.document,
      operationName: 'getStep1ListingDetails',
    )
    ..executeOnListen = true;

  @override
  _i3.GgetStep1ListingDetailsVars get vars;
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
  _i2.GgetStep1ListingDetailsData? Function(
    _i2.GgetStep1ListingDetailsData?,
    _i2.GgetStep1ListingDetailsData?,
  )? get updateResult;
  @override
  _i2.GgetStep1ListingDetailsData? get optimisticResponse;
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
  _i2.GgetStep1ListingDetailsData? parseData(Map<String, dynamic> json) =>
      _i2.GgetStep1ListingDetailsData.fromJson(json);

  @override
  Map<String, dynamic> varsToJson() => vars.toJson();

  @override
  Map<String, dynamic> dataToJson(_i2.GgetStep1ListingDetailsData data) =>
      data.toJson();

  @override
  _i1.OperationRequest<_i2.GgetStep1ListingDetailsData,
      _i3.GgetStep1ListingDetailsVars> transformOperation(
          _i4.Operation Function(_i4.Operation) transform) =>
      this.rebuild((b) => b..operation = transform(operation));

  static Serializer<GgetStep1ListingDetailsReq> get serializer =>
      _$ggetStep1ListingDetailsReqSerializer;

  Map<String, dynamic> toJson() => (_i6.serializers.serializeWith(
        GgetStep1ListingDetailsReq.serializer,
        this,
      ) as Map<String, dynamic>);

  static GgetStep1ListingDetailsReq? fromJson(Map<String, dynamic> json) =>
      _i6.serializers.deserializeWith(
        GgetStep1ListingDetailsReq.serializer,
        json,
      );
}
