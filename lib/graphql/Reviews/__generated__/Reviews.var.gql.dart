// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:gozy/graphql/__generated__/serializers.gql.dart' as _i1;

part 'Reviews.var.gql.g.dart';

abstract class GgetUserReviewsVars
    implements Built<GgetUserReviewsVars, GgetUserReviewsVarsBuilder> {
  GgetUserReviewsVars._();

  factory GgetUserReviewsVars(
          [void Function(GgetUserReviewsVarsBuilder b) updates]) =
      _$GgetUserReviewsVars;

  int? get currentPage;
  String? get ownerType;
  String? get searchKey;
  String? get reviewType;
  static Serializer<GgetUserReviewsVars> get serializer =>
      _$ggetUserReviewsVarsSerializer;

  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GgetUserReviewsVars.serializer,
        this,
      ) as Map<String, dynamic>);

  static GgetUserReviewsVars? fromJson(Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GgetUserReviewsVars.serializer,
        json,
      );
}

abstract class GuserReviewsVars
    implements Built<GuserReviewsVars, GuserReviewsVarsBuilder> {
  GuserReviewsVars._();

  factory GuserReviewsVars([void Function(GuserReviewsVarsBuilder b) updates]) =
      _$GuserReviewsVars;

  String? get ownerType;
  int? get currentPage;
  int? get profileId;
  static Serializer<GuserReviewsVars> get serializer =>
      _$guserReviewsVarsSerializer;

  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GuserReviewsVars.serializer,
        this,
      ) as Map<String, dynamic>);

  static GuserReviewsVars? fromJson(Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GuserReviewsVars.serializer,
        json,
      );
}

abstract class GgetPropertyReviewsVars
    implements Built<GgetPropertyReviewsVars, GgetPropertyReviewsVarsBuilder> {
  GgetPropertyReviewsVars._();

  factory GgetPropertyReviewsVars(
          [void Function(GgetPropertyReviewsVarsBuilder b) updates]) =
      _$GgetPropertyReviewsVars;

  int get currentPage;
  int get listId;
  static Serializer<GgetPropertyReviewsVars> get serializer =>
      _$ggetPropertyReviewsVarsSerializer;

  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GgetPropertyReviewsVars.serializer,
        this,
      ) as Map<String, dynamic>);

  static GgetPropertyReviewsVars? fromJson(Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GgetPropertyReviewsVars.serializer,
        json,
      );
}

abstract class GgetPendingUserReviewsVars
    implements
        Built<GgetPendingUserReviewsVars, GgetPendingUserReviewsVarsBuilder> {
  GgetPendingUserReviewsVars._();

  factory GgetPendingUserReviewsVars(
          [void Function(GgetPendingUserReviewsVarsBuilder b) updates]) =
      _$GgetPendingUserReviewsVars;

  int? get currentPage;
  static Serializer<GgetPendingUserReviewsVars> get serializer =>
      _$ggetPendingUserReviewsVarsSerializer;

  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GgetPendingUserReviewsVars.serializer,
        this,
      ) as Map<String, dynamic>);

  static GgetPendingUserReviewsVars? fromJson(Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GgetPendingUserReviewsVars.serializer,
        json,
      );
}

abstract class GgetPendingUserReviewVars
    implements
        Built<GgetPendingUserReviewVars, GgetPendingUserReviewVarsBuilder> {
  GgetPendingUserReviewVars._();

  factory GgetPendingUserReviewVars(
          [void Function(GgetPendingUserReviewVarsBuilder b) updates]) =
      _$GgetPendingUserReviewVars;

  int get reservationId;
  static Serializer<GgetPendingUserReviewVars> get serializer =>
      _$ggetPendingUserReviewVarsSerializer;

  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GgetPendingUserReviewVars.serializer,
        this,
      ) as Map<String, dynamic>);

  static GgetPendingUserReviewVars? fromJson(Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GgetPendingUserReviewVars.serializer,
        json,
      );
}

abstract class GwriteUserReviewVars
    implements Built<GwriteUserReviewVars, GwriteUserReviewVarsBuilder> {
  GwriteUserReviewVars._();

  factory GwriteUserReviewVars(
          [void Function(GwriteUserReviewVarsBuilder b) updates]) =
      _$GwriteUserReviewVars;

  int get reservationId;
  int get listId;
  String get reviewContent;
  double get rating;
  String get receiverId;
  static Serializer<GwriteUserReviewVars> get serializer =>
      _$gwriteUserReviewVarsSerializer;

  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GwriteUserReviewVars.serializer,
        this,
      ) as Map<String, dynamic>);

  static GwriteUserReviewVars? fromJson(Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GwriteUserReviewVars.serializer,
        json,
      );
}
