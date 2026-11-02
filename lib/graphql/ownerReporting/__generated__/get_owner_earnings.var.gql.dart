// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:gozy/graphql/__generated__/serializers.gql.dart' as _i1;

part 'get_owner_earnings.var.gql.g.dart';

abstract class GgetOwnerEarningsVars
    implements Built<GgetOwnerEarningsVars, GgetOwnerEarningsVarsBuilder> {
  GgetOwnerEarningsVars._();

  factory GgetOwnerEarningsVars(
          [void Function(GgetOwnerEarningsVarsBuilder b) updates]) =
      _$GgetOwnerEarningsVars;

  String? get period;
  String? get startDate;
  String? get endDate;
  int? get listId;
  String? get tab;
  String? get search;
  String? get sortBy;
  String? get sortDir;
  int? get page;
  int? get pageSize;
  String? get granularity;
  String? get convertCurrency;
  static Serializer<GgetOwnerEarningsVars> get serializer =>
      _$ggetOwnerEarningsVarsSerializer;

  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GgetOwnerEarningsVars.serializer,
        this,
      ) as Map<String, dynamic>);

  static GgetOwnerEarningsVars? fromJson(Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GgetOwnerEarningsVars.serializer,
        json,
      );
}
