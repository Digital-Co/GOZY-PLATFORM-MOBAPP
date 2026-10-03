// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:gozy/graphql/__generated__/serializers.gql.dart' as _i1;

part 'static_page_content.var.gql.g.dart';

abstract class GgetStaticPageContentVars
    implements
        Built<GgetStaticPageContentVars, GgetStaticPageContentVarsBuilder> {
  GgetStaticPageContentVars._();

  factory GgetStaticPageContentVars(
          [void Function(GgetStaticPageContentVarsBuilder b) updates]) =
      _$GgetStaticPageContentVars;

  int? get id;
  static Serializer<GgetStaticPageContentVars> get serializer =>
      _$ggetStaticPageContentVarsSerializer;

  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GgetStaticPageContentVars.serializer,
        this,
      ) as Map<String, dynamic>);

  static GgetStaticPageContentVars? fromJson(Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GgetStaticPageContentVars.serializer,
        json,
      );
}
