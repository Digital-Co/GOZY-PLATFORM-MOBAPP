// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:gozy/graphql/__generated__/serializers.gql.dart' as _i1;

part 'reservation_option_snapshot_fragment.var.gql.g.dart';

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
