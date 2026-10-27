// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:gozy/graphql/__generated__/serializers.gql.dart' as _i1;

part 'add_dispute_statement.var.gql.g.dart';

abstract class GaddDisputeStatementVars
    implements
        Built<GaddDisputeStatementVars, GaddDisputeStatementVarsBuilder> {
  GaddDisputeStatementVars._();

  factory GaddDisputeStatementVars(
          [void Function(GaddDisputeStatementVarsBuilder b) updates]) =
      _$GaddDisputeStatementVars;

  int get disputeId;
  String get content;
  BuiltList<int>? get attachments;
  static Serializer<GaddDisputeStatementVars> get serializer =>
      _$gaddDisputeStatementVarsSerializer;

  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GaddDisputeStatementVars.serializer,
        this,
      ) as Map<String, dynamic>);

  static GaddDisputeStatementVars? fromJson(Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GaddDisputeStatementVars.serializer,
        json,
      );
}
