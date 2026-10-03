// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:gozy/graphql/__generated__/serializers.gql.dart' as _i1;

part 'ListingDetails.var.gql.g.dart';

abstract class GgetSimilarListingVars
    implements Built<GgetSimilarListingVars, GgetSimilarListingVarsBuilder> {
  GgetSimilarListingVars._();

  factory GgetSimilarListingVars(
          [void Function(GgetSimilarListingVarsBuilder b) updates]) =
      _$GgetSimilarListingVars;

  double? get lat;
  double? get lng;
  int? get listId;
  static Serializer<GgetSimilarListingVars> get serializer =>
      _$ggetSimilarListingVarsSerializer;

  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GgetSimilarListingVars.serializer,
        this,
      ) as Map<String, dynamic>);

  static GgetSimilarListingVars? fromJson(Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GgetSimilarListingVars.serializer,
        json,
      );
}

abstract class GviewListingDetailsVars
    implements Built<GviewListingDetailsVars, GviewListingDetailsVarsBuilder> {
  GviewListingDetailsVars._();

  factory GviewListingDetailsVars(
          [void Function(GviewListingDetailsVarsBuilder b) updates]) =
      _$GviewListingDetailsVars;

  int get listId;
  bool? get preview;
  static Serializer<GviewListingDetailsVars> get serializer =>
      _$gviewListingDetailsVarsSerializer;

  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GviewListingDetailsVars.serializer,
        this,
      ) as Map<String, dynamic>);

  static GviewListingDetailsVars? fromJson(Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GviewListingDetailsVars.serializer,
        json,
      );
}

abstract class GgetReviewsListVars
    implements Built<GgetReviewsListVars, GgetReviewsListVarsBuilder> {
  GgetReviewsListVars._();

  factory GgetReviewsListVars(
          [void Function(GgetReviewsListVarsBuilder b) updates]) =
      _$GgetReviewsListVars;

  int? get listId;
  int? get currentPage;
  String get hostId;
  static Serializer<GgetReviewsListVars> get serializer =>
      _$ggetReviewsListVarsSerializer;

  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GgetReviewsListVars.serializer,
        this,
      ) as Map<String, dynamic>);

  static GgetReviewsListVars? fromJson(Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GgetReviewsListVars.serializer,
        json,
      );
}

abstract class GdateAvailabilityVars
    implements Built<GdateAvailabilityVars, GdateAvailabilityVarsBuilder> {
  GdateAvailabilityVars._();

  factory GdateAvailabilityVars(
          [void Function(GdateAvailabilityVarsBuilder b) updates]) =
      _$GdateAvailabilityVars;

  int get listId;
  String get startDate;
  String get endDate;
  static Serializer<GdateAvailabilityVars> get serializer =>
      _$gdateAvailabilityVarsSerializer;

  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GdateAvailabilityVars.serializer,
        this,
      ) as Map<String, dynamic>);

  static GdateAvailabilityVars? fromJson(Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GdateAvailabilityVars.serializer,
        json,
      );
}

abstract class GContactHostVars
    implements Built<GContactHostVars, GContactHostVarsBuilder> {
  GContactHostVars._();

  factory GContactHostVars([void Function(GContactHostVarsBuilder b) updates]) =
      _$GContactHostVars;

  int get listId;
  String get hostId;
  String get content;
  String get userId;
  String? get type;
  String get startDate;
  String get endDate;
  int? get personCapacity;
  double? get startTime;
  double? get endTime;
  static Serializer<GContactHostVars> get serializer =>
      _$gContactHostVarsSerializer;

  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GContactHostVars.serializer,
        this,
      ) as Map<String, dynamic>);

  static GContactHostVars? fromJson(Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GContactHostVars.serializer,
        json,
      );
}

abstract class GCreateReportUserVars
    implements Built<GCreateReportUserVars, GCreateReportUserVarsBuilder> {
  GCreateReportUserVars._();

  factory GCreateReportUserVars(
          [void Function(GCreateReportUserVarsBuilder b) updates]) =
      _$GCreateReportUserVars;

  String? get reporterId;
  String? get userId;
  String? get reportType;
  int? get profileId;
  String? get reporterName;
  static Serializer<GCreateReportUserVars> get serializer =>
      _$gCreateReportUserVarsSerializer;

  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GCreateReportUserVars.serializer,
        this,
      ) as Map<String, dynamic>);

  static GCreateReportUserVars? fromJson(Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GCreateReportUserVars.serializer,
        json,
      );
}

abstract class GgetAllReportTypeVars
    implements Built<GgetAllReportTypeVars, GgetAllReportTypeVarsBuilder> {
  GgetAllReportTypeVars._();

  factory GgetAllReportTypeVars(
          [void Function(GgetAllReportTypeVarsBuilder b) updates]) =
      _$GgetAllReportTypeVars;

  static Serializer<GgetAllReportTypeVars> get serializer =>
      _$ggetAllReportTypeVarsSerializer;

  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GgetAllReportTypeVars.serializer,
        this,
      ) as Map<String, dynamic>);

  static GgetAllReportTypeVars? fromJson(Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GgetAllReportTypeVars.serializer,
        json,
      );
}
