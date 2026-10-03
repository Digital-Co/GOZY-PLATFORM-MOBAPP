// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:gozy/graphql/__generated__/serializers.gql.dart' as _i1;

part 'listing_data_fragment.var.gql.g.dart';

abstract class GlistingDataFragmentVars
    implements
        Built<GlistingDataFragmentVars, GlistingDataFragmentVarsBuilder> {
  GlistingDataFragmentVars._();

  factory GlistingDataFragmentVars(
          [void Function(GlistingDataFragmentVarsBuilder b) updates]) =
      _$GlistingDataFragmentVars;

  static Serializer<GlistingDataFragmentVars> get serializer =>
      _$glistingDataFragmentVarsSerializer;

  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GlistingDataFragmentVars.serializer,
        this,
      ) as Map<String, dynamic>);

  static GlistingDataFragmentVars? fromJson(Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GlistingDataFragmentVars.serializer,
        json,
      );
}

abstract class GcancellationDataFragmentVars
    implements
        Built<GcancellationDataFragmentVars,
            GcancellationDataFragmentVarsBuilder> {
  GcancellationDataFragmentVars._();

  factory GcancellationDataFragmentVars(
          [void Function(GcancellationDataFragmentVarsBuilder b) updates]) =
      _$GcancellationDataFragmentVars;

  static Serializer<GcancellationDataFragmentVars> get serializer =>
      _$gcancellationDataFragmentVarsSerializer;

  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GcancellationDataFragmentVars.serializer,
        this,
      ) as Map<String, dynamic>);

  static GcancellationDataFragmentVars? fromJson(Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GcancellationDataFragmentVars.serializer,
        json,
      );
}
