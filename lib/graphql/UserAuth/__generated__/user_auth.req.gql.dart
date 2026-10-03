// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:ferry_exec/ferry_exec.dart' as _i1;
import 'package:gozy/graphql/__generated__/serializers.gql.dart' as _i6;
import 'package:gozy/graphql/UserAuth/__generated__/user_auth.ast.gql.dart'
    as _i5;
import 'package:gozy/graphql/UserAuth/__generated__/user_auth.data.gql.dart'
    as _i2;
import 'package:gozy/graphql/UserAuth/__generated__/user_auth.var.gql.dart'
    as _i3;
import 'package:gql_exec/gql_exec.dart' as _i4;

part 'user_auth.req.gql.g.dart';

abstract class GLoginReq
    implements
        Built<GLoginReq, GLoginReqBuilder>,
        _i1.OperationRequest<_i2.GLoginData, _i3.GLoginVars> {
  GLoginReq._();

  factory GLoginReq([void Function(GLoginReqBuilder b) updates]) = _$GLoginReq;

  static void _initializeBuilder(GLoginReqBuilder b) => b
    ..operation = _i4.Operation(
      document: _i5.document,
      operationName: 'Login',
    )
    ..executeOnListen = true;

  @override
  _i3.GLoginVars get vars;
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
  _i2.GLoginData? Function(
    _i2.GLoginData?,
    _i2.GLoginData?,
  )? get updateResult;
  @override
  _i2.GLoginData? get optimisticResponse;
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
  _i2.GLoginData? parseData(Map<String, dynamic> json) =>
      _i2.GLoginData.fromJson(json);

  @override
  Map<String, dynamic> varsToJson() => vars.toJson();

  @override
  Map<String, dynamic> dataToJson(_i2.GLoginData data) => data.toJson();

  @override
  _i1.OperationRequest<_i2.GLoginData, _i3.GLoginVars> transformOperation(
          _i4.Operation Function(_i4.Operation) transform) =>
      this.rebuild((b) => b..operation = transform(operation));

  static Serializer<GLoginReq> get serializer => _$gLoginReqSerializer;

  Map<String, dynamic> toJson() => (_i6.serializers.serializeWith(
        GLoginReq.serializer,
        this,
      ) as Map<String, dynamic>);

  static GLoginReq? fromJson(Map<String, dynamic> json) =>
      _i6.serializers.deserializeWith(
        GLoginReq.serializer,
        json,
      );
}

abstract class GSignupReq
    implements
        Built<GSignupReq, GSignupReqBuilder>,
        _i1.OperationRequest<_i2.GSignupData, _i3.GSignupVars> {
  GSignupReq._();

  factory GSignupReq([void Function(GSignupReqBuilder b) updates]) =
      _$GSignupReq;

  static void _initializeBuilder(GSignupReqBuilder b) => b
    ..operation = _i4.Operation(
      document: _i5.document,
      operationName: 'Signup',
    )
    ..executeOnListen = true;

  @override
  _i3.GSignupVars get vars;
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
  _i2.GSignupData? Function(
    _i2.GSignupData?,
    _i2.GSignupData?,
  )? get updateResult;
  @override
  _i2.GSignupData? get optimisticResponse;
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
  _i2.GSignupData? parseData(Map<String, dynamic> json) =>
      _i2.GSignupData.fromJson(json);

  @override
  Map<String, dynamic> varsToJson() => vars.toJson();

  @override
  Map<String, dynamic> dataToJson(_i2.GSignupData data) => data.toJson();

  @override
  _i1.OperationRequest<_i2.GSignupData, _i3.GSignupVars> transformOperation(
          _i4.Operation Function(_i4.Operation) transform) =>
      this.rebuild((b) => b..operation = transform(operation));

  static Serializer<GSignupReq> get serializer => _$gSignupReqSerializer;

  Map<String, dynamic> toJson() => (_i6.serializers.serializeWith(
        GSignupReq.serializer,
        this,
      ) as Map<String, dynamic>);

  static GSignupReq? fromJson(Map<String, dynamic> json) =>
      _i6.serializers.deserializeWith(
        GSignupReq.serializer,
        json,
      );
}

