// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:gozy/graphql/__generated__/serializers.gql.dart' as _i1;

part 'getWhyHostData.data.gql.g.dart';

abstract class GgetWhyHostDataData
    implements Built<GgetWhyHostDataData, GgetWhyHostDataDataBuilder> {
  GgetWhyHostDataData._();

  factory GgetWhyHostDataData(
          [void Function(GgetWhyHostDataDataBuilder b) updates]) =
      _$GgetWhyHostDataData;

  static void _initializeBuilder(GgetWhyHostDataDataBuilder b) =>
      b..G__typename = 'Query';

  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  GgetWhyHostDataData_getWhyHostData? get getWhyHostData;
  static Serializer<GgetWhyHostDataData> get serializer =>
      _$ggetWhyHostDataDataSerializer;

  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GgetWhyHostDataData.serializer,
        this,
      ) as Map<String, dynamic>);

  static GgetWhyHostDataData? fromJson(Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GgetWhyHostDataData.serializer,
        json,
      );
}

abstract class GgetWhyHostDataData_getWhyHostData
    implements
        Built<GgetWhyHostDataData_getWhyHostData,
            GgetWhyHostDataData_getWhyHostDataBuilder> {
  GgetWhyHostDataData_getWhyHostData._();

  factory GgetWhyHostDataData_getWhyHostData(
      [void Function(GgetWhyHostDataData_getWhyHostDataBuilder b)
          updates]) = _$GgetWhyHostDataData_getWhyHostData;

  static void _initializeBuilder(GgetWhyHostDataData_getWhyHostDataBuilder b) =>
      b..G__typename = 'WhyHostCommonType';

  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  int? get status;
  String? get errorMessage;
  BuiltList<GgetWhyHostDataData_getWhyHostData_results?>? get results;
  static Serializer<GgetWhyHostDataData_getWhyHostData> get serializer =>
      _$ggetWhyHostDataDataGetWhyHostDataSerializer;

  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GgetWhyHostDataData_getWhyHostData.serializer,
        this,
      ) as Map<String, dynamic>);

  static GgetWhyHostDataData_getWhyHostData? fromJson(
          Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GgetWhyHostDataData_getWhyHostData.serializer,
        json,
      );
}

abstract class GgetWhyHostDataData_getWhyHostData_results
    implements
        Built<GgetWhyHostDataData_getWhyHostData_results,
            GgetWhyHostDataData_getWhyHostData_resultsBuilder> {
  GgetWhyHostDataData_getWhyHostData_results._();

  factory GgetWhyHostDataData_getWhyHostData_results(
      [void Function(GgetWhyHostDataData_getWhyHostData_resultsBuilder b)
          updates]) = _$GgetWhyHostDataData_getWhyHostData_results;

  static void _initializeBuilder(
          GgetWhyHostDataData_getWhyHostData_resultsBuilder b) =>
      b..G__typename = 'WhyHostType';

  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  int? get id;
  String? get imageName;
  String? get title;
  String? get buttonLabel;
  static Serializer<GgetWhyHostDataData_getWhyHostData_results>
      get serializer => _$ggetWhyHostDataDataGetWhyHostDataResultsSerializer;

  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GgetWhyHostDataData_getWhyHostData_results.serializer,
        this,
      ) as Map<String, dynamic>);

  static GgetWhyHostDataData_getWhyHostData_results? fromJson(
          Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GgetWhyHostDataData_getWhyHostData_results.serializer,
        json,
      );
}
