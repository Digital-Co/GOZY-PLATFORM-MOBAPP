// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:gozy/graphql/__generated__/serializers.gql.dart' as _i1;

part 'sharefeedback.data.gql.g.dart';

abstract class GsendUserFeedbackData
    implements Built<GsendUserFeedbackData, GsendUserFeedbackDataBuilder> {
  GsendUserFeedbackData._();

  factory GsendUserFeedbackData(
          [void Function(GsendUserFeedbackDataBuilder b) updates]) =
      _$GsendUserFeedbackData;

  static void _initializeBuilder(GsendUserFeedbackDataBuilder b) =>
      b..G__typename = 'Mutation';

  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  GsendUserFeedbackData_userFeedback? get userFeedback;
  static Serializer<GsendUserFeedbackData> get serializer =>
      _$gsendUserFeedbackDataSerializer;

  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GsendUserFeedbackData.serializer,
        this,
      ) as Map<String, dynamic>);

  static GsendUserFeedbackData? fromJson(Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GsendUserFeedbackData.serializer,
        json,
      );
}

abstract class GsendUserFeedbackData_userFeedback
    implements
        Built<GsendUserFeedbackData_userFeedback,
            GsendUserFeedbackData_userFeedbackBuilder> {
  GsendUserFeedbackData_userFeedback._();

  factory GsendUserFeedbackData_userFeedback(
      [void Function(GsendUserFeedbackData_userFeedbackBuilder b)
          updates]) = _$GsendUserFeedbackData_userFeedback;

  static void _initializeBuilder(GsendUserFeedbackData_userFeedbackBuilder b) =>
      b..G__typename = 'ReportUserResult';

  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  int? get status;
  String? get errorMessage;
  static Serializer<GsendUserFeedbackData_userFeedback> get serializer =>
      _$gsendUserFeedbackDataUserFeedbackSerializer;

  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GsendUserFeedbackData_userFeedback.serializer,
        this,
      ) as Map<String, dynamic>);

  static GsendUserFeedbackData_userFeedback? fromJson(
          Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GsendUserFeedbackData_userFeedback.serializer,
        json,
      );
}
