// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:gozy/graphql/__generated__/serializers.gql.dart' as _i1;

part 'explore_list.var.gql.g.dart';

abstract class GgetExploreListingsVars
    implements Built<GgetExploreListingsVars, GgetExploreListingsVarsBuilder> {
  GgetExploreListingsVars._();

  factory GgetExploreListingsVars(
          [void Function(GgetExploreListingsVarsBuilder b) updates]) =
      _$GgetExploreListingsVars;

  static Serializer<GgetExploreListingsVars> get serializer =>
      _$ggetExploreListingsVarsSerializer;

  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GgetExploreListingsVars.serializer,
        this,
      ) as Map<String, dynamic>);

  static GgetExploreListingsVars? fromJson(Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GgetExploreListingsVars.serializer,
        json,
      );
}
