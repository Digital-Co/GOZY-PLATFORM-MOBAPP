// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:ferry_exec/ferry_exec.dart' as _i1;
import 'package:gozy/graphql/__generated__/serializers.gql.dart' as _i6;
import 'package:gozy/graphql/UserProfile/__generated__/user_profile.ast.gql.dart'
    as _i5;
import 'package:gozy/graphql/UserProfile/__generated__/user_profile.data.gql.dart'
    as _i2;
import 'package:gozy/graphql/UserProfile/__generated__/user_profile.var.gql.dart'
    as _i3;
import 'package:gql_exec/gql_exec.dart' as _i4;

part 'user_profile.req.gql.g.dart';

abstract class GuserUpdateReq
    implements
        Built<GuserUpdateReq, GuserUpdateReqBuilder>,
        _i1.OperationRequest<_i2.GuserUpdateData, _i3.GuserUpdateVars> {
  GuserUpdateReq._();

  factory GuserUpdateReq([void Function(GuserUpdateReqBuilder b) updates]) =
      _$GuserUpdateReq;

  static void _initializeBuilder(GuserUpdateReqBuilder b) => b
    ..operation = _i4.Operation(
      document: _i5.document,
      operationName: 'userUpdate',
    )
    ..executeOnListen = true;

  @override
  _i3.GuserUpdateVars get vars;
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
  _i2.GuserUpdateData? Function(
    _i2.GuserUpdateData?,
    _i2.GuserUpdateData?,
  )? get updateResult;
  @override
  _i2.GuserUpdateData? get optimisticResponse;
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
  _i2.GuserUpdateData? parseData(Map<String, dynamic> json) =>
      _i2.GuserUpdateData.fromJson(json);

  @override
  Map<String, dynamic> varsToJson() => vars.toJson();

  @override
  Map<String, dynamic> dataToJson(_i2.GuserUpdateData data) => data.toJson();

  @override
  _i1.OperationRequest<_i2.GuserUpdateData, _i3.GuserUpdateVars>
      transformOperation(_i4.Operation Function(_i4.Operation) transform) =>
          this.rebuild((b) => b..operation = transform(operation));

  static Serializer<GuserUpdateReq> get serializer =>
      _$guserUpdateReqSerializer;

  Map<String, dynamic> toJson() => (_i6.serializers.serializeWith(
        GuserUpdateReq.serializer,
        this,
      ) as Map<String, dynamic>);

  static GuserUpdateReq? fromJson(Map<String, dynamic> json) =>
      _i6.serializers.deserializeWith(
        GuserUpdateReq.serializer,
        json,
      );
}

abstract class GSendConfirmEmailReq
    implements
        Built<GSendConfirmEmailReq, GSendConfirmEmailReqBuilder>,
        _i1.OperationRequest<_i2.GSendConfirmEmailData,
            _i3.GSendConfirmEmailVars> {
  GSendConfirmEmailReq._();

  factory GSendConfirmEmailReq(
          [void Function(GSendConfirmEmailReqBuilder b) updates]) =
      _$GSendConfirmEmailReq;

  static void _initializeBuilder(GSendConfirmEmailReqBuilder b) => b
    ..operation = _i4.Operation(
      document: _i5.document,
      operationName: 'SendConfirmEmail',
    )
    ..executeOnListen = true;

  @override
  _i3.GSendConfirmEmailVars get vars;
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
  _i2.GSendConfirmEmailData? Function(
    _i2.GSendConfirmEmailData?,
    _i2.GSendConfirmEmailData?,
  )? get updateResult;
  @override
  _i2.GSendConfirmEmailData? get optimisticResponse;
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
  _i2.GSendConfirmEmailData? parseData(Map<String, dynamic> json) =>
      _i2.GSendConfirmEmailData.fromJson(json);

  @override
  Map<String, dynamic> varsToJson() => vars.toJson();

  @override
  Map<String, dynamic> dataToJson(_i2.GSendConfirmEmailData data) =>
      data.toJson();

  @override
  _i1.OperationRequest<_i2.GSendConfirmEmailData, _i3.GSendConfirmEmailVars>
      transformOperation(_i4.Operation Function(_i4.Operation) transform) =>
          this.rebuild((b) => b..operation = transform(operation));

  static Serializer<GSendConfirmEmailReq> get serializer =>
      _$gSendConfirmEmailReqSerializer;

  Map<String, dynamic> toJson() => (_i6.serializers.serializeWith(
        GSendConfirmEmailReq.serializer,
        this,
      ) as Map<String, dynamic>);

  static GSendConfirmEmailReq? fromJson(Map<String, dynamic> json) =>
      _i6.serializers.deserializeWith(
        GSendConfirmEmailReq.serializer,
        json,
      );
}