abstract class GSocialLoginReq
    implements
        Built<GSocialLoginReq, GSocialLoginReqBuilder>,
        _i1.OperationRequest<_i2.GSocialLoginData, _i3.GSocialLoginVars> {
  GSocialLoginReq._();

  factory GSocialLoginReq([void Function(GSocialLoginReqBuilder b) updates]) =
      _$GSocialLoginReq;

  static void _initializeBuilder(GSocialLoginReqBuilder b) => b
    ..operation = _i4.Operation(
      document: _i5.document,
      operationName: 'SocialLogin',
    )
    ..executeOnListen = true;

  @override
  _i3.GSocialLoginVars get vars;
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
  _i2.GSocialLoginData? Function(
    _i2.GSocialLoginData?,
    _i2.GSocialLoginData?,
  )? get updateResult;
  @override
  _i2.GSocialLoginData? get optimisticResponse;
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
  _i2.GSocialLoginData? parseData(Map<String, dynamic> json) =>
      _i2.GSocialLoginData.fromJson(json);

  @override
  Map<String, dynamic> varsToJson() => vars.toJson();

  @override
  Map<String, dynamic> dataToJson(_i2.GSocialLoginData data) => data.toJson();

  @override
  _i1.OperationRequest<_i2.GSocialLoginData, _i3.GSocialLoginVars>
      transformOperation(_i4.Operation Function(_i4.Operation) transform) =>
          this.rebuild((b) => b..operation = transform(operation));

  static Serializer<GSocialLoginReq> get serializer =>
      _$gSocialLoginReqSerializer;

  Map<String, dynamic> toJson() => (_i6.serializers.serializeWith(
        GSocialLoginReq.serializer,
        this,
      ) as Map<String, dynamic>);

  static GSocialLoginReq? fromJson(Map<String, dynamic> json) =>
      _i6.serializers.deserializeWith(
        GSocialLoginReq.serializer,
        json,
      );
}

abstract class GLogoutReq
    implements
        Built<GLogoutReq, GLogoutReqBuilder>,
        _i1.OperationRequest<_i2.GLogoutData, _i3.GLogoutVars> {
  GLogoutReq._();

  factory GLogoutReq([void Function(GLogoutReqBuilder b) updates]) =
      _$GLogoutReq;

  static void _initializeBuilder(GLogoutReqBuilder b) => b
    ..operation = _i4.Operation(
      document: _i5.document,
      operationName: 'Logout',
    )
    ..executeOnListen = true;

  @override
  _i3.GLogoutVars get vars;
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
  _i2.GLogoutData? Function(
    _i2.GLogoutData?,
    _i2.GLogoutData?,
  )? get updateResult;
  @override
  _i2.GLogoutData? get optimisticResponse;
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
  _i2.GLogoutData? parseData(Map<String, dynamic> json) =>
      _i2.GLogoutData.fromJson(json);

  @override
  Map<String, dynamic> varsToJson() => vars.toJson();

  @override
  Map<String, dynamic> dataToJson(_i2.GLogoutData data) => data.toJson();

  @override
  _i1.OperationRequest<_i2.GLogoutData, _i3.GLogoutVars> transformOperation(
          _i4.Operation Function(_i4.Operation) transform) =>
      this.rebuild((b) => b..operation = transform(operation));

  static Serializer<GLogoutReq> get serializer => _$gLogoutReqSerializer;

  Map<String, dynamic> toJson() => (_i6.serializers.serializeWith(
        GLogoutReq.serializer,
        this,
      ) as Map<String, dynamic>);

  static GLogoutReq? fromJson(Map<String, dynamic> json) =>
      _i6.serializers.deserializeWith(
        GLogoutReq.serializer,
        json,
      );
}

