// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:gozy/graphql/__generated__/serializers.gql.dart' as _i1;

part 'delete_listing_option.var.gql.g.dart';

abstract class GdeleteListingOptionVars
    implements
        Built<GdeleteListingOptionVars, GdeleteListingOptionVarsBuilder> {
  GdeleteListingOptionVars._();

  factory GdeleteListingOptionVars(
          [void Function(GdeleteListingOptionVarsBuilder b) updates]) =
      _$GdeleteListingOptionVars;

  int get listId;
  String get slot;
  static Serializer<GdeleteListingOptionVars> get serializer =>
      _$gdeleteListingOptionVarsSerializer;

  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GdeleteListingOptionVars.serializer,
        this,
      ) as Map<String, dynamic>);

  static GdeleteListingOptionVars? fromJson(Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GdeleteListingOptionVars.serializer,
        json,
      );
}
