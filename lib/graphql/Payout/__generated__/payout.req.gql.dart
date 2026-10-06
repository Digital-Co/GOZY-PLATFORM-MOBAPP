// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:ferry_exec/ferry_exec.dart' as _i1;
import 'package:gozy/graphql/__generated__/serializers.gql.dart' as _i6;
import 'package:gozy/graphql/Payout/__generated__/payout.ast.gql.dart' as _i5;
import 'package:gozy/graphql/Payout/__generated__/payout.data.gql.dart' as _i2;
import 'package:gozy/graphql/Payout/__generated__/payout.var.gql.dart' as _i3;
import 'package:gql_exec/gql_exec.dart' as _i4;

part 'payout.req.gql.g.dart';

abstract class GgetPayoutsReq
    implements
        Built<GgetPayoutsReq, GgetPayoutsReqBuilder>,
        _i1.OperationRequest<_i2.GgetPayoutsData, _i3.GgetPayoutsVars> {
  GgetPayoutsReq._();

  factory GgetPayoutsReq([void Function(GgetPayoutsReqBuilder b) updates]) =
      _$GgetPayoutsReq;

  static void _initializeBuilder(GgetPayoutsReqBuilder b) => b
    ..operation = _i4.Operation(
      document: _i5.document,
      operationName: 'getPayouts',
    )
    ..executeOnListen = true;

  @override
  _i3.GgetPayoutsVars get vars;
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
  _i2.GgetPayoutsData? Function(
    _i2.GgetPayoutsData?,
    _i2.GgetPayoutsData?,
  )? get updateResult;
  @override
  _i2.GgetPayoutsData? get optimisticResponse;
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
  _i2.GgetPayoutsData? parseData(Map<String, dynamic> json) =>
      _i2.GgetPayoutsData.fromJson(json);

  @override
  Map<String, dynamic> varsToJson() => vars.toJson();

  @override
  Map<String, dynamic> dataToJson(_i2.GgetPayoutsData data) => data.toJson();

  @override
  _i1.OperationRequest<_i2.GgetPayoutsData, _i3.GgetPayoutsVars>
      transformOperation(_i4.Operation Function(_i4.Operation) transform) =>
          this.rebuild((b) => b..operation = transform(operation));

  static Serializer<GgetPayoutsReq> get serializer =>
      _$ggetPayoutsReqSerializer;

  Map<String, dynamic> toJson() => (_i6.serializers.serializeWith(
        GgetPayoutsReq.serializer,
        this,
      ) as Map<String, dynamic>);

  static GgetPayoutsReq? fromJson(Map<String, dynamic> json) =>
      _i6.serializers.deserializeWith(
        GgetPayoutsReq.serializer,
        json,
      );
}

abstract class GconfirmPayoutReq
    implements
        Built<GconfirmPayoutReq, GconfirmPayoutReqBuilder>,
        _i1.OperationRequest<_i2.GconfirmPayoutData, _i3.GconfirmPayoutVars> {
  GconfirmPayoutReq._();

  factory GconfirmPayoutReq(
          [void Function(GconfirmPayoutReqBuilder b) updates]) =
      _$GconfirmPayoutReq;

  static void _initializeBuilder(GconfirmPayoutReqBuilder b) => b
    ..operation = _i4.Operation(
      document: _i5.document,
      operationName: 'confirmPayout',
    )
    ..executeOnListen = true;

  @override
  _i3.GconfirmPayoutVars get vars;
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
  _i2.GconfirmPayoutData? Function(
    _i2.GconfirmPayoutData?,
    _i2.GconfirmPayoutData?,
  )? get updateResult;
  @override
  _i2.GconfirmPayoutData? get optimisticResponse;
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
  _i2.GconfirmPayoutData? parseData(Map<String, dynamic> json) =>
      _i2.GconfirmPayoutData.fromJson(json);

  @override
  Map<String, dynamic> varsToJson() => vars.toJson();

  @override
  Map<String, dynamic> dataToJson(_i2.GconfirmPayoutData data) => data.toJson();

  @override
  _i1.OperationRequest<_i2.GconfirmPayoutData, _i3.GconfirmPayoutVars>
      transformOperation(_i4.Operation Function(_i4.Operation) transform) =>
          this.rebuild((b) => b..operation = transform(operation));

  static Serializer<GconfirmPayoutReq> get serializer =>
      _$gconfirmPayoutReqSerializer;

  Map<String, dynamic> toJson() => (_i6.serializers.serializeWith(
        GconfirmPayoutReq.serializer,
        this,
      ) as Map<String, dynamic>);

  static GconfirmPayoutReq? fromJson(Map<String, dynamic> json) =>
      _i6.serializers.deserializeWith(
        GconfirmPayoutReq.serializer,
        json,
      );
}