abstract class GForgotPasswordReq
    implements
        Built<GForgotPasswordReq, GForgotPasswordReqBuilder>,
        _i1.OperationRequest<_i2.GForgotPasswordData, _i3.GForgotPasswordVars> {
  GForgotPasswordReq._();

  factory GForgotPasswordReq(
          [void Function(GForgotPasswordReqBuilder b) updates]) =
      _$GForgotPasswordReq;

  static void _initializeBuilder(GForgotPasswordReqBuilder b) => b
    ..operation = _i4.Operation(
      document: _i5.document,
      operationName: 'ForgotPassword',
    )
    ..executeOnListen = true;

  @override
  _i3.GForgotPasswordVars get vars;
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
  _i2.GForgotPasswordData? Function(
    _i2.GForgotPasswordData?,
    _i2.GForgotPasswordData?,
  )? get updateResult;
  @override
  _i2.GForgotPasswordData? get optimisticResponse;
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
  _i2.GForgotPasswordData? parseData(Map<String, dynamic> json) =>
      _i2.GForgotPasswordData.fromJson(json);

  @override
  Map<String, dynamic> varsToJson() => vars.toJson();

  @override
  Map<String, dynamic> dataToJson(_i2.GForgotPasswordData data) =>
      data.toJson();

  @override
  _i1.OperationRequest<_i2.GForgotPasswordData, _i3.GForgotPasswordVars>
      transformOperation(_i4.Operation Function(_i4.Operation) transform) =>
          this.rebuild((b) => b..operation = transform(operation));

  static Serializer<GForgotPasswordReq> get serializer =>
      _$gForgotPasswordReqSerializer;

  Map<String, dynamic> toJson() => (_i6.serializers.serializeWith(
        GForgotPasswordReq.serializer,
        this,
      ) as Map<String, dynamic>);

  static GForgotPasswordReq? fromJson(Map<String, dynamic> json) =>
      _i6.serializers.deserializeWith(
        GForgotPasswordReq.serializer,
        json,
      );
}

abstract class GForgotPasswordVerificationReq
    implements
        Built<GForgotPasswordVerificationReq,
            GForgotPasswordVerificationReqBuilder>,
        _i1.OperationRequest<_i2.GForgotPasswordVerificationData,
            _i3.GForgotPasswordVerificationVars> {
  GForgotPasswordVerificationReq._();

  factory GForgotPasswordVerificationReq(
          [void Function(GForgotPasswordVerificationReqBuilder b) updates]) =
      _$GForgotPasswordVerificationReq;

  static void _initializeBuilder(GForgotPasswordVerificationReqBuilder b) => b
    ..operation = _i4.Operation(
      document: _i5.document,
      operationName: 'ForgotPasswordVerification',
    )
    ..executeOnListen = true;

  @override
  _i3.GForgotPasswordVerificationVars get vars;
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
  _i2.GForgotPasswordVerificationData? Function(
    _i2.GForgotPasswordVerificationData?,
    _i2.GForgotPasswordVerificationData?,
  )? get updateResult;
  @override
  _i2.GForgotPasswordVerificationData? get optimisticResponse;
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
  _i2.GForgotPasswordVerificationData? parseData(Map<String, dynamic> json) =>
      _i2.GForgotPasswordVerificationData.fromJson(json);

  @override
  Map<String, dynamic> varsToJson() => vars.toJson();

  @override
  Map<String, dynamic> dataToJson(_i2.GForgotPasswordVerificationData data) =>
      data.toJson();

  @override
  _i1.OperationRequest<_i2.GForgotPasswordVerificationData,
      _i3.GForgotPasswordVerificationVars> transformOperation(
          _i4.Operation Function(_i4.Operation) transform) =>
      this.rebuild((b) => b..operation = transform(operation));

  static Serializer<GForgotPasswordVerificationReq> get serializer =>
      _$gForgotPasswordVerificationReqSerializer;

  Map<String, dynamic> toJson() => (_i6.serializers.serializeWith(
        GForgotPasswordVerificationReq.serializer,
        this,
      ) as Map<String, dynamic>);

  static GForgotPasswordVerificationReq? fromJson(Map<String, dynamic> json) =>
      _i6.serializers.deserializeWith(
        GForgotPasswordVerificationReq.serializer,
        json,
      );
}

