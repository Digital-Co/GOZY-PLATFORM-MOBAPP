// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:gozy/graphql/__generated__/serializers.gql.dart' as _i1;

part 'static_page_content.data.gql.g.dart';

abstract class GgetStaticPageContentData
    implements
        Built<GgetStaticPageContentData, GgetStaticPageContentDataBuilder> {
  GgetStaticPageContentData._();

  factory GgetStaticPageContentData(
          [void Function(GgetStaticPageContentDataBuilder b) updates]) =
      _$GgetStaticPageContentData;

  static void _initializeBuilder(GgetStaticPageContentDataBuilder b) =>
      b..G__typename = 'Query';

  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  GgetStaticPageContentData_getStaticPageContent? get getStaticPageContent;
  static Serializer<GgetStaticPageContentData> get serializer =>
      _$ggetStaticPageContentDataSerializer;

  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GgetStaticPageContentData.serializer,
        this,
      ) as Map<String, dynamic>);

  static GgetStaticPageContentData? fromJson(Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GgetStaticPageContentData.serializer,
        json,
      );
}

abstract class GgetStaticPageContentData_getStaticPageContent
    implements
        Built<GgetStaticPageContentData_getStaticPageContent,
            GgetStaticPageContentData_getStaticPageContentBuilder> {
  GgetStaticPageContentData_getStaticPageContent._();

  factory GgetStaticPageContentData_getStaticPageContent(
      [void Function(GgetStaticPageContentData_getStaticPageContentBuilder b)
          updates]) = _$GgetStaticPageContentData_getStaticPageContent;

  static void _initializeBuilder(
          GgetStaticPageContentData_getStaticPageContentBuilder b) =>
      b..G__typename = 'StaticPageCommonType';

  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  int? get status;
  String? get errorMessage;
  GgetStaticPageContentData_getStaticPageContent_result? get result;
  static Serializer<GgetStaticPageContentData_getStaticPageContent>
      get serializer =>
          _$ggetStaticPageContentDataGetStaticPageContentSerializer;

  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GgetStaticPageContentData_getStaticPageContent.serializer,
        this,
      ) as Map<String, dynamic>);

  static GgetStaticPageContentData_getStaticPageContent? fromJson(
          Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GgetStaticPageContentData_getStaticPageContent.serializer,
        json,
      );
}

abstract class GgetStaticPageContentData_getStaticPageContent_result
    implements
        Built<GgetStaticPageContentData_getStaticPageContent_result,
            GgetStaticPageContentData_getStaticPageContent_resultBuilder> {
  GgetStaticPageContentData_getStaticPageContent_result._();

  factory GgetStaticPageContentData_getStaticPageContent_result(
      [void Function(
              GgetStaticPageContentData_getStaticPageContent_resultBuilder b)
          updates]) = _$GgetStaticPageContentData_getStaticPageContent_result;

  static void _initializeBuilder(
          GgetStaticPageContentData_getStaticPageContent_resultBuilder b) =>
      b..G__typename = 'StaticPageType';

  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  int? get id;
  String? get pageName;
  String? get metaTitle;
  String? get metaDescription;
  String? get content;
  String? get createdAt;
  static Serializer<GgetStaticPageContentData_getStaticPageContent_result>
      get serializer =>
          _$ggetStaticPageContentDataGetStaticPageContentResultSerializer;

  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GgetStaticPageContentData_getStaticPageContent_result.serializer,
        this,
      ) as Map<String, dynamic>);

  static GgetStaticPageContentData_getStaticPageContent_result? fromJson(
          Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GgetStaticPageContentData_getStaticPageContent_result.serializer,
        json,
      );
}