abstract class GsetDefaultPayoutReq
    implements
        Built<GsetDefaultPayoutReq, GsetDefaultPayoutReqBuilder>,
        _i1.OperationRequest<_i2.GsetDefaultPayoutData,
            _i3.GsetDefaultPayoutVars> {
  GsetDefaultPayoutReq._();

  factory GsetDefaultPayoutReq(
          [void Function(GsetDefaultPayoutReqBuilder b) updates]) =
      _$GsetDefaultPayoutReq;

  static void _initializeBuilder(GsetDefaultPayoutReqBuilder b) => b
    ..operation = _i4.Operation(
      document: _i5.document,
      operationName: 'setDefaultPayout',
    )
    ..executeOnListen = true;

  @override
  _i3.GsetDefaultPayoutVars get vars;
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
  _i2.GsetDefaultPayoutData? Function(
    _i2.GsetDefaultPayoutData?,
    _i2.GsetDefaultPayoutData?,
  )? get updateResult;
  @override
  _i2.GsetDefaultPayoutData? get optimisticResponse;
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
  _i2.GsetDefaultPayoutData? parseData(Map<String, dynamic> json) =>
      _i2.GsetDefaultPayoutData.fromJson(json);

  @override
  Map<String, dynamic> varsToJson() => vars.toJson();

  @override
  Map<String, dynamic> dataToJson(_i2.GsetDefaultPayoutData data) =>
      data.toJson();

  @override
  _i1.OperationRequest<_i2.GsetDefaultPayoutData, _i3.GsetDefaultPayoutVars>
      transformOperation(_i4.Operation Function(_i4.Operation) transform) =>
          this.rebuild((b) => b..operation = transform(operation));

  static Serializer<GsetDefaultPayoutReq> get serializer =>
      _$gsetDefaultPayoutReqSerializer;

  Map<String, dynamic> toJson() => (_i6.serializers.serializeWith(
        GsetDefaultPayoutReq.serializer,
        this,
      ) as Map<String, dynamic>);

  static GsetDefaultPayoutReq? fromJson(Map<String, dynamic> json) =>
      _i6.serializers.deserializeWith(
        GsetDefaultPayoutReq.serializer,
        json,
      );
}

abstract class GgetPaymentMethodsReq
    implements
        Built<GgetPaymentMethodsReq, GgetPaymentMethodsReqBuilder>,
        _i1.OperationRequest<_i2.GgetPaymentMethodsData,
            _i3.GgetPaymentMethodsVars> {
  GgetPaymentMethodsReq._();

  factory GgetPaymentMethodsReq(
          [void Function(GgetPaymentMethodsReqBuilder b) updates]) =
      _$GgetPaymentMethodsReq;

  static void _initializeBuilder(GgetPaymentMethodsReqBuilder b) => b
    ..operation = _i4.Operation(
      document: _i5.document,
      operationName: 'getPaymentMethods',
    )
    ..executeOnListen = true;

  @override
  _i3.GgetPaymentMethodsVars get vars;
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
  _i2.GgetPaymentMethodsData? Function(
    _i2.GgetPaymentMethodsData?,
    _i2.GgetPaymentMethodsData?,
  )? get updateResult;
  @override
  _i2.GgetPaymentMethodsData? get optimisticResponse;
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
  _i2.GgetPaymentMethodsData? parseData(Map<String, dynamic> json) =>
      _i2.GgetPaymentMethodsData.fromJson(json);

  @override
  Map<String, dynamic> varsToJson() => vars.toJson();

  @override
  Map<String, dynamic> dataToJson(_i2.GgetPaymentMethodsData data) =>
      data.toJson();

  @override
  _i1.OperationRequest<_i2.GgetPaymentMethodsData, _i3.GgetPaymentMethodsVars>
      transformOperation(_i4.Operation Function(_i4.Operation) transform) =>
          this.rebuild((b) => b..operation = transform(operation));

  static Serializer<GgetPaymentMethodsReq> get serializer =>
      _$ggetPaymentMethodsReqSerializer;

  Map<String, dynamic> toJson() => (_i6.serializers.serializeWith(
        GgetPaymentMethodsReq.serializer,
        this,
      ) as Map<String, dynamic>);

  static GgetPaymentMethodsReq? fromJson(Map<String, dynamic> json) =>
      _i6.serializers.deserializeWith(
        GgetPaymentMethodsReq.serializer,
        json,
      );
}

