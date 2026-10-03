// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:gozy/graphql/__generated__/serializers.gql.dart' as _i1;

part 'Inbox.var.gql.g.dart';

abstract class GgetAllThreadsVars
    implements Built<GgetAllThreadsVars, GgetAllThreadsVarsBuilder> {
  GgetAllThreadsVars._();

  factory GgetAllThreadsVars(
          [void Function(GgetAllThreadsVarsBuilder b) updates]) =
      _$GgetAllThreadsVars;

  String? get threadType;
  int? get threadId;
  int? get currentPage;
  static Serializer<GgetAllThreadsVars> get serializer =>
      _$ggetAllThreadsVarsSerializer;

  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GgetAllThreadsVars.serializer,
        this,
      ) as Map<String, dynamic>);

  static GgetAllThreadsVars? fromJson(Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GgetAllThreadsVars.serializer,
        json,
      );
}

abstract class GgetUnReadCountVars
    implements Built<GgetUnReadCountVars, GgetUnReadCountVarsBuilder> {
  GgetUnReadCountVars._();

  factory GgetUnReadCountVars(
          [void Function(GgetUnReadCountVarsBuilder b) updates]) =
      _$GgetUnReadCountVars;

  static Serializer<GgetUnReadCountVars> get serializer =>
      _$ggetUnReadCountVarsSerializer;

  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GgetUnReadCountVars.serializer,
        this,
      ) as Map<String, dynamic>);

  static GgetUnReadCountVars? fromJson(Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GgetUnReadCountVars.serializer,
        json,
      );
}

abstract class GgetThreadsVars
    implements Built<GgetThreadsVars, GgetThreadsVarsBuilder> {
  GgetThreadsVars._();

  factory GgetThreadsVars([void Function(GgetThreadsVarsBuilder b) updates]) =
      _$GgetThreadsVars;

  String? get threadType;
  int? get threadId;
  int? get currentPage;
  static Serializer<GgetThreadsVars> get serializer =>
      _$ggetThreadsVarsSerializer;

  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GgetThreadsVars.serializer,
        this,
      ) as Map<String, dynamic>);

  static GgetThreadsVars? fromJson(Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GgetThreadsVars.serializer,
        json,
      );
}

abstract class GsendMessageVars
    implements Built<GsendMessageVars, GsendMessageVarsBuilder> {
  GsendMessageVars._();

  factory GsendMessageVars([void Function(GsendMessageVarsBuilder b) updates]) =
      _$GsendMessageVars;

  int get threadId;
  String? get content;
  String? get type;
  String? get startDate;
  String? get endDate;
  int? get personCapacity;
  double? get startTime;
  double? get endTime;
  static Serializer<GsendMessageVars> get serializer =>
      _$gsendMessageVarsSerializer;

  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GsendMessageVars.serializer,
        this,
      ) as Map<String, dynamic>);

  static GsendMessageVars? fromJson(Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GsendMessageVars.serializer,
        json,
      );
}

abstract class GreadMessageVars
    implements Built<GreadMessageVars, GreadMessageVarsBuilder> {
  GreadMessageVars._();

  factory GreadMessageVars([void Function(GreadMessageVarsBuilder b) updates]) =
      _$GreadMessageVars;

  int get threadId;
  static Serializer<GreadMessageVars> get serializer =>
      _$greadMessageVarsSerializer;

  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GreadMessageVars.serializer,
        this,
      ) as Map<String, dynamic>);

  static GreadMessageVars? fromJson(Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GreadMessageVars.serializer,
        json,
      );
}

abstract class GgetUnReadThreadCountVars
    implements
        Built<GgetUnReadThreadCountVars, GgetUnReadThreadCountVarsBuilder> {
  GgetUnReadThreadCountVars._();

  factory GgetUnReadThreadCountVars(
          [void Function(GgetUnReadThreadCountVarsBuilder b) updates]) =
      _$GgetUnReadThreadCountVars;

  int? get threadId;
  static Serializer<GgetUnReadThreadCountVars> get serializer =>
      _$ggetUnReadThreadCountVarsSerializer;

  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GgetUnReadThreadCountVars.serializer,
        this,
      ) as Map<String, dynamic>);

  static GgetUnReadThreadCountVars? fromJson(Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GgetUnReadThreadCountVars.serializer,
        json,
      );
}
