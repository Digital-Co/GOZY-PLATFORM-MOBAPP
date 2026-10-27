// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:gozy/graphql/__generated__/serializers.gql.dart' as _i1;
import 'package:gozy/graphql/inspection/__generated__/dispute_result_fragment.data.gql.dart'
    as _i2;

part 'open_dispute.data.gql.g.dart';

abstract class GopenDisputeData
    implements Built<GopenDisputeData, GopenDisputeDataBuilder> {
  GopenDisputeData._();

  factory GopenDisputeData([void Function(GopenDisputeDataBuilder b) updates]) =
      _$GopenDisputeData;

  static void _initializeBuilder(GopenDisputeDataBuilder b) =>
      b..G__typename = 'Mutation';

  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  GopenDisputeData_openDispute? get openDispute;
  static Serializer<GopenDisputeData> get serializer =>
      _$gopenDisputeDataSerializer;

  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GopenDisputeData.serializer,
        this,
      ) as Map<String, dynamic>);

  static GopenDisputeData? fromJson(Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GopenDisputeData.serializer,
        json,
      );
}

abstract class GopenDisputeData_openDispute
    implements
        Built<GopenDisputeData_openDispute,
            GopenDisputeData_openDisputeBuilder>,
        _i2.GdisputeResultFragment {
  GopenDisputeData_openDispute._();

  factory GopenDisputeData_openDispute(
          [void Function(GopenDisputeData_openDisputeBuilder b) updates]) =
      _$GopenDisputeData_openDispute;

  static void _initializeBuilder(GopenDisputeData_openDisputeBuilder b) =>
      b..G__typename = 'DisputeResult';

  @override
  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  @override
  int? get status;
  @override
  String? get errorMessage;
  @override
  GopenDisputeData_openDispute_dispute? get dispute;
  static Serializer<GopenDisputeData_openDispute> get serializer =>
      _$gopenDisputeDataOpenDisputeSerializer;

  @override
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GopenDisputeData_openDispute.serializer,
        this,
      ) as Map<String, dynamic>);

  static GopenDisputeData_openDispute? fromJson(Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GopenDisputeData_openDispute.serializer,
        json,
      );
}

abstract class GopenDisputeData_openDispute_dispute
    implements
        Built<GopenDisputeData_openDispute_dispute,
            GopenDisputeData_openDispute_disputeBuilder>,
        _i2.GdisputeResultFragment_dispute {
  GopenDisputeData_openDispute_dispute._();

  factory GopenDisputeData_openDispute_dispute(
      [void Function(GopenDisputeData_openDispute_disputeBuilder b)
          updates]) = _$GopenDisputeData_openDispute_dispute;

  static void _initializeBuilder(
          GopenDisputeData_openDispute_disputeBuilder b) =>
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
  BuiltList<GopenDisputeData_openDispute_dispute_statements?>? get statements;
  @override
  BuiltList<GopenDisputeData_openDispute_dispute_decisions?>? get decisions;
  static Serializer<GopenDisputeData_openDispute_dispute> get serializer =>
      _$gopenDisputeDataOpenDisputeDisputeSerializer;

  @override
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GopenDisputeData_openDispute_dispute.serializer,
        this,
      ) as Map<String, dynamic>);

  static GopenDisputeData_openDispute_dispute? fromJson(
          Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GopenDisputeData_openDispute_dispute.serializer,
        json,
      );
}

abstract class GopenDisputeData_openDispute_dispute_statements
    implements
        Built<GopenDisputeData_openDispute_dispute_statements,
            GopenDisputeData_openDispute_dispute_statementsBuilder>,
        _i2.GdisputeResultFragment_dispute_statements {
  GopenDisputeData_openDispute_dispute_statements._();

  factory GopenDisputeData_openDispute_dispute_statements(
      [void Function(GopenDisputeData_openDispute_dispute_statementsBuilder b)
          updates]) = _$GopenDisputeData_openDispute_dispute_statements;

  static void _initializeBuilder(
          GopenDisputeData_openDispute_dispute_statementsBuilder b) =>
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
  static Serializer<GopenDisputeData_openDispute_dispute_statements>
      get serializer =>
          _$gopenDisputeDataOpenDisputeDisputeStatementsSerializer;

  @override
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GopenDisputeData_openDispute_dispute_statements.serializer,
        this,
      ) as Map<String, dynamic>);

  static GopenDisputeData_openDispute_dispute_statements? fromJson(
          Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GopenDisputeData_openDispute_dispute_statements.serializer,
        json,
      );
}

abstract class GopenDisputeData_openDispute_dispute_decisions
    implements
        Built<GopenDisputeData_openDispute_dispute_decisions,
            GopenDisputeData_openDispute_dispute_decisionsBuilder>,
        _i2.GdisputeResultFragment_dispute_decisions {
  GopenDisputeData_openDispute_dispute_decisions._();

  factory GopenDisputeData_openDispute_dispute_decisions(
      [void Function(GopenDisputeData_openDispute_dispute_decisionsBuilder b)
          updates]) = _$GopenDisputeData_openDispute_dispute_decisions;

  static void _initializeBuilder(
          GopenDisputeData_openDispute_dispute_decisionsBuilder b) =>
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
  static Serializer<GopenDisputeData_openDispute_dispute_decisions>
      get serializer => _$gopenDisputeDataOpenDisputeDisputeDecisionsSerializer;

  @override
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GopenDisputeData_openDispute_dispute_decisions.serializer,
        this,
      ) as Map<String, dynamic>);

  static GopenDisputeData_openDispute_dispute_decisions? fromJson(
          Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GopenDisputeData_openDispute_dispute_decisions.serializer,
        json,
      );
}
