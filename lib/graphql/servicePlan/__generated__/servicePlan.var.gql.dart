// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:gozy/graphql/__generated__/serializers.gql.dart' as _i1;

part 'servicePlan.var.gql.g.dart';

abstract class GgetAllUserServicePlanVars
    implements
        Built<GgetAllUserServicePlanVars, GgetAllUserServicePlanVarsBuilder> {
  GgetAllUserServicePlanVars._();

  factory GgetAllUserServicePlanVars(
          [void Function(GgetAllUserServicePlanVarsBuilder b) updates]) =
      _$GgetAllUserServicePlanVars;

  String? get userType;
  int? get currentPage;
  String? get searchKey;
  static Serializer<GgetAllUserServicePlanVars> get serializer =>
      _$ggetAllUserServicePlanVarsSerializer;

  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GgetAllUserServicePlanVars.serializer,
        this,
      ) as Map<String, dynamic>);

  static GgetAllUserServicePlanVars? fromJson(Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GgetAllUserServicePlanVars.serializer,
        json,
      );
}
