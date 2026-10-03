// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:gozy/graphql/__generated__/serializers.gql.dart' as _i1;

part 'getAllPurchaseServicePlan.var.gql.g.dart';

abstract class GgetAllPurchaseServicePlanVars
    implements
        Built<GgetAllPurchaseServicePlanVars,
            GgetAllPurchaseServicePlanVarsBuilder> {
  GgetAllPurchaseServicePlanVars._();

  factory GgetAllPurchaseServicePlanVars(
          [void Function(GgetAllPurchaseServicePlanVarsBuilder b) updates]) =
      _$GgetAllPurchaseServicePlanVars;

  int? get currentPage;
  String? get searchKey;
  String? get userType;
  static Serializer<GgetAllPurchaseServicePlanVars> get serializer =>
      _$ggetAllPurchaseServicePlanVarsSerializer;

  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GgetAllPurchaseServicePlanVars.serializer,
        this,
      ) as Map<String, dynamic>);

  static GgetAllPurchaseServicePlanVars? fromJson(Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GgetAllPurchaseServicePlanVars.serializer,
        json,
      );
}
