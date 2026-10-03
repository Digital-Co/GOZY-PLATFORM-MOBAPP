// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:gozy/graphql/__generated__/serializers.gql.dart' as _i1;

part 'update_claim_damage.var.gql.g.dart';

abstract class GupdateClaimVars
    implements Built<GupdateClaimVars, GupdateClaimVarsBuilder> {
  GupdateClaimVars._();

  factory GupdateClaimVars([void Function(GupdateClaimVarsBuilder b) updates]) =
      _$GupdateClaimVars;

  int get reservationId;
  double get claimAmount;
  String get claimReason;
  BuiltList<String?>? get claimImages;
  String get currency;
  static Serializer<GupdateClaimVars> get serializer =>
      _$gupdateClaimVarsSerializer;

  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GupdateClaimVars.serializer,
        this,
      ) as Map<String, dynamic>);

  static GupdateClaimVars? fromJson(Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GupdateClaimVars.serializer,
        json,
      );
}
