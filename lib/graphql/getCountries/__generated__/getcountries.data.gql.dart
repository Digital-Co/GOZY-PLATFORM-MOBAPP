// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:gozy/graphql/__generated__/serializers.gql.dart' as _i1;

part 'getcountries.data.gql.g.dart';

abstract class GgetCountriesData
    implements Built<GgetCountriesData, GgetCountriesDataBuilder> {
  GgetCountriesData._();

  factory GgetCountriesData(
          [void Function(GgetCountriesDataBuilder b) updates]) =
      _$GgetCountriesData;

  static void _initializeBuilder(GgetCountriesDataBuilder b) =>
      b..G__typename = 'Query';

  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  GgetCountriesData_getCountries? get getCountries;
  static Serializer<GgetCountriesData> get serializer =>
      _$ggetCountriesDataSerializer;

  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GgetCountriesData.serializer,
        this,
      ) as Map<String, dynamic>);

  static GgetCountriesData? fromJson(Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GgetCountriesData.serializer,
        json,
      );
}

abstract class GgetCountriesData_getCountries
    implements
        Built<GgetCountriesData_getCountries,
            GgetCountriesData_getCountriesBuilder> {
  GgetCountriesData_getCountries._();

  factory GgetCountriesData_getCountries(
          [void Function(GgetCountriesData_getCountriesBuilder b) updates]) =
      _$GgetCountriesData_getCountries;

  static void _initializeBuilder(GgetCountriesData_getCountriesBuilder b) =>
      b..G__typename = 'AllCountry';

  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  String? get errorMessage;
  int? get status;
  BuiltList<GgetCountriesData_getCountries_results?>? get results;
  static Serializer<GgetCountriesData_getCountries> get serializer =>
      _$ggetCountriesDataGetCountriesSerializer;

  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GgetCountriesData_getCountries.serializer,
        this,
      ) as Map<String, dynamic>);

  static GgetCountriesData_getCountries? fromJson(Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GgetCountriesData_getCountries.serializer,
        json,
      );
}

abstract class GgetCountriesData_getCountries_results
    implements
        Built<GgetCountriesData_getCountries_results,
            GgetCountriesData_getCountries_resultsBuilder> {
  GgetCountriesData_getCountries_results._();

  factory GgetCountriesData_getCountries_results(
      [void Function(GgetCountriesData_getCountries_resultsBuilder b)
          updates]) = _$GgetCountriesData_getCountries_results;

  static void _initializeBuilder(
          GgetCountriesData_getCountries_resultsBuilder b) =>
      b..G__typename = 'Country';

  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  int? get id;
  bool? get isEnable;
  String? get countryCode;
  String? get countryName;
  String? get dialCode;
  static Serializer<GgetCountriesData_getCountries_results> get serializer =>
      _$ggetCountriesDataGetCountriesResultsSerializer;

  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GgetCountriesData_getCountries_results.serializer,
        this,
      ) as Map<String, dynamic>);

  static GgetCountriesData_getCountries_results? fromJson(
          Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GgetCountriesData_getCountries_results.serializer,
        json,
      );
}