abstract class GaddPayoutReq
    implements
        Built<GaddPayoutReq, GaddPayoutReqBuilder>,
        _i1.OperationRequest<_i2.GaddPayoutData, _i3.GaddPayoutVars> {
  GaddPayoutReq._();

  factory GaddPayoutReq([void Function(GaddPayoutReqBuilder b) updates]) =
      _$GaddPayoutReq;

  static void _initializeBuilder(GaddPayoutReqBuilder b) => b
    ..operation = _i4.Operation(
      document: _i5.document,
      operationName: 'addPayout',
    )
    ..executeOnListen = true;

  @override
  _i3.GaddPayoutVars get vars;
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
  _i2.GaddPayoutData? Function(
    _i2.GaddPayoutData?,
    _i2.GaddPayoutData?,
  )? get updateResult;
  @override
  _i2.GaddPayoutData? get optimisticResponse;
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
  _i2.GaddPayoutData? parseData(Map<String, dynamic> json) =>
      _i2.GaddPayoutData.fromJson(json);

  @override
  Map<String, dynamic> varsToJson() => vars.toJson();

  @override
  Map<String, dynamic> dataToJson(_i2.GaddPayoutData data) => data.toJson();

  @override
  _i1.OperationRequest<_i2.GaddPayoutData, _i3.GaddPayoutVars>
      transformOperation(_i4.Operation Function(_i4.Operation) transform) =>
          this.rebuild((b) => b..operation = transform(operation));

  static Serializer<GaddPayoutReq> get serializer => _$gaddPayoutReqSerializer;

  Map<String, dynamic> toJson() => (_i6.serializers.serializeWith(
        GaddPayoutReq.serializer,
        this,
      ) as Map<String, dynamic>);

  static GaddPayoutReq? fromJson(Map<String, dynamic> json) =>
      _i6.serializers.deserializeWith(
        GaddPayoutReq.serializer,
        json,
      );
}

abstract class GverifyPayoutReq
    implements
        Built<GverifyPayoutReq, GverifyPayoutReqBuilder>,
        _i1.OperationRequest<_i2.GverifyPayoutData, _i3.GverifyPayoutVars> {
  GverifyPayoutReq._();

  factory GverifyPayoutReq([void Function(GverifyPayoutReqBuilder b) updates]) =
      _$GverifyPayoutReq;

  static void _initializeBuilder(GverifyPayoutReqBuilder b) => b
    ..operation = _i4.Operation(
      document: _i5.document,
      operationName: 'verifyPayout',
    )
    ..executeOnListen = true;

  @override
  _i3.GverifyPayoutVars get vars;
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
  _i2.GverifyPayoutData? Function(
    _i2.GverifyPayoutData?,
    _i2.GverifyPayoutData?,
  )? get updateResult;
  @override
  _i2.GverifyPayoutData? get optimisticResponse;
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
  _i2.GverifyPayoutData? parseData(Map<String, dynamic> json) =>
      _i2.GverifyPayoutData.fromJson(json);

  @override
  Map<String, dynamic> varsToJson() => vars.toJson();

  @override
  Map<String, dynamic> dataToJson(_i2.GverifyPayoutData data) => data.toJson();

  @override
  _i1.OperationRequest<_i2.GverifyPayoutData, _i3.GverifyPayoutVars>
      transformOperation(_i4.Operation Function(_i4.Operation) transform) =>
          this.rebuild((b) => b..operation = transform(operation));

  static Serializer<GverifyPayoutReq> get serializer =>
      _$gverifyPayoutReqSerializer;

  Map<String, dynamic> toJson() => (_i6.serializers.serializeWith(
        GverifyPayoutReq.serializer,
        this,
      ) as Map<String, dynamic>);

  static GverifyPayoutReq? fromJson(Map<String, dynamic> json) =>
      _i6.serializers.deserializeWith(
        GverifyPayoutReq.serializer,
        json,
      );
}

