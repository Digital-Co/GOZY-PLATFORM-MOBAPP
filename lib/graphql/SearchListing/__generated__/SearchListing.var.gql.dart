// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:gozy/graphql/__generated__/serializers.gql.dart' as _i1;

part 'SearchListing.var.gql.g.dart';

abstract class GSearchListingVars
    implements Built<GSearchListingVars, GSearchListingVarsBuilder> {
  GSearchListingVars._();

  factory GSearchListingVars(
          [void Function(GSearchListingVarsBuilder b) updates]) =
      _$GSearchListingVars;

  int? get personCapacity;
  int? get currentPage;
  String? get dates;
  double? get lat;
  double? get lng;
  BuiltList<int?>? get carFeatures;
  BuiltList<int?>? get carType;
  BuiltList<int?>? get carRules;
  BuiltList<int?>? get priceRange;
  String? get address;
  int? get make;
  int? get transmission;
  String? get bookingType;
  String? get currency;
  static Serializer<GSearchListingVars> get serializer =>
      _$gSearchListingVarsSerializer;

  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GSearchListingVars.serializer,
        this,
      ) as Map<String, dynamic>);

  static GSearchListingVars? fromJson(Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GSearchListingVars.serializer,
        json,
      );
}