abstract class GCodeVerificationReq
    implements
        Built<GCodeVerificationReq, GCodeVerificationReqBuilder>,
        _i1.OperationRequest<_i2.GCodeVerificationData,
            _i3.GCodeVerificationVars> {
  GCodeVerificationReq._();

  factory GCodeVerificationReq(
          [void Function(GCodeVerificationReqBuilder b) updates]) =
      _$GCodeVerificationReq;

  static void _initializeBuilder(GCodeVerificationReqBuilder b) => b
    ..operation = _i4.Operation(
      document: _i5.document,
      operationName: 'CodeVerification',
    )
    ..executeOnListen = true;

  @override
  _i3.GCodeVerificationVars get vars;
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
  _i2.GCodeVerificationData? Function(
    _i2.GCodeVerificationData?,
    _i2.GCodeVerificationData?,
  )? get updateResult;
  @override
  _i2.GCodeVerificationData? get optimisticResponse;
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
  _i2.GCodeVerificationData? parseData(Map<String, dynamic> json) =>
      _i2.GCodeVerificationData.fromJson(json);

  @override
  Map<String, dynamic> varsToJson() => vars.toJson();

  @override
  Map<String, dynamic> dataToJson(_i2.GCodeVerificationData data) =>
      data.toJson();

  @override
  _i1.OperationRequest<_i2.GCodeVerificationData, _i3.GCodeVerificationVars>
      transformOperation(_i4.Operation Function(_i4.Operation) transform) =>
          this.rebuild((b) => b..operation = transform(operation));

  static Serializer<GCodeVerificationReq> get serializer =>
      _$gCodeVerificationReqSerializer;

  Map<String, dynamic> toJson() => (_i6.serializers.serializeWith(
        GCodeVerificationReq.serializer,
        this,
      ) as Map<String, dynamic>);

  static GCodeVerificationReq? fromJson(Map<String, dynamic> json) =>
      _i6.serializers.deserializeWith(
        GCodeVerificationReq.serializer,
        json,
      );
}

abstract class GSocialLoginVerifyReq
    implements
        Built<GSocialLoginVerifyReq, GSocialLoginVerifyReqBuilder>,
        _i1.OperationRequest<_i2.GSocialLoginVerifyData,
            _i3.GSocialLoginVerifyVars> {
  GSocialLoginVerifyReq._();

  factory GSocialLoginVerifyReq(
          [void Function(GSocialLoginVerifyReqBuilder b) updates]) =
      _$GSocialLoginVerifyReq;

  static void _initializeBuilder(GSocialLoginVerifyReqBuilder b) => b
    ..operation = _i4.Operation(
      document: _i5.document,
      operationName: 'SocialLoginVerify',
    )
    ..executeOnListen = true;

  @override
  _i3.GSocialLoginVerifyVars get vars;
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
  _i2.GSocialLoginVerifyData? Function(
    _i2.GSocialLoginVerifyData?,
    _i2.GSocialLoginVerifyData?,
  )? get updateResult;
  @override
  _i2.GSocialLoginVerifyData? get optimisticResponse;
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
  _i2.GSocialLoginVerifyData? parseData(Map<String, dynamic> json) =>
      _i2.GSocialLoginVerifyData.fromJson(json);

  @override
  Map<String, dynamic> varsToJson() => vars.toJson();

  @override
  Map<String, dynamic> dataToJson(_i2.GSocialLoginVerifyData data) =>
      data.toJson();

  @override
  _i1.OperationRequest<_i2.GSocialLoginVerifyData, _i3.GSocialLoginVerifyVars>
      transformOperation(_i4.Operation Function(_i4.Operation) transform) =>
          this.rebuild((b) => b..operation = transform(operation));

  static Serializer<GSocialLoginVerifyReq> get serializer =>
      _$gSocialLoginVerifyReqSerializer;

  Map<String, dynamic> toJson() => (_i6.serializers.serializeWith(
        GSocialLoginVerifyReq.serializer,
        this,
      ) as Map<String, dynamic>);

  static GSocialLoginVerifyReq? fromJson(Map<String, dynamic> json) =>
      _i6.serializers.deserializeWith(
        GSocialLoginVerifyReq.serializer,
        json,
      );
}

