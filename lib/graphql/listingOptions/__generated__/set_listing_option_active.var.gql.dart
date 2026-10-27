// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:gozy/graphql/__generated__/serializers.gql.dart' as _i1;

part 'set_listing_option_active.var.gql.g.dart';

abstract class GsetListingOptionActiveVars
    implements
        Built<GsetListingOptionActiveVars, GsetListingOptionActiveVarsBuilder> {
  GsetListingOptionActiveVars._();

  factory GsetListingOptionActiveVars(
          [void Function(GsetListingOptionActiveVarsBuilder b) updates]) =
      _$GsetListingOptionActiveVars;

  int get listId;
  String get slot;
  bool get isActive;
  static Serializer<GsetListingOptionActiveVars> get serializer =>
      _$gsetListingOptionActiveVarsSerializer;

  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GsetListingOptionActiveVars.serializer,
        this,
      ) as Map<String, dynamic>);

  static GsetListingOptionActiveVars? fromJson(Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GsetListingOptionActiveVars.serializer,
        json,
      );
}
