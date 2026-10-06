// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:gozy/graphql/__generated__/schema.schema.gql.dart' as _i2;
import 'package:gozy/graphql/__generated__/serializers.gql.dart' as _i1;

part 'payout.var.gql.g.dart';

abstract class GgetPayoutsVars
    implements Built<GgetPayoutsVars, GgetPayoutsVarsBuilder> {
  GgetPayoutsVars._();

  factory GgetPayoutsVars([void Function(GgetPayoutsVarsBuilder b) updates]) =
      _$GgetPayoutsVars;

  static Serializer<GgetPayoutsVars> get serializer =>
      _$ggetPayoutsVarsSerializer;

  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GgetPayoutsVars.serializer,
        this,
      ) as Map<String, dynamic>);

  static GgetPayoutsVars? fromJson(Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GgetPayoutsVars.serializer,
        json,
      );
}

abstract class GconfirmPayoutVars
    implements Built<GconfirmPayoutVars, GconfirmPayoutVarsBuilder> {
  GconfirmPayoutVars._();

  factory GconfirmPayoutVars(
          [void Function(GconfirmPayoutVarsBuilder b) updates]) =
      _$GconfirmPayoutVars;

  String? get currentAccountId;
  static Serializer<GconfirmPayoutVars> get serializer =>
      _$gconfirmPayoutVarsSerializer;

  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GconfirmPayoutVars.serializer,
        this,
      ) as Map<String, dynamic>);

  static GconfirmPayoutVars? fromJson(Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GconfirmPayoutVars.serializer,
        json,
      );
}

abstract class GsetDefaultPayoutVars
    implements Built<GsetDefaultPayoutVars, GsetDefaultPayoutVarsBuilder> {
  GsetDefaultPayoutVars._();

  factory GsetDefaultPayoutVars(
          [void Function(GsetDefaultPayoutVarsBuilder b) updates]) =
      _$GsetDefaultPayoutVars;

  int get id;
  String get type;
  static Serializer<GsetDefaultPayoutVars> get serializer =>
      _$gsetDefaultPayoutVarsSerializer;

  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GsetDefaultPayoutVars.serializer,
        this,
      ) as Map<String, dynamic>);

  static GsetDefaultPayoutVars? fromJson(Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GsetDefaultPayoutVars.serializer,
        json,
      );
}

abstract class GgetPaymentMethodsVars
    implements Built<GgetPaymentMethodsVars, GgetPaymentMethodsVarsBuilder> {
  GgetPaymentMethodsVars._();

  factory GgetPaymentMethodsVars(
          [void Function(GgetPaymentMethodsVarsBuilder b) updates]) =
      _$GgetPaymentMethodsVars;

  String? get operation;
  BuiltList<int>? get supportedPaymentTypes;
  static Serializer<GgetPaymentMethodsVars> get serializer =>
      _$ggetPaymentMethodsVarsSerializer;

  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GgetPaymentMethodsVars.serializer,
        this,
      ) as Map<String, dynamic>);

  static GgetPaymentMethodsVars? fromJson(Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GgetPaymentMethodsVars.serializer,
        json,
      );
}

abstract class GaddPayoutVars
    implements Built<GaddPayoutVars, GaddPayoutVarsBuilder> {
  GaddPayoutVars._();

  factory GaddPayoutVars([void Function(GaddPayoutVarsBuilder b) updates]) =
      _$GaddPayoutVars;

  int get methodId;
  String get payEmail;
  String get address1;
  String get address2;
  String get city;
  String get state;
  String get country;
  String get zipcode;
  String get currency;
  String? get firstname;
  String? get lastname;
  String? get accountNumber;
  String? get routingNumber;
  String? get businessType;
  String? get accountToken;
  String? get personToken;
  static Serializer<GaddPayoutVars> get serializer =>
      _$gaddPayoutVarsSerializer;

  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GaddPayoutVars.serializer,
        this,
      ) as Map<String, dynamic>);

  static GaddPayoutVars? fromJson(Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GaddPayoutVars.serializer,
        json,
      );
}

