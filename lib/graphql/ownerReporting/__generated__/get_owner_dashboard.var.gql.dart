// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:gozy/graphql/__generated__/serializers.gql.dart' as _i1;

part 'get_owner_dashboard.var.gql.g.dart';

abstract class GgetOwnerDashboardVars
    implements Built<GgetOwnerDashboardVars, GgetOwnerDashboardVarsBuilder> {
  GgetOwnerDashboardVars._();

  factory GgetOwnerDashboardVars(
          [void Function(GgetOwnerDashboardVarsBuilder b) updates]) =
      _$GgetOwnerDashboardVars;

  String? get period;
  String? get startDate;
  String? get endDate;
  int? get listId;
  String? get granularity;
  String? get convertCurrency;
  static Serializer<GgetOwnerDashboardVars> get serializer =>
      _$ggetOwnerDashboardVarsSerializer;

  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GgetOwnerDashboardVars.serializer,
        this,
      ) as Map<String, dynamic>);

  static GgetOwnerDashboardVars? fromJson(Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GgetOwnerDashboardVars.serializer,
        json,
      );
}
