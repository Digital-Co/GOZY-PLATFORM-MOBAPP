// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:gozy/graphql/__generated__/serializers.gql.dart' as _i1;

part 'validate_promo_code.data.gql.g.dart';

abstract class GvalidatePromoCodeData
    implements Built<GvalidatePromoCodeData, GvalidatePromoCodeDataBuilder> {
  GvalidatePromoCodeData._();

  factory GvalidatePromoCodeData(
          [void Function(GvalidatePromoCodeDataBuilder b) updates]) =
      _$GvalidatePromoCodeData;

  static void _initializeBuilder(GvalidatePromoCodeDataBuilder b) =>
      b..G__typename = 'Query';

  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  GvalidatePromoCodeData_validatePromoCode? get validatePromoCode;
  static Serializer<GvalidatePromoCodeData> get serializer =>
      _$gvalidatePromoCodeDataSerializer;

  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GvalidatePromoCodeData.serializer,
        this,
      ) as Map<String, dynamic>);

  static GvalidatePromoCodeData? fromJson(Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GvalidatePromoCodeData.serializer,
        json,
      );
}

abstract class GvalidatePromoCodeData_validatePromoCode
    implements
        Built<GvalidatePromoCodeData_validatePromoCode,
            GvalidatePromoCodeData_validatePromoCodeBuilder> {
  GvalidatePromoCodeData_validatePromoCode._();

  factory GvalidatePromoCodeData_validatePromoCode(
      [void Function(GvalidatePromoCodeData_validatePromoCodeBuilder b)
          updates]) = _$GvalidatePromoCodeData_validatePromoCode;

  static void _initializeBuilder(
          GvalidatePromoCodeData_validatePromoCodeBuilder b) =>
      b..G__typename = 'PromoCodeType';

  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  int? get status;
  String? get errorMessage;
  GvalidatePromoCodeData_validatePromoCode_result? get result;
  static Serializer<GvalidatePromoCodeData_validatePromoCode> get serializer =>
      _$gvalidatePromoCodeDataValidatePromoCodeSerializer;

  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GvalidatePromoCodeData_validatePromoCode.serializer,
        this,
      ) as Map<String, dynamic>);

  static GvalidatePromoCodeData_validatePromoCode? fromJson(
          Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GvalidatePromoCodeData_validatePromoCode.serializer,
        json,
      );
}

abstract class GvalidatePromoCodeData_validatePromoCode_result
    implements
        Built<GvalidatePromoCodeData_validatePromoCode_result,
            GvalidatePromoCodeData_validatePromoCode_resultBuilder> {
  GvalidatePromoCodeData_validatePromoCode_result._();

  factory GvalidatePromoCodeData_validatePromoCode_result(
      [void Function(GvalidatePromoCodeData_validatePromoCode_resultBuilder b)
          updates]) = _$GvalidatePromoCodeData_validatePromoCode_result;

  static void _initializeBuilder(
          GvalidatePromoCodeData_validatePromoCode_resultBuilder b) =>
      b..G__typename = 'PromoCode';

  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  int? get id;
  String? get code;
  double? get promoValue;
  String? get deductionType;
  static Serializer<GvalidatePromoCodeData_validatePromoCode_result>
      get serializer =>
          _$gvalidatePromoCodeDataValidatePromoCodeResultSerializer;

  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GvalidatePromoCodeData_validatePromoCode_result.serializer,
        this,
      ) as Map<String, dynamic>);

  static GvalidatePromoCodeData_validatePromoCode_result? fromJson(
          Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GvalidatePromoCodeData_validatePromoCode_result.serializer,
        json,
      );
}