abstract class GgetPawaPayOptionsReq
    implements
        Built<GgetPawaPayOptionsReq, GgetPawaPayOptionsReqBuilder>,
        _i1.OperationRequest<_i2.GgetPawaPayOptionsData,
            _i3.GgetPawaPayOptionsVars> {
  GgetPawaPayOptionsReq._();

  factory GgetPawaPayOptionsReq(
          [void Function(GgetPawaPayOptionsReqBuilder b) updates]) =
      _$GgetPawaPayOptionsReq;

  static void _initializeBuilder(GgetPawaPayOptionsReqBuilder b) => b
    ..operation = _i4.Operation(
      document: _i5.document,
      operationName: 'getPawaPayOptions',
    )
    ..executeOnListen = true;

  @override
  _i3.GgetPawaPayOptionsVars get vars;
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
  _i2.GgetPawaPayOptionsData? Function(
    _i2.GgetPawaPayOptionsData?,
    _i2.GgetPawaPayOptionsData?,
  )? get updateResult;
  @override
  _i2.GgetPawaPayOptionsData? get optimisticResponse;
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
  _i2.GgetPawaPayOptionsData? parseData(Map<String, dynamic> json) =>
      _i2.GgetPawaPayOptionsData.fromJson(json);

  @override
  Map<String, dynamic> varsToJson() => vars.toJson();

  @override
  Map<String, dynamic> dataToJson(_i2.GgetPawaPayOptionsData data) =>
      data.toJson();

  @override
  _i1.OperationRequest<_i2.GgetPawaPayOptionsData, _i3.GgetPawaPayOptionsVars>
      transformOperation(_i4.Operation Function(_i4.Operation) transform) =>
          this.rebuild((b) => b..operation = transform(operation));

  static Serializer<GgetPawaPayOptionsReq> get serializer =>
      _$ggetPawaPayOptionsReqSerializer;

  Map<String, dynamic> toJson() => (_i6.serializers.serializeWith(
        GgetPawaPayOptionsReq.serializer,
        this,
      ) as Map<String, dynamic>);

  static GgetPawaPayOptionsReq? fromJson(Map<String, dynamic> json) =>
      _i6.serializers.deserializeWith(
        GgetPawaPayOptionsReq.serializer,
        json,
      );
}

abstract class GinitiatePawaPayDepositReq
    implements
        Built<GinitiatePawaPayDepositReq, GinitiatePawaPayDepositReqBuilder>,
        _i1.OperationRequest<_i2.GinitiatePawaPayDepositData,
            _i3.GinitiatePawaPayDepositVars> {
  GinitiatePawaPayDepositReq._();

  factory GinitiatePawaPayDepositReq(
          [void Function(GinitiatePawaPayDepositReqBuilder b) updates]) =
      _$GinitiatePawaPayDepositReq;

  static void _initializeBuilder(GinitiatePawaPayDepositReqBuilder b) => b
    ..operation = _i4.Operation(
      document: _i5.document,
      operationName: 'initiatePawaPayDeposit',
    )
    ..executeOnListen = true;

  @override
  _i3.GinitiatePawaPayDepositVars get vars;
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
  _i2.GinitiatePawaPayDepositData? Function(
    _i2.GinitiatePawaPayDepositData?,
    _i2.GinitiatePawaPayDepositData?,
  )? get updateResult;
  @override
  _i2.GinitiatePawaPayDepositData? get optimisticResponse;
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
  _i2.GinitiatePawaPayDepositData? parseData(Map<String, dynamic> json) =>
      _i2.GinitiatePawaPayDepositData.fromJson(json);

  @override
  Map<String, dynamic> varsToJson() => vars.toJson();

  @override
  Map<String, dynamic> dataToJson(_i2.GinitiatePawaPayDepositData data) =>
      data.toJson();

  @override
  _i1.OperationRequest<_i2.GinitiatePawaPayDepositData,
      _i3.GinitiatePawaPayDepositVars> transformOperation(
          _i4.Operation Function(_i4.Operation) transform) =>
      this.rebuild((b) => b..operation = transform(operation));

  static Serializer<GinitiatePawaPayDepositReq> get serializer =>
      _$ginitiatePawaPayDepositReqSerializer;

  Map<String, dynamic> toJson() => (_i6.serializers.serializeWith(
        GinitiatePawaPayDepositReq.serializer,
        this,
      ) as Map<String, dynamic>);

  static GinitiatePawaPayDepositReq? fromJson(Map<String, dynamic> json) =>
      _i6.serializers.deserializeWith(
        GinitiatePawaPayDepositReq.serializer,
        json,
      );
}