abstract class GverifyPayoutVars
    implements Built<GverifyPayoutVars, GverifyPayoutVarsBuilder> {
  GverifyPayoutVars._();

  factory GverifyPayoutVars(
          [void Function(GverifyPayoutVarsBuilder b) updates]) =
      _$GverifyPayoutVars;

  String? get stripeAccount;
  static Serializer<GverifyPayoutVars> get serializer =>
      _$gverifyPayoutVarsSerializer;

  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GverifyPayoutVars.serializer,
        this,
      ) as Map<String, dynamic>);

  static GverifyPayoutVars? fromJson(Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GverifyPayoutVars.serializer,
        json,
      );
}

abstract class GgetPawaPayOptionsVars
    implements Built<GgetPawaPayOptionsVars, GgetPawaPayOptionsVarsBuilder> {
  GgetPawaPayOptionsVars._();

  factory GgetPawaPayOptionsVars(
          [void Function(GgetPawaPayOptionsVarsBuilder b) updates]) =
      _$GgetPawaPayOptionsVars;

  _i2.GPawaPayOperation get operation;
  static Serializer<GgetPawaPayOptionsVars> get serializer =>
      _$ggetPawaPayOptionsVarsSerializer;

  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GgetPawaPayOptionsVars.serializer,
        this,
      ) as Map<String, dynamic>);

  static GgetPawaPayOptionsVars? fromJson(Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GgetPawaPayOptionsVars.serializer,
        json,
      );
}

abstract class GinitiatePawaPayDepositVars
    implements
        Built<GinitiatePawaPayDepositVars, GinitiatePawaPayDepositVarsBuilder> {
  GinitiatePawaPayDepositVars._();

  factory GinitiatePawaPayDepositVars(
          [void Function(GinitiatePawaPayDepositVarsBuilder b) updates]) =
      _$GinitiatePawaPayDepositVars;

  int get reservationId;
  String get country;
  String get currency;
  String get phoneNumber;
  String get provider;
  static Serializer<GinitiatePawaPayDepositVars> get serializer =>
      _$ginitiatePawaPayDepositVarsSerializer;

  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GinitiatePawaPayDepositVars.serializer,
        this,
      ) as Map<String, dynamic>);

  static GinitiatePawaPayDepositVars? fromJson(Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GinitiatePawaPayDepositVars.serializer,
        json,
      );
}

abstract class GgetPawaPayDepositStatusVars
    implements
        Built<GgetPawaPayDepositStatusVars,
            GgetPawaPayDepositStatusVarsBuilder> {
  GgetPawaPayDepositStatusVars._();

  factory GgetPawaPayDepositStatusVars(
          [void Function(GgetPawaPayDepositStatusVarsBuilder b) updates]) =
      _$GgetPawaPayDepositStatusVars;

  int get reservationId;
  static Serializer<GgetPawaPayDepositStatusVars> get serializer =>
      _$ggetPawaPayDepositStatusVarsSerializer;

  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GgetPawaPayDepositStatusVars.serializer,
        this,
      ) as Map<String, dynamic>);

  static GgetPawaPayDepositStatusVars? fromJson(Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GgetPawaPayDepositStatusVars.serializer,
        json,
      );
}

abstract class GaddPawaPayPayoutAccountVars
    implements
        Built<GaddPawaPayPayoutAccountVars,
            GaddPawaPayPayoutAccountVarsBuilder> {
  GaddPawaPayPayoutAccountVars._();

  factory GaddPawaPayPayoutAccountVars(
          [void Function(GaddPawaPayPayoutAccountVarsBuilder b) updates]) =
      _$GaddPawaPayPayoutAccountVars;

  String get phoneNumber;
  String get country;
  String get currency;
  String get provider;
  static Serializer<GaddPawaPayPayoutAccountVars> get serializer =>
      _$gaddPawaPayPayoutAccountVarsSerializer;

  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GaddPawaPayPayoutAccountVars.serializer,
        this,
      ) as Map<String, dynamic>);

  static GaddPawaPayPayoutAccountVars? fromJson(Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GaddPawaPayPayoutAccountVars.serializer,
        json,
      );
}
