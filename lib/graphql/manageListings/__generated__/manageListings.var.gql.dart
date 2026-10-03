// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:gozy/graphql/__generated__/serializers.gql.dart' as _i1;

part 'manageListings.var.gql.g.dart';

abstract class GManageListingsVars
    implements Built<GManageListingsVars, GManageListingsVarsBuilder> {
  GManageListingsVars._();

  factory GManageListingsVars(
          [void Function(GManageListingsVarsBuilder b) updates]) =
      _$GManageListingsVars;

  int? get currentPage;
  String? get requestType;
  static Serializer<GManageListingsVars> get serializer =>
      _$gManageListingsVarsSerializer;

  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GManageListingsVars.serializer,
        this,
      ) as Map<String, dynamic>);

  static GManageListingsVars? fromJson(Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GManageListingsVars.serializer,
        json,
      );
}

abstract class GlistBlockedDatesVars
    implements Built<GlistBlockedDatesVars, GlistBlockedDatesVarsBuilder> {
  GlistBlockedDatesVars._();

  factory GlistBlockedDatesVars(
          [void Function(GlistBlockedDatesVarsBuilder b) updates]) =
      _$GlistBlockedDatesVars;

  int get listId;
  static Serializer<GlistBlockedDatesVars> get serializer =>
      _$glistBlockedDatesVarsSerializer;

  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GlistBlockedDatesVars.serializer,
        this,
      ) as Map<String, dynamic>);

  static GlistBlockedDatesVars? fromJson(Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GlistBlockedDatesVars.serializer,
        json,
      );
}

abstract class GUpdateListBlockedDatesVars
    implements
        Built<GUpdateListBlockedDatesVars, GUpdateListBlockedDatesVarsBuilder> {
  GUpdateListBlockedDatesVars._();

  factory GUpdateListBlockedDatesVars(
          [void Function(GUpdateListBlockedDatesVarsBuilder b) updates]) =
      _$GUpdateListBlockedDatesVars;

  int get listId;
  BuiltList<String?>? get blockedDates;
  static Serializer<GUpdateListBlockedDatesVars> get serializer =>
      _$gUpdateListBlockedDatesVarsSerializer;

  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GUpdateListBlockedDatesVars.serializer,
        this,
      ) as Map<String, dynamic>);

  static GUpdateListBlockedDatesVars? fromJson(Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GUpdateListBlockedDatesVars.serializer,
        json,
      );
}

abstract class GRemoveListingVars
    implements Built<GRemoveListingVars, GRemoveListingVarsBuilder> {
  GRemoveListingVars._();

  factory GRemoveListingVars(
          [void Function(GRemoveListingVarsBuilder b) updates]) =
      _$GRemoveListingVars;

  int get listId;
  static Serializer<GRemoveListingVars> get serializer =>
      _$gRemoveListingVarsSerializer;

  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GRemoveListingVars.serializer,
        this,
      ) as Map<String, dynamic>);

  static GRemoveListingVars? fromJson(Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GRemoveListingVars.serializer,
        json,
      );
}

abstract class GRemoveMultiPhotosVars
    implements Built<GRemoveMultiPhotosVars, GRemoveMultiPhotosVarsBuilder> {
  GRemoveMultiPhotosVars._();

  factory GRemoveMultiPhotosVars(
          [void Function(GRemoveMultiPhotosVarsBuilder b) updates]) =
      _$GRemoveMultiPhotosVars;

  String? get photos;
  static Serializer<GRemoveMultiPhotosVars> get serializer =>
      _$gRemoveMultiPhotosVarsSerializer;

  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GRemoveMultiPhotosVars.serializer,
        this,
      ) as Map<String, dynamic>);

  static GRemoveMultiPhotosVars? fromJson(Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GRemoveMultiPhotosVars.serializer,
        json,
      );
}

abstract class GgetListingSpecialPriceVars
    implements
        Built<GgetListingSpecialPriceVars, GgetListingSpecialPriceVarsBuilder> {
  GgetListingSpecialPriceVars._();

  factory GgetListingSpecialPriceVars(
          [void Function(GgetListingSpecialPriceVarsBuilder b) updates]) =
      _$GgetListingSpecialPriceVars;

  int get listId;
  static Serializer<GgetListingSpecialPriceVars> get serializer =>
      _$ggetListingSpecialPriceVarsSerializer;

  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GgetListingSpecialPriceVars.serializer,
        this,
      ) as Map<String, dynamic>);

  static GgetListingSpecialPriceVars? fromJson(Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GgetListingSpecialPriceVars.serializer,
        json,
      );
}

abstract class GUpdateSpecialPriceVars
    implements Built<GUpdateSpecialPriceVars, GUpdateSpecialPriceVarsBuilder> {
  GUpdateSpecialPriceVars._();

  factory GUpdateSpecialPriceVars(
          [void Function(GUpdateSpecialPriceVarsBuilder b) updates]) =
      _$GUpdateSpecialPriceVars;

  int get listId;
  BuiltList<String?>? get blockedDates;
  String? get calendarStatus;
  double? get isSpecialPrice;
  static Serializer<GUpdateSpecialPriceVars> get serializer =>
      _$gUpdateSpecialPriceVarsSerializer;

  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GUpdateSpecialPriceVars.serializer,
        this,
      ) as Map<String, dynamic>);

  static GUpdateSpecialPriceVars? fromJson(Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GUpdateSpecialPriceVars.serializer,
        json,
      );
}
