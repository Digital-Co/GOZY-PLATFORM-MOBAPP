// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:gozy/graphql/__generated__/serializers.gql.dart' as _i1;

part 'dispute_result_fragment.data.gql.g.dart';

abstract class GdisputeResultFragment {
  String get G__typename;
  int? get status;
  String? get errorMessage;
  GdisputeResultFragment_dispute? get dispute;
  Map<String, dynamic> toJson();
}

abstract class GdisputeResultFragment_dispute {
  String get G__typename;
  int? get id;
  int? get reservationId;
  String? get openedBy;
  String? get openedByRole;
  String? get reasonCode;
  String? get status;
  bool? get isActive;
  double? get depositAmount;
  String? get depositStatus;
  String? get createdAt;
  String? get closedAt;
  BuiltList<GdisputeResultFragment_dispute_statements?>? get statements;
  BuiltList<GdisputeResultFragment_dispute_decisions?>? get decisions;
  Map<String, dynamic> toJson();
}

abstract class GdisputeResultFragment_dispute_statements {
  String get G__typename;
  int? get id;
  int? get disputeId;
  String? get userId;
  String? get role;
  String? get content;
  BuiltList<int?>? get attachments;
  String? get createdAt;
  Map<String, dynamic> toJson();
}

abstract class GdisputeResultFragment_dispute_decisions {
  String get G__typename;
  int? get id;
  String? get type;
  double? get retainedAmount;
  double? get refundAmount;
  double? get requestedAmount;
  String? get currency;
  String? get motive;
  String? get createdAt;
  Map<String, dynamic> toJson();
}

abstract class GdisputeResultFragmentData
    implements
        Built<GdisputeResultFragmentData, GdisputeResultFragmentDataBuilder>,
        GdisputeResultFragment {
  GdisputeResultFragmentData._();

  factory GdisputeResultFragmentData(
          [void Function(GdisputeResultFragmentDataBuilder b) updates]) =
      _$GdisputeResultFragmentData;

  static void _initializeBuilder(GdisputeResultFragmentDataBuilder b) =>
      b..G__typename = 'DisputeResult';

  @override
  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  @override
  int? get status;
  @override
  String? get errorMessage;
  @override
  GdisputeResultFragmentData_dispute? get dispute;
  static Serializer<GdisputeResultFragmentData> get serializer =>
      _$gdisputeResultFragmentDataSerializer;

  @override
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GdisputeResultFragmentData.serializer,
        this,
      ) as Map<String, dynamic>);

  static GdisputeResultFragmentData? fromJson(Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GdisputeResultFragmentData.serializer,
        json,
      );
}

abstract class GdisputeResultFragmentData_dispute
    implements
        Built<GdisputeResultFragmentData_dispute,
            GdisputeResultFragmentData_disputeBuilder>,
        GdisputeResultFragment_dispute {
  GdisputeResultFragmentData_dispute._();

  factory GdisputeResultFragmentData_dispute(
      [void Function(GdisputeResultFragmentData_disputeBuilder b)
          updates]) = _$GdisputeResultFragmentData_dispute;

  static void _initializeBuilder(GdisputeResultFragmentData_disputeBuilder b) =>
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
  BuiltList<GdisputeResultFragmentData_dispute_statements?>? get statements;
  @override
  BuiltList<GdisputeResultFragmentData_dispute_decisions?>? get decisions;
  static Serializer<GdisputeResultFragmentData_dispute> get serializer =>
      _$gdisputeResultFragmentDataDisputeSerializer;

  @override
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GdisputeResultFragmentData_dispute.serializer,
        this,
      ) as Map<String, dynamic>);

  static GdisputeResultFragmentData_dispute? fromJson(
          Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GdisputeResultFragmentData_dispute.serializer,
        json,
      );
}

abstract class GdisputeResultFragmentData_dispute_statements
    implements
        Built<GdisputeResultFragmentData_dispute_statements,
            GdisputeResultFragmentData_dispute_statementsBuilder>,
        GdisputeResultFragment_dispute_statements {
  GdisputeResultFragmentData_dispute_statements._();

  factory GdisputeResultFragmentData_dispute_statements(
      [void Function(GdisputeResultFragmentData_dispute_statementsBuilder b)
          updates]) = _$GdisputeResultFragmentData_dispute_statements;

  static void _initializeBuilder(
          GdisputeResultFragmentData_dispute_statementsBuilder b) =>
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
  static Serializer<GdisputeResultFragmentData_dispute_statements>
      get serializer => _$gdisputeResultFragmentDataDisputeStatementsSerializer;

  @override
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GdisputeResultFragmentData_dispute_statements.serializer,
        this,
      ) as Map<String, dynamic>);

  static GdisputeResultFragmentData_dispute_statements? fromJson(
          Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GdisputeResultFragmentData_dispute_statements.serializer,
        json,
      );
}

abstract class GdisputeResultFragmentData_dispute_decisions
    implements
        Built<GdisputeResultFragmentData_dispute_decisions,
            GdisputeResultFragmentData_dispute_decisionsBuilder>,
        GdisputeResultFragment_dispute_decisions {
  GdisputeResultFragmentData_dispute_decisions._();

  factory GdisputeResultFragmentData_dispute_decisions(
      [void Function(GdisputeResultFragmentData_dispute_decisionsBuilder b)
          updates]) = _$GdisputeResultFragmentData_dispute_decisions;

  static void _initializeBuilder(
          GdisputeResultFragmentData_dispute_decisionsBuilder b) =>
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
  static Serializer<GdisputeResultFragmentData_dispute_decisions>
      get serializer => _$gdisputeResultFragmentDataDisputeDecisionsSerializer;

  @override
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GdisputeResultFragmentData_dispute_decisions.serializer,
        this,
      ) as Map<String, dynamic>);

  static GdisputeResultFragmentData_dispute_decisions? fromJson(
          Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GdisputeResultFragmentData_dispute_decisions.serializer,
        json,
      );
}