abstract class GgetPawaPayDepositStatusReq
    implements
        Built<GgetPawaPayDepositStatusReq, GgetPawaPayDepositStatusReqBuilder>,
        _i1.OperationRequest<_i2.GgetPawaPayDepositStatusData,
            _i3.GgetPawaPayDepositStatusVars> {
  GgetPawaPayDepositStatusReq._();

  factory GgetPawaPayDepositStatusReq(
          [void Function(GgetPawaPayDepositStatusReqBuilder b) updates]) =
      _$GgetPawaPayDepositStatusReq;

  static void _initializeBuilder(GgetPawaPayDepositStatusReqBuilder b) => b
    ..operation = _i4.Operation(
      document: _i5.document,
      operationName: 'getPawaPayDepositStatus',
    )
    ..executeOnListen = true;

  @override
  _i3.GgetPawaPayDepositStatusVars get vars;
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
  _i2.GgetPawaPayDepositStatusData? Function(
    _i2.GgetPawaPayDepositStatusData?,
    _i2.GgetPawaPayDepositStatusData?,
  )? get updateResult;
  @override
  _i2.GgetPawaPayDepositStatusData? get optimisticResponse;
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
  _i2.GgetPawaPayDepositStatusData? parseData(Map<String, dynamic> json) =>
      _i2.GgetPawaPayDepositStatusData.fromJson(json);

  @override
  Map<String, dynamic> varsToJson() => vars.toJson();

  @override
  Map<String, dynamic> dataToJson(_i2.GgetPawaPayDepositStatusData data) =>
      data.toJson();

  @override
  _i1.OperationRequest<_i2.GgetPawaPayDepositStatusData,
      _i3.GgetPawaPayDepositStatusVars> transformOperation(
          _i4.Operation Function(_i4.Operation) transform) =>
      this.rebuild((b) => b..operation = transform(operation));

  static Serializer<GgetPawaPayDepositStatusReq> get serializer =>
      _$ggetPawaPayDepositStatusReqSerializer;

  Map<String, dynamic> toJson() => (_i6.serializers.serializeWith(
        GgetPawaPayDepositStatusReq.serializer,
        this,
      ) as Map<String, dynamic>);

  static GgetPawaPayDepositStatusReq? fromJson(Map<String, dynamic> json) =>
      _i6.serializers.deserializeWith(
        GgetPawaPayDepositStatusReq.serializer,
        json,
      );
}

abstract class GaddPawaPayPayoutAccountReq
    implements
        Built<GaddPawaPayPayoutAccountReq, GaddPawaPayPayoutAccountReqBuilder>,
        _i1.OperationRequest<_i2.GaddPawaPayPayoutAccountData,
            _i3.GaddPawaPayPayoutAccountVars> {
  GaddPawaPayPayoutAccountReq._();

  factory GaddPawaPayPayoutAccountReq(
          [void Function(GaddPawaPayPayoutAccountReqBuilder b) updates]) =
      _$GaddPawaPayPayoutAccountReq;

  static void _initializeBuilder(GaddPawaPayPayoutAccountReqBuilder b) => b
    ..operation = _i4.Operation(
      document: _i5.document,
      operationName: 'addPawaPayPayoutAccount',
    )
    ..executeOnListen = true;

  @override
  _i3.GaddPawaPayPayoutAccountVars get vars;
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
  _i2.GaddPawaPayPayoutAccountData? Function(
    _i2.GaddPawaPayPayoutAccountData?,
    _i2.GaddPawaPayPayoutAccountData?,
  )? get updateResult;
  @override
  _i2.GaddPawaPayPayoutAccountData? get optimisticResponse;
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
  _i2.GaddPawaPayPayoutAccountData? parseData(Map<String, dynamic> json) =>
      _i2.GaddPawaPayPayoutAccountData.fromJson(json);

  @override
  Map<String, dynamic> varsToJson() => vars.toJson();

  @override
  Map<String, dynamic> dataToJson(_i2.GaddPawaPayPayoutAccountData data) =>
      data.toJson();

  @override
  _i1.OperationRequest<_i2.GaddPawaPayPayoutAccountData,
      _i3.GaddPawaPayPayoutAccountVars> transformOperation(
          _i4.Operation Function(_i4.Operation) transform) =>
      this.rebuild((b) => b..operation = transform(operation));

  static Serializer<GaddPawaPayPayoutAccountReq> get serializer =>
      _$gaddPawaPayPayoutAccountReqSerializer;

  Map<String, dynamic> toJson() => (_i6.serializers.serializeWith(
        GaddPawaPayPayoutAccountReq.serializer,
        this,
      ) as Map<String, dynamic>);

  static GaddPawaPayPayoutAccountReq? fromJson(Map<String, dynamic> json) =>
      _i6.serializers.deserializeWith(
        GaddPawaPayPayoutAccountReq.serializer,
        json,
      );
}
