// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:gozy/graphql/__generated__/serializers.gql.dart' as _i1;

part 'documentList.var.gql.g.dart';

abstract class GShowDocumentListVars
    implements Built<GShowDocumentListVars, GShowDocumentListVarsBuilder> {
  GShowDocumentListVars._();

  factory GShowDocumentListVars(
          [void Function(GShowDocumentListVarsBuilder b) updates]) =
      _$GShowDocumentListVars;

  static Serializer<GShowDocumentListVars> get serializer =>
      _$gShowDocumentListVarsSerializer;

  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GShowDocumentListVars.serializer,
        this,
      ) as Map<String, dynamic>);

  static GShowDocumentListVars? fromJson(Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GShowDocumentListVars.serializer,
        json,
      );
}

abstract class GRemoveDocumentsVars
    implements Built<GRemoveDocumentsVars, GRemoveDocumentsVarsBuilder> {
  GRemoveDocumentsVars._();

  factory GRemoveDocumentsVars(
          [void Function(GRemoveDocumentsVarsBuilder b) updates]) =
      _$GRemoveDocumentsVars;

  String? get fileName;
  static Serializer<GRemoveDocumentsVars> get serializer =>
      _$gRemoveDocumentsVarsSerializer;

  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GRemoveDocumentsVars.serializer,
        this,
      ) as Map<String, dynamic>);

  static GRemoveDocumentsVars? fromJson(Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GRemoveDocumentsVars.serializer,
        json,
      );
}