abstract class GshowUserProfileReq
    implements
        Built<GshowUserProfileReq, GshowUserProfileReqBuilder>,
        _i1
        .OperationRequest<_i2.GshowUserProfileData, _i3.GshowUserProfileVars> {
  GshowUserProfileReq._();

  factory GshowUserProfileReq(
          [void Function(GshowUserProfileReqBuilder b) updates]) =
      _$GshowUserProfileReq;

  static void _initializeBuilder(GshowUserProfileReqBuilder b) => b
    ..operation = _i4.Operation(
      document: _i5.document,
      operationName: 'showUserProfile',
    )
    ..executeOnListen = true;

  @override
  _i3.GshowUserProfileVars get vars;
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
  _i2.GshowUserProfileData? Function(
    _i2.GshowUserProfileData?,
    _i2.GshowUserProfileData?,
  )? get updateResult;
  @override
  _i2.GshowUserProfileData? get optimisticResponse;
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
  _i2.GshowUserProfileData? parseData(Map<String, dynamic> json) =>
      _i2.GshowUserProfileData.fromJson(json);

  @override
  Map<String, dynamic> varsToJson() => vars.toJson();

  @override
  Map<String, dynamic> dataToJson(_i2.GshowUserProfileData data) =>
      data.toJson();

  @override
  _i1.OperationRequest<_i2.GshowUserProfileData, _i3.GshowUserProfileVars>
      transformOperation(_i4.Operation Function(_i4.Operation) transform) =>
          this.rebuild((b) => b..operation = transform(operation));

  static Serializer<GshowUserProfileReq> get serializer =>
      _$gshowUserProfileReqSerializer;

  Map<String, dynamic> toJson() => (_i6.serializers.serializeWith(
        GshowUserProfileReq.serializer,
        this,
      ) as Map<String, dynamic>);

  static GshowUserProfileReq? fromJson(Map<String, dynamic> json) =>
      _i6.serializers.deserializeWith(
        GshowUserProfileReq.serializer,
        json,
      );
}

abstract class GuserAccountReq
    implements
        Built<GuserAccountReq, GuserAccountReqBuilder>,
        _i1.OperationRequest<_i2.GuserAccountData, _i3.GuserAccountVars> {
  GuserAccountReq._();

  factory GuserAccountReq([void Function(GuserAccountReqBuilder b) updates]) =
      _$GuserAccountReq;

  static void _initializeBuilder(GuserAccountReqBuilder b) => b
    ..operation = _i4.Operation(
      document: _i5.document,
      operationName: 'userAccount',
    )
    ..executeOnListen = true;

  @override
  _i3.GuserAccountVars get vars;
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
  _i2.GuserAccountData? Function(
    _i2.GuserAccountData?,
    _i2.GuserAccountData?,
  )? get updateResult;
  @override
  _i2.GuserAccountData? get optimisticResponse;
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
  _i2.GuserAccountData? parseData(Map<String, dynamic> json) =>
      _i2.GuserAccountData.fromJson(json);

  @override
  Map<String, dynamic> varsToJson() => vars.toJson();

  @override
  Map<String, dynamic> dataToJson(_i2.GuserAccountData data) => data.toJson();

  @override
  _i1.OperationRequest<_i2.GuserAccountData, _i3.GuserAccountVars>
      transformOperation(_i4.Operation Function(_i4.Operation) transform) =>
          this.rebuild((b) => b..operation = transform(operation));

  static Serializer<GuserAccountReq> get serializer =>
      _$guserAccountReqSerializer;

  Map<String, dynamic> toJson() => (_i6.serializers.serializeWith(
        GuserAccountReq.serializer,
        this,
      ) as Map<String, dynamic>);

  static GuserAccountReq? fromJson(Map<String, dynamic> json) =>
      _i6.serializers.deserializeWith(
        GuserAccountReq.serializer,
        json,
      );
}
