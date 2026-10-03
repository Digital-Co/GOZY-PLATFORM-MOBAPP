// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:gozy/graphql/__generated__/serializers.gql.dart' as _i1;

part 'sharefeedback.var.gql.g.dart';

abstract class GsendUserFeedbackVars
    implements Built<GsendUserFeedbackVars, GsendUserFeedbackVarsBuilder> {
  GsendUserFeedbackVars._();

  factory GsendUserFeedbackVars(
          [void Function(GsendUserFeedbackVarsBuilder b) updates]) =
      _$GsendUserFeedbackVars;

  String? get type;
  String? get message;
  static Serializer<GsendUserFeedbackVars> get serializer =>
      _$gsendUserFeedbackVarsSerializer;

  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GsendUserFeedbackVars.serializer,
        this,
      ) as Map<String, dynamic>);

  static GsendUserFeedbackVars? fromJson(Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GsendUserFeedbackVars.serializer,
        json,
      );
}
