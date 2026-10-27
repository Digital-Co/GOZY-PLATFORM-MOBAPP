// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:gozy/graphql/__generated__/serializers.gql.dart' as _i1;
import 'package:gozy/graphql/inspection/__generated__/dispute_result_fragment.data.gql.dart'
    as _i2;

part 'get_dispute.data.gql.g.dart';

abstract class GgetDisputeData
    implements Built<GgetDisputeData, GgetDisputeDataBuilder> {
  GgetDisputeData._();

  factory GgetDisputeData([void Function(GgetDisputeDataBuilder b) updates]) =
      _$GgetDisputeData;

  static void _initializeBuilder(GgetDisputeDataBuilder b) =>
      b..G__typename = 'Query';

  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  GgetDisputeData_getDispute? get getDispute;
  static Serializer<GgetDisputeData> get serializer =>
      _$ggetDisputeDataSerializer;

  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GgetDisputeData.serializer,
        this,
      ) as Map<String, dynamic>);

  static GgetDisputeData? fromJson(Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GgetDisputeData.serializer,
        json,
      );
}

abstract class GgetDisputeData_getDispute
    implements
        Built<GgetDisputeData_getDispute, GgetDisputeData_getDisputeBuilder>,
        _i2.GdisputeResultFragment {
  GgetDisputeData_getDispute._();

  factory GgetDisputeData_getDispute(
          [void Function(GgetDisputeData_getDisputeBuilder b) updates]) =
      _$GgetDisputeData_getDispute;

  static void _initializeBuilder(GgetDisputeData_getDisputeBuilder b) =>
      b..G__typename = 'DisputeResult';

  @override
  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  @override
  int? get status;
  @override
  String? get errorMessage;
  @override
  GgetDisputeData_getDispute_dispute? get dispute;
  static Serializer<GgetDisputeData_getDispute> get serializer =>
      _$ggetDisputeDataGetDisputeSerializer;

  @override
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GgetDisputeData_getDispute.serializer,
        this,
      ) as Map<String, dynamic>);

  static GgetDisputeData_getDispute? fromJson(Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GgetDisputeData_getDispute.serializer,
        json,
      );
}

abstract class GgetDisputeData_getDispute_dispute
    implements
        Built<GgetDisputeData_getDispute_dispute,
            GgetDisputeData_getDispute_disputeBuilder>,
        _i2.GdisputeResultFragment_dispute {
  GgetDisputeData_getDispute_dispute._();

  factory GgetDisputeData_getDispute_dispute(
      [void Function(GgetDisputeData_getDispute_disputeBuilder b)
          updates]) = _$GgetDisputeData_getDispute_dispute;

  static void _initializeBuilder(GgetDisputeData_getDispute_disputeBuilder b) =>
      b..G__typename = 'Dispute';

  @override
  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  @override
  int? get id;
  @override
  int? get reservationId;
  @override
  String? get openedBy;
  @override
  String? get openedByRole;
  @override
  String? get reasonCode;
  @override
  String? get status;
  @override
  bool? get isActive;
  @override
  double? get depositAmount;
  @override
  String? get depositStatus;
  @override
  String? get createdAt;
  @override
  String? get closedAt;
  @override
  BuiltList<GgetDisputeData_getDispute_dispute_statements?>? get statements;
  @override
  BuiltList<GgetDisputeData_getDispute_dispute_decisions?>? get decisions;
  static Serializer<GgetDisputeData_getDispute_dispute> get serializer =>
      _$ggetDisputeDataGetDisputeDisputeSerializer;

  @override
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GgetDisputeData_getDispute_dispute.serializer,
        this,
      ) as Map<String, dynamic>);

  static GgetDisputeData_getDispute_dispute? fromJson(
          Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GgetDisputeData_getDispute_dispute.serializer,
        json,
      );
}

abstract class GgetDisputeData_getDispute_dispute_statements
    implements
        Built<GgetDisputeData_getDispute_dispute_statements,
            GgetDisputeData_getDispute_dispute_statementsBuilder>,
        _i2.GdisputeResultFragment_dispute_statements {
  GgetDisputeData_getDispute_dispute_statements._();

  factory GgetDisputeData_getDispute_dispute_statements(
      [void Function(GgetDisputeData_getDispute_dispute_statementsBuilder b)
          updates]) = _$GgetDisputeData_getDispute_dispute_statements;

  static void _initializeBuilder(
          GgetDisputeData_getDispute_dispute_statementsBuilder b) =>
      b..G__typename = 'DisputeStatement';

  @override
  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  @override
  int? get id;
  @override
  int? get disputeId;
  @override
  String? get userId;
  @override
  String? get role;
  @override
  String? get content;
  @override
  BuiltList<int?>? get attachments;
  @override
  String? get createdAt;
  static Serializer<GgetDisputeData_getDispute_dispute_statements>
      get serializer => _$ggetDisputeDataGetDisputeDisputeStatementsSerializer;

  @override
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GgetDisputeData_getDispute_dispute_statements.serializer,
        this,
      ) as Map<String, dynamic>);

  static GgetDisputeData_getDispute_dispute_statements? fromJson(
          Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GgetDisputeData_getDispute_dispute_statements.serializer,
        json,
      );
}

abstract class GgetDisputeData_getDispute_dispute_decisions
    implements
        Built<GgetDisputeData_getDispute_dispute_decisions,
            GgetDisputeData_getDispute_dispute_decisionsBuilder>,
        _i2.GdisputeResultFragment_dispute_decisions {
  GgetDisputeData_getDispute_dispute_decisions._();

  factory GgetDisputeData_getDispute_dispute_decisions(
      [void Function(GgetDisputeData_getDispute_dispute_decisionsBuilder b)
          updates]) = _$GgetDisputeData_getDispute_dispute_decisions;

  static void _initializeBuilder(
          GgetDisputeData_getDispute_dispute_decisionsBuilder b) =>
      b..G__typename = 'DisputeDecision';

  @override
  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  @override
  int? get id;
  @override
  String? get type;
  @override
  double? get retainedAmount;
  @override
  double? get refundAmount;
  @override
  double? get requestedAmount;
  @override
  String? get currency;
  @override
  String? get motive;
  @override
  String? get createdAt;
  static Serializer<GgetDisputeData_getDispute_dispute_decisions>
      get serializer => _$ggetDisputeDataGetDisputeDisputeDecisionsSerializer;

  @override
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GgetDisputeData_getDispute_dispute_decisions.serializer,
        this,
      ) as Map<String, dynamic>);

  static GgetDisputeData_getDispute_dispute_decisions? fromJson(
          Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GgetDisputeData_getDispute_dispute_decisions.serializer,
        json,
      );
}