abstract class GResetPasswordReq
    implements
        Built<GResetPasswordReq, GResetPasswordReqBuilder>,
        _i1.OperationRequest<_i2.GResetPasswordData, _i3.GResetPasswordVars> {
  GResetPasswordReq._();

  factory GResetPasswordReq(
          [void Function(GResetPasswordReqBuilder b) updates]) =
      _$GResetPasswordReq;

  static void _initializeBuilder(GResetPasswordReqBuilder b) => b
    ..operation = _i4.Operation(
      document: _i5.document,
      operationName: 'ResetPassword',
    )
    ..executeOnListen = true;

  @override
  _i3.GResetPasswordVars get vars;
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
  _i2.GResetPasswordData? Function(
    _i2.GResetPasswordData?,
    _i2.GResetPasswordData?,
  )? get updateResult;
  @override
  _i2.GResetPasswordData? get optimisticResponse;
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
  _i2.GResetPasswordData? parseData(Map<String, dynamic> json) =>
      _i2.GResetPasswordData.fromJson(json);

  @override
  Map<String, dynamic> varsToJson() => vars.toJson();

  @override
  Map<String, dynamic> dataToJson(_i2.GResetPasswordData data) => data.toJson();

  @override
  _i1.OperationRequest<_i2.GResetPasswordData, _i3.GResetPasswordVars>
      transformOperation(_i4.Operation Function(_i4.Operation) transform) =>
          this.rebuild((b) => b..operation = transform(operation));

  static Serializer<GResetPasswordReq> get serializer =>
      _$gResetPasswordReqSerializer;

  Map<String, dynamic> toJson() => (_i6.serializers.serializeWith(
        GResetPasswordReq.serializer,
        this,
      ) as Map<String, dynamic>);

  static GResetPasswordReq? fromJson(Map<String, dynamic> json) =>
      _i6.serializers.deserializeWith(
        GResetPasswordReq.serializer,
        json,
      );
}

abstract class GdeleteUserReq
    implements
        Built<GdeleteUserReq, GdeleteUserReqBuilder>,
        _i1.OperationRequest<_i2.GdeleteUserData, _i3.GdeleteUserVars> {
  GdeleteUserReq._();

  factory GdeleteUserReq([void Function(GdeleteUserReqBuilder b) updates]) =
      _$GdeleteUserReq;

  static void _initializeBuilder(GdeleteUserReqBuilder b) => b
    ..operation = _i4.Operation(
      document: _i5.document,
      operationName: 'deleteUser',
    )
    ..executeOnListen = true;

  @override
  _i3.GdeleteUserVars get vars;
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
  _i2.GdeleteUserData? Function(
    _i2.GdeleteUserData?,
    _i2.GdeleteUserData?,
  )? get updateResult;
  @override
  _i2.GdeleteUserData? get optimisticResponse;
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
  _i2.GdeleteUserData? parseData(Map<String, dynamic> json) =>
      _i2.GdeleteUserData.fromJson(json);

  @override
  Map<String, dynamic> varsToJson() => vars.toJson();

  @override
  Map<String, dynamic> dataToJson(_i2.GdeleteUserData data) => data.toJson();

  @override
  _i1.OperationRequest<_i2.GdeleteUserData, _i3.GdeleteUserVars>
      transformOperation(_i4.Operation Function(_i4.Operation) transform) =>
          this.rebuild((b) => b..operation = transform(operation));

  static Serializer<GdeleteUserReq> get serializer =>
      _$gdeleteUserReqSerializer;

  Map<String, dynamic> toJson() => (_i6.serializers.serializeWith(
        GdeleteUserReq.serializer,
        this,
      ) as Map<String, dynamic>);

  static GdeleteUserReq? fromJson(Map<String, dynamic> json) =>
      _i6.serializers.deserializeWith(
        GdeleteUserReq.serializer,
        json,
      );
}
