// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:gozy/graphql/__generated__/serializers.gql.dart' as _i1;
import 'package:gozy/graphql/inspection/__generated__/dispute_result_fragment.data.gql.dart'
    as _i2;

part 'add_dispute_statement.data.gql.g.dart';

abstract class GaddDisputeStatementData
    implements
        Built<GaddDisputeStatementData, GaddDisputeStatementDataBuilder> {
  GaddDisputeStatementData._();

  factory GaddDisputeStatementData(
          [void Function(GaddDisputeStatementDataBuilder b) updates]) =
      _$GaddDisputeStatementData;

  static void _initializeBuilder(GaddDisputeStatementDataBuilder b) =>
      b..G__typename = 'Mutation';

  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  GaddDisputeStatementData_addDisputeStatement? get addDisputeStatement;
  static Serializer<GaddDisputeStatementData> get serializer =>
      _$gaddDisputeStatementDataSerializer;

  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GaddDisputeStatementData.serializer,
        this,
      ) as Map<String, dynamic>);

  static GaddDisputeStatementData? fromJson(Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GaddDisputeStatementData.serializer,
        json,
      );
}

abstract class GaddDisputeStatementData_addDisputeStatement
    implements
        Built<GaddDisputeStatementData_addDisputeStatement,
            GaddDisputeStatementData_addDisputeStatementBuilder>,
        _i2.GdisputeResultFragment {
  GaddDisputeStatementData_addDisputeStatement._();

  factory GaddDisputeStatementData_addDisputeStatement(
      [void Function(GaddDisputeStatementData_addDisputeStatementBuilder b)
          updates]) = _$GaddDisputeStatementData_addDisputeStatement;

  static void _initializeBuilder(
          GaddDisputeStatementData_addDisputeStatementBuilder b) =>
      b..G__typename = 'DisputeResult';

  @override
  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  @override
  int? get status;
  @override
  String? get errorMessage;
  @override
  GaddDisputeStatementData_addDisputeStatement_dispute? get dispute;
  static Serializer<GaddDisputeStatementData_addDisputeStatement>
      get serializer => _$gaddDisputeStatementDataAddDisputeStatementSerializer;

  @override
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GaddDisputeStatementData_addDisputeStatement.serializer,
        this,
      ) as Map<String, dynamic>);

  static GaddDisputeStatementData_addDisputeStatement? fromJson(
          Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GaddDisputeStatementData_addDisputeStatement.serializer,
        json,
      );
}

abstract class GaddDisputeStatementData_addDisputeStatement_dispute
    implements
        Built<GaddDisputeStatementData_addDisputeStatement_dispute,
            GaddDisputeStatementData_addDisputeStatement_disputeBuilder>,
        _i2.GdisputeResultFragment_dispute {
  GaddDisputeStatementData_addDisputeStatement_dispute._();

  factory GaddDisputeStatementData_addDisputeStatement_dispute(
      [void Function(
              GaddDisputeStatementData_addDisputeStatement_disputeBuilder b)
          updates]) = _$GaddDisputeStatementData_addDisputeStatement_dispute;

  static void _initializeBuilder(
          GaddDisputeStatementData_addDisputeStatement_disputeBuilder b) =>
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
  BuiltList<GaddDisputeStatementData_addDisputeStatement_dispute_statements?>?
      get statements;
  @override
  BuiltList<GaddDisputeStatementData_addDisputeStatement_dispute_decisions?>?
      get decisions;
  static Serializer<GaddDisputeStatementData_addDisputeStatement_dispute>
      get serializer =>
          _$gaddDisputeStatementDataAddDisputeStatementDisputeSerializer;

  @override
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GaddDisputeStatementData_addDisputeStatement_dispute.serializer,
        this,
      ) as Map<String, dynamic>);

  static GaddDisputeStatementData_addDisputeStatement_dispute? fromJson(
          Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GaddDisputeStatementData_addDisputeStatement_dispute.serializer,
        json,
      );
}

abstract class GaddDisputeStatementData_addDisputeStatement_dispute_statements
    implements
        Built<GaddDisputeStatementData_addDisputeStatement_dispute_statements,
            GaddDisputeStatementData_addDisputeStatement_dispute_statementsBuilder>,
        _i2.GdisputeResultFragment_dispute_statements {
  GaddDisputeStatementData_addDisputeStatement_dispute_statements._();

  factory GaddDisputeStatementData_addDisputeStatement_dispute_statements(
          [void Function(
                  GaddDisputeStatementData_addDisputeStatement_dispute_statementsBuilder
                      b)
              updates]) =
      _$GaddDisputeStatementData_addDisputeStatement_dispute_statements;

  static void _initializeBuilder(
          GaddDisputeStatementData_addDisputeStatement_dispute_statementsBuilder
              b) =>
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
  static Serializer<
          GaddDisputeStatementData_addDisputeStatement_dispute_statements>
      get serializer =>
          _$gaddDisputeStatementDataAddDisputeStatementDisputeStatementsSerializer;

  @override
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GaddDisputeStatementData_addDisputeStatement_dispute_statements
            .serializer,
        this,
      ) as Map<String, dynamic>);

  static GaddDisputeStatementData_addDisputeStatement_dispute_statements?
      fromJson(Map<String, dynamic> json) => _i1.serializers.deserializeWith(
            GaddDisputeStatementData_addDisputeStatement_dispute_statements
                .serializer,
            json,
          );
}

abstract class GaddDisputeStatementData_addDisputeStatement_dispute_decisions
    implements
        Built<GaddDisputeStatementData_addDisputeStatement_dispute_decisions,
            GaddDisputeStatementData_addDisputeStatement_dispute_decisionsBuilder>,
        _i2.GdisputeResultFragment_dispute_decisions {
  GaddDisputeStatementData_addDisputeStatement_dispute_decisions._();

  factory GaddDisputeStatementData_addDisputeStatement_dispute_decisions(
          [void Function(
                  GaddDisputeStatementData_addDisputeStatement_dispute_decisionsBuilder
                      b)
              updates]) =
      _$GaddDisputeStatementData_addDisputeStatement_dispute_decisions;

  static void _initializeBuilder(
          GaddDisputeStatementData_addDisputeStatement_dispute_decisionsBuilder
              b) =>
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
  static Serializer<
          GaddDisputeStatementData_addDisputeStatement_dispute_decisions>
      get serializer =>
          _$gaddDisputeStatementDataAddDisputeStatementDisputeDecisionsSerializer;

  @override
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GaddDisputeStatementData_addDisputeStatement_dispute_decisions
            .serializer,
        this,
      ) as Map<String, dynamic>);

  static GaddDisputeStatementData_addDisputeStatement_dispute_decisions?
      fromJson(Map<String, dynamic> json) => _i1.serializers.deserializeWith(
            GaddDisputeStatementData_addDisputeStatement_dispute_decisions
                .serializer,
            json,
          );
}
