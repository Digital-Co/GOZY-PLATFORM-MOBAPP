// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:gozy/graphql/__generated__/serializers.gql.dart' as _i1;

part 'transaction_history.var.gql.g.dart';

abstract class GgetTransactionHistoryVars
    implements
        Built<GgetTransactionHistoryVars, GgetTransactionHistoryVarsBuilder> {
  GgetTransactionHistoryVars._();

  factory GgetTransactionHistoryVars(
          [void Function(GgetTransactionHistoryVarsBuilder b) updates]) =
      _$GgetTransactionHistoryVars;

  String? get mode;
  int? get payoutId;
  int? get listId;
  int? get currentPage;
  String? get searchKey;
  String? get convertCurrency;
  static Serializer<GgetTransactionHistoryVars> get serializer =>
      _$ggetTransactionHistoryVarsSerializer;

  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GgetTransactionHistoryVars.serializer,
        this,
      ) as Map<String, dynamic>);

  static GgetTransactionHistoryVars? fromJson(Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GgetTransactionHistoryVars.serializer,
        json,
      );
}
