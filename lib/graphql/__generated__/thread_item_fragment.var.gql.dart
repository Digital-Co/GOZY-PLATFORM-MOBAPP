// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:gozy/graphql/__generated__/serializers.gql.dart' as _i1;

part 'thread_item_fragment.var.gql.g.dart';

abstract class GthreadItemsFragmentVars
    implements
        Built<GthreadItemsFragmentVars, GthreadItemsFragmentVarsBuilder> {
  GthreadItemsFragmentVars._();

  factory GthreadItemsFragmentVars(
          [void Function(GthreadItemsFragmentVarsBuilder b) updates]) =
      _$GthreadItemsFragmentVars;

  static Serializer<GthreadItemsFragmentVars> get serializer =>
      _$gthreadItemsFragmentVarsSerializer;

  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GthreadItemsFragmentVars.serializer,
        this,
      ) as Map<String, dynamic>);

  static GthreadItemsFragmentVars? fromJson(Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GthreadItemsFragmentVars.serializer,
        json,
      );
}
