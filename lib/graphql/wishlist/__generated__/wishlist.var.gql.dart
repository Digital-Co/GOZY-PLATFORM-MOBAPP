// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:gozy/graphql/__generated__/serializers.gql.dart' as _i1;

part 'wishlist.var.gql.g.dart';

abstract class GCreateWishListGroupVars
    implements
        Built<GCreateWishListGroupVars, GCreateWishListGroupVarsBuilder> {
  GCreateWishListGroupVars._();

  factory GCreateWishListGroupVars(
          [void Function(GCreateWishListGroupVarsBuilder b) updates]) =
      _$GCreateWishListGroupVars;

  String get name;
  int? get id;
  String? get isPublic;
  static Serializer<GCreateWishListGroupVars> get serializer =>
      _$gCreateWishListGroupVarsSerializer;

  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GCreateWishListGroupVars.serializer,
        this,
      ) as Map<String, dynamic>);

  static GCreateWishListGroupVars? fromJson(Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GCreateWishListGroupVars.serializer,
        json,
      );
}

abstract class GgetAllWishListGroupVars
    implements
        Built<GgetAllWishListGroupVars, GgetAllWishListGroupVarsBuilder> {
  GgetAllWishListGroupVars._();

  factory GgetAllWishListGroupVars(
          [void Function(GgetAllWishListGroupVarsBuilder b) updates]) =
      _$GgetAllWishListGroupVars;

  int? get currentPage;
  static Serializer<GgetAllWishListGroupVars> get serializer =>
      _$ggetAllWishListGroupVarsSerializer;

  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GgetAllWishListGroupVars.serializer,
        this,
      ) as Map<String, dynamic>);

  static GgetAllWishListGroupVars? fromJson(Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GgetAllWishListGroupVars.serializer,
        json,
      );
}

abstract class GCreateWishListVars
    implements Built<GCreateWishListVars, GCreateWishListVarsBuilder> {
  GCreateWishListVars._();

  factory GCreateWishListVars(
          [void Function(GCreateWishListVarsBuilder b) updates]) =
      _$GCreateWishListVars;

  int get listId;
  int? get wishListGroupId;
  bool? get eventKey;
  static Serializer<GCreateWishListVars> get serializer =>
      _$gCreateWishListVarsSerializer;

  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GCreateWishListVars.serializer,
        this,
      ) as Map<String, dynamic>);

  static GCreateWishListVars? fromJson(Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GCreateWishListVars.serializer,
        json,
      );
}

abstract class GgetWishListGroupVars
    implements Built<GgetWishListGroupVars, GgetWishListGroupVarsBuilder> {
  GgetWishListGroupVars._();

  factory GgetWishListGroupVars(
          [void Function(GgetWishListGroupVarsBuilder b) updates]) =
      _$GgetWishListGroupVars;

  int get id;
  int? get currentPage;
  static Serializer<GgetWishListGroupVars> get serializer =>
      _$ggetWishListGroupVarsSerializer;

  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GgetWishListGroupVars.serializer,
        this,
      ) as Map<String, dynamic>);

  static GgetWishListGroupVars? fromJson(Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GgetWishListGroupVars.serializer,
        json,
      );
}

abstract class GDeleteWishListGroupVars
    implements
        Built<GDeleteWishListGroupVars, GDeleteWishListGroupVarsBuilder> {
  GDeleteWishListGroupVars._();

  factory GDeleteWishListGroupVars(
          [void Function(GDeleteWishListGroupVarsBuilder b) updates]) =
      _$GDeleteWishListGroupVars;

  int get id;
  static Serializer<GDeleteWishListGroupVars> get serializer =>
      _$gDeleteWishListGroupVarsSerializer;

  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GDeleteWishListGroupVars.serializer,
        this,
      ) as Map<String, dynamic>);

  static GDeleteWishListGroupVars? fromJson(Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GDeleteWishListGroupVars.serializer,
        json,
      );
}

abstract class GUpdateWishListGroupVars
    implements
        Built<GUpdateWishListGroupVars, GUpdateWishListGroupVarsBuilder> {
  GUpdateWishListGroupVars._();

  factory GUpdateWishListGroupVars(
          [void Function(GUpdateWishListGroupVarsBuilder b) updates]) =
      _$GUpdateWishListGroupVars;

  int? get isPublic;
  int get id;
  static Serializer<GUpdateWishListGroupVars> get serializer =>
      _$gUpdateWishListGroupVarsSerializer;

  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GUpdateWishListGroupVars.serializer,
        this,
      ) as Map<String, dynamic>);

  static GUpdateWishListGroupVars? fromJson(Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GUpdateWishListGroupVars.serializer,
        json,
      );
}
