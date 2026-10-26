// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:gozy/graphql/__generated__/serializers.gql.dart' as _i1;

part 'save_listing_option.var.gql.g.dart';

abstract class GsaveListingOptionVars
    implements Built<GsaveListingOptionVars, GsaveListingOptionVarsBuilder> {
  GsaveListingOptionVars._();

  factory GsaveListingOptionVars(
          [void Function(GsaveListingOptionVarsBuilder b) updates]) =
      _$GsaveListingOptionVars;

  int get listId;
  String? get slot;
  String? get label;
  String? get description;
  double get price;
  String? get billingMode;
  String? get icon;
  bool? get isActive;
  static Serializer<GsaveListingOptionVars> get serializer =>
      _$gsaveListingOptionVarsSerializer;

  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GsaveListingOptionVars.serializer,
        this,
      ) as Map<String, dynamic>);

  static GsaveListingOptionVars? fromJson(Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GsaveListingOptionVars.serializer,
        json,
      );
}
