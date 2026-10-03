// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:ferry_exec/ferry_exec.dart' as _i1;
import 'package:gozy/graphql/__generated__/serializers.gql.dart' as _i6;
import 'package:gozy/graphql/secureSiteSettings/__generated__/secure_site_settings.ast.gql.dart'
    as _i5;
import 'package:gozy/graphql/secureSiteSettings/__generated__/secure_site_settings.data.gql.dart'
    as _i2;
import 'package:gozy/graphql/secureSiteSettings/__generated__/secure_site_settings.var.gql.dart'
    as _i3;
import 'package:gql_exec/gql_exec.dart' as _i4;

part 'secure_site_settings.req.gql.g.dart';

abstract class GgetSecureSiteSettingsReq
    implements
        Built<GgetSecureSiteSettingsReq, GgetSecureSiteSettingsReqBuilder>,
        _i1.OperationRequest<_i2.GgetSecureSiteSettingsData,
            _i3.GgetSecureSiteSettingsVars> {
  GgetSecureSiteSettingsReq._();

  factory GgetSecureSiteSettingsReq(
          [void Function(GgetSecureSiteSettingsReqBuilder b) updates]) =
      _$GgetSecureSiteSettingsReq;

  static void _initializeBuilder(GgetSecureSiteSettingsReqBuilder b) => b
    ..operation = _i4.Operation(
      document: _i5.document,
      operationName: 'getSecureSiteSettings',
    )
    ..executeOnListen = true;

  @override
  _i3.GgetSecureSiteSettingsVars get vars;
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
  _i2.GgetSecureSiteSettingsData? Function(
    _i2.GgetSecureSiteSettingsData?,
    _i2.GgetSecureSiteSettingsData?,
  )? get updateResult;
  @override
  _i2.GgetSecureSiteSettingsData? get optimisticResponse;
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
  _i2.GgetSecureSiteSettingsData? parseData(Map<String, dynamic> json) =>
      _i2.GgetSecureSiteSettingsData.fromJson(json);

  @override
  Map<String, dynamic> varsToJson() => vars.toJson();

  @override
  Map<String, dynamic> dataToJson(_i2.GgetSecureSiteSettingsData data) =>
      data.toJson();

  @override
  _i1.OperationRequest<_i2.GgetSecureSiteSettingsData,
      _i3.GgetSecureSiteSettingsVars> transformOperation(
          _i4.Operation Function(_i4.Operation) transform) =>
      this.rebuild((b) => b..operation = transform(operation));

  static Serializer<GgetSecureSiteSettingsReq> get serializer =>
      _$ggetSecureSiteSettingsReqSerializer;

  Map<String, dynamic> toJson() => (_i6.serializers.serializeWith(
        GgetSecureSiteSettingsReq.serializer,
        this,
      ) as Map<String, dynamic>);

  static GgetSecureSiteSettingsReq? fromJson(Map<String, dynamic> json) =>
      _i6.serializers.deserializeWith(
        GgetSecureSiteSettingsReq.serializer,
        json,
      );
}

abstract class GgetImageBannerReq
    implements
        Built<GgetImageBannerReq, GgetImageBannerReqBuilder>,
        _i1.OperationRequest<_i2.GgetImageBannerData, _i3.GgetImageBannerVars> {
  GgetImageBannerReq._();

  factory GgetImageBannerReq(
          [void Function(GgetImageBannerReqBuilder b) updates]) =
      _$GgetImageBannerReq;

  static void _initializeBuilder(GgetImageBannerReqBuilder b) => b
    ..operation = _i4.Operation(
      document: _i5.document,
      operationName: 'getImageBanner',
    )
    ..executeOnListen = true;

  @override
  _i3.GgetImageBannerVars get vars;
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
  _i2.GgetImageBannerData? Function(
    _i2.GgetImageBannerData?,
    _i2.GgetImageBannerData?,
  )? get updateResult;
  @override
  _i2.GgetImageBannerData? get optimisticResponse;
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
  _i2.GgetImageBannerData? parseData(Map<String, dynamic> json) =>
      _i2.GgetImageBannerData.fromJson(json);

  @override
  Map<String, dynamic> varsToJson() => vars.toJson();

  @override
  Map<String, dynamic> dataToJson(_i2.GgetImageBannerData data) =>
      data.toJson();

  @override
  _i1.OperationRequest<_i2.GgetImageBannerData, _i3.GgetImageBannerVars>
      transformOperation(_i4.Operation Function(_i4.Operation) transform) =>
          this.rebuild((b) => b..operation = transform(operation));

  static Serializer<GgetImageBannerReq> get serializer =>
      _$ggetImageBannerReqSerializer;

  Map<String, dynamic> toJson() => (_i6.serializers.serializeWith(
        GgetImageBannerReq.serializer,
        this,
      ) as Map<String, dynamic>);

  static GgetImageBannerReq? fromJson(Map<String, dynamic> json) =>
      _i6.serializers.deserializeWith(
        GgetImageBannerReq.serializer,
        json,
      );
}
