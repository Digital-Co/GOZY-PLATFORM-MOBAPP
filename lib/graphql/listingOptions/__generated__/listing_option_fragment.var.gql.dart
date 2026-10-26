// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:gozy/graphql/__generated__/serializers.gql.dart' as _i1;

part 'listing_option_fragment.var.gql.g.dart';

abstract class GlistingOptionFragmentVars
    implements
        Built<GlistingOptionFragmentVars, GlistingOptionFragmentVarsBuilder> {
  GlistingOptionFragmentVars._();

  factory GlistingOptionFragmentVars(
          [void Function(GlistingOptionFragmentVarsBuilder b) updates]) =
      _$GlistingOptionFragmentVars;

  static Serializer<GlistingOptionFragmentVars> get serializer =>
      _$glistingOptionFragmentVarsSerializer;

  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GlistingOptionFragmentVars.serializer,
        this,
      ) as Map<String, dynamic>);

  static GlistingOptionFragmentVars? fromJson(Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GlistingOptionFragmentVars.serializer,
        json,
      );
}

abstract class GbookingOptionLineFragmentVars
    implements
        Built<GbookingOptionLineFragmentVars,
            GbookingOptionLineFragmentVarsBuilder> {
  GbookingOptionLineFragmentVars._();

  factory GbookingOptionLineFragmentVars(
          [void Function(GbookingOptionLineFragmentVarsBuilder b) updates]) =
      _$GbookingOptionLineFragmentVars;

  static Serializer<GbookingOptionLineFragmentVars> get serializer =>
      _$gbookingOptionLineFragmentVarsSerializer;

  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GbookingOptionLineFragmentVars.serializer,
        this,
      ) as Map<String, dynamic>);

  static GbookingOptionLineFragmentVars? fromJson(Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GbookingOptionLineFragmentVars.serializer,
        json,
      );
}

abstract class GreservationOptionSnapshotFragmentVars
    implements
        Built<GreservationOptionSnapshotFragmentVars,
            GreservationOptionSnapshotFragmentVarsBuilder> {
  GreservationOptionSnapshotFragmentVars._();

  factory GreservationOptionSnapshotFragmentVars(
      [void Function(GreservationOptionSnapshotFragmentVarsBuilder b)
          updates]) = _$GreservationOptionSnapshotFragmentVars;

  static Serializer<GreservationOptionSnapshotFragmentVars> get serializer =>
      _$greservationOptionSnapshotFragmentVarsSerializer;

  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GreservationOptionSnapshotFragmentVars.serializer,
        this,
      ) as Map<String, dynamic>);

  static GreservationOptionSnapshotFragmentVars? fromJson(
          Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GreservationOptionSnapshotFragmentVars.serializer,
        json,
      );
}

abstract class GlistingOptionsResultFragmentVars
    implements
        Built<GlistingOptionsResultFragmentVars,
            GlistingOptionsResultFragmentVarsBuilder> {
  GlistingOptionsResultFragmentVars._();

  factory GlistingOptionsResultFragmentVars(
          [void Function(GlistingOptionsResultFragmentVarsBuilder b) updates]) =
      _$GlistingOptionsResultFragmentVars;

  static Serializer<GlistingOptionsResultFragmentVars> get serializer =>
      _$glistingOptionsResultFragmentVarsSerializer;

  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GlistingOptionsResultFragmentVars.serializer,
        this,
      ) as Map<String, dynamic>);

  static GlistingOptionsResultFragmentVars? fromJson(
          Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GlistingOptionsResultFragmentVars.serializer,
        json,
      );
}
