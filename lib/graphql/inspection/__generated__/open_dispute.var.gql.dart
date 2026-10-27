// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:gozy/graphql/__generated__/serializers.gql.dart' as _i1;

part 'open_dispute.var.gql.g.dart';

abstract class GopenDisputeVars
    implements Built<GopenDisputeVars, GopenDisputeVarsBuilder> {
  GopenDisputeVars._();

  factory GopenDisputeVars([void Function(GopenDisputeVarsBuilder b) updates]) =
      _$GopenDisputeVars;

  int get reservationId;
  String get reasonCode;
  String get comment;
  static Serializer<GopenDisputeVars> get serializer =>
      _$gopenDisputeVarsSerializer;

  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GopenDisputeVars.serializer,
        this,
      ) as Map<String, dynamic>);

  static GopenDisputeVars? fromJson(Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GopenDisputeVars.serializer,
        json,
      );
}
