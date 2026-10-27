// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:gozy/graphql/__generated__/serializers.gql.dart' as _i1;

part 'get_listing_options.var.gql.g.dart';

abstract class GgetListingOptionsVars
    implements Built<GgetListingOptionsVars, GgetListingOptionsVarsBuilder> {
  GgetListingOptionsVars._();

  factory GgetListingOptionsVars(
          [void Function(GgetListingOptionsVarsBuilder b) updates]) =
      _$GgetListingOptionsVars;

  int get listId;
  static Serializer<GgetListingOptionsVars> get serializer =>
      _$ggetListingOptionsVarsSerializer;

  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GgetListingOptionsVars.serializer,
        this,
      ) as Map<String, dynamic>);

  static GgetListingOptionsVars? fromJson(Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GgetListingOptionsVars.serializer,
        json,
      );
}
