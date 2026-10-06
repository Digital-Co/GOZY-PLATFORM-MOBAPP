// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:gozy/graphql/__generated__/serializers.gql.dart' as _i1;

part 'payout.data.gql.g.dart';

abstract class GgetPayoutsData
    implements Built<GgetPayoutsData, GgetPayoutsDataBuilder> {
  GgetPayoutsData._();

  factory GgetPayoutsData([void Function(GgetPayoutsDataBuilder b) updates]) =
      _$GgetPayoutsData;

  static void _initializeBuilder(GgetPayoutsDataBuilder b) =>
      b..G__typename = 'Query';

  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  GgetPayoutsData_getPayouts? get getPayouts;
  static Serializer<GgetPayoutsData> get serializer =>
      _$ggetPayoutsDataSerializer;

  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GgetPayoutsData.serializer,
        this,
      ) as Map<String, dynamic>);

  static GgetPayoutsData? fromJson(Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GgetPayoutsData.serializer,
        json,
      );
}

abstract class GgetPayoutsData_getPayouts
    implements
        Built<GgetPayoutsData_getPayouts, GgetPayoutsData_getPayoutsBuilder> {
  GgetPayoutsData_getPayouts._();

  factory GgetPayoutsData_getPayouts(
          [void Function(GgetPayoutsData_getPayoutsBuilder b) updates]) =
      _$GgetPayoutsData_getPayouts;

  static void _initializeBuilder(GgetPayoutsData_getPayoutsBuilder b) =>
      b..G__typename = 'PayoutWholeType';

  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  BuiltList<GgetPayoutsData_getPayouts_results?>? get results;
  int? get status;
  String? get errorMessage;
  static Serializer<GgetPayoutsData_getPayouts> get serializer =>
      _$ggetPayoutsDataGetPayoutsSerializer;

  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GgetPayoutsData_getPayouts.serializer,
        this,
      ) as Map<String, dynamic>);

  static GgetPayoutsData_getPayouts? fromJson(Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GgetPayoutsData_getPayouts.serializer,
        json,
      );
}

abstract class GgetPayoutsData_getPayouts_results
    implements
        Built<GgetPayoutsData_getPayouts_results,
            GgetPayoutsData_getPayouts_resultsBuilder> {
  GgetPayoutsData_getPayouts_results._();

  factory GgetPayoutsData_getPayouts_results(
      [void Function(GgetPayoutsData_getPayouts_resultsBuilder b)
          updates]) = _$GgetPayoutsData_getPayouts_results;

  static void _initializeBuilder(GgetPayoutsData_getPayouts_resultsBuilder b) =>
      b..G__typename = 'Payout';

  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  int? get id;
  int? get methodId;
  GgetPayoutsData_getPayouts_results_paymentMethod? get paymentMethod;
  String? get userId;
  String? get payEmail;
  String? get address1;
  String? get address2;
  String? get city;
  @BuiltValueField(wireName: 'default')
  bool? get Gdefault;
  String? get state;
  String? get country;
  String? get zipcode;
  String? get currency;
  String? get createdAt;
  int? get last4Digits;
  bool? get isVerified;
  int? get status;
  static Serializer<GgetPayoutsData_getPayouts_results> get serializer =>
      _$ggetPayoutsDataGetPayoutsResultsSerializer;

  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GgetPayoutsData_getPayouts_results.serializer,
        this,
      ) as Map<String, dynamic>);

  static GgetPayoutsData_getPayouts_results? fromJson(
          Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GgetPayoutsData_getPayouts_results.serializer,
        json,
      );
}

abstract class GgetPayoutsData_getPayouts_results_paymentMethod
    implements
        Built<GgetPayoutsData_getPayouts_results_paymentMethod,
            GgetPayoutsData_getPayouts_results_paymentMethodBuilder> {
  GgetPayoutsData_getPayouts_results_paymentMethod._();

  factory GgetPayoutsData_getPayouts_results_paymentMethod(
      [void Function(GgetPayoutsData_getPayouts_results_paymentMethodBuilder b)
          updates]) = _$GgetPayoutsData_getPayouts_results_paymentMethod;

  static void _initializeBuilder(
          GgetPayoutsData_getPayouts_results_paymentMethodBuilder b) =>
      b..G__typename = 'PaymentMethods';

  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  int? get id;
  String? get name;
  static Serializer<GgetPayoutsData_getPayouts_results_paymentMethod>
      get serializer =>
          _$ggetPayoutsDataGetPayoutsResultsPaymentMethodSerializer;

  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GgetPayoutsData_getPayouts_results_paymentMethod.serializer,
        this,
      ) as Map<String, dynamic>);

  static GgetPayoutsData_getPayouts_results_paymentMethod? fromJson(
          Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GgetPayoutsData_getPayouts_results_paymentMethod.serializer,
        json,
      );
}

abstract class GconfirmPayoutData
    implements Built<GconfirmPayoutData, GconfirmPayoutDataBuilder> {
  GconfirmPayoutData._();

  factory GconfirmPayoutData(
          [void Function(GconfirmPayoutDataBuilder b) updates]) =
      _$GconfirmPayoutData;

  static void _initializeBuilder(GconfirmPayoutDataBuilder b) =>
      b..G__typename = 'Mutation';

  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  GconfirmPayoutData_confirmPayout? get confirmPayout;
  static Serializer<GconfirmPayoutData> get serializer =>
      _$gconfirmPayoutDataSerializer;

  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GconfirmPayoutData.serializer,
        this,
      ) as Map<String, dynamic>);

  static GconfirmPayoutData? fromJson(Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GconfirmPayoutData.serializer,
        json,
      );
}

abstract class GconfirmPayoutData_confirmPayout
    implements
        Built<GconfirmPayoutData_confirmPayout,
            GconfirmPayoutData_confirmPayoutBuilder> {
  GconfirmPayoutData_confirmPayout._();

  factory GconfirmPayoutData_confirmPayout(
          [void Function(GconfirmPayoutData_confirmPayoutBuilder b) updates]) =
      _$GconfirmPayoutData_confirmPayout;

  static void _initializeBuilder(GconfirmPayoutData_confirmPayoutBuilder b) =>
      b..G__typename = 'PayoutWholeType';

  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  int? get status;
  String? get errorMessage;
  static Serializer<GconfirmPayoutData_confirmPayout> get serializer =>
      _$gconfirmPayoutDataConfirmPayoutSerializer;

  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GconfirmPayoutData_confirmPayout.serializer,
        this,
      ) as Map<String, dynamic>);

  static GconfirmPayoutData_confirmPayout? fromJson(
          Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GconfirmPayoutData_confirmPayout.serializer,
        json,
      );
}

abstract class GsetDefaultPayoutData
    implements Built<GsetDefaultPayoutData, GsetDefaultPayoutDataBuilder> {
  GsetDefaultPayoutData._();

  factory GsetDefaultPayoutData(
          [void Function(GsetDefaultPayoutDataBuilder b) updates]) =
      _$GsetDefaultPayoutData;

  static void _initializeBuilder(GsetDefaultPayoutDataBuilder b) =>
      b..G__typename = 'Mutation';

  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  GsetDefaultPayoutData_setDefaultPayout? get setDefaultPayout;
  static Serializer<GsetDefaultPayoutData> get serializer =>
      _$gsetDefaultPayoutDataSerializer;

  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GsetDefaultPayoutData.serializer,
        this,
      ) as Map<String, dynamic>);

  static GsetDefaultPayoutData? fromJson(Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GsetDefaultPayoutData.serializer,
        json,
      );
}

abstract class GsetDefaultPayoutData_setDefaultPayout
    implements
        Built<GsetDefaultPayoutData_setDefaultPayout,
            GsetDefaultPayoutData_setDefaultPayoutBuilder> {
  GsetDefaultPayoutData_setDefaultPayout._();

  factory GsetDefaultPayoutData_setDefaultPayout(
      [void Function(GsetDefaultPayoutData_setDefaultPayoutBuilder b)
          updates]) = _$GsetDefaultPayoutData_setDefaultPayout;

  static void _initializeBuilder(
          GsetDefaultPayoutData_setDefaultPayoutBuilder b) =>
      b..G__typename = 'Payout';

  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  int? get status;
  String? get errorMessage;
  static Serializer<GsetDefaultPayoutData_setDefaultPayout> get serializer =>
      _$gsetDefaultPayoutDataSetDefaultPayoutSerializer;

  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GsetDefaultPayoutData_setDefaultPayout.serializer,
        this,
      ) as Map<String, dynamic>);

  static GsetDefaultPayoutData_setDefaultPayout? fromJson(
          Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GsetDefaultPayoutData_setDefaultPayout.serializer,
        json,
      );
}

abstract class GgetPaymentMethodsData
    implements Built<GgetPaymentMethodsData, GgetPaymentMethodsDataBuilder> {
  GgetPaymentMethodsData._();

  factory GgetPaymentMethodsData(
          [void Function(GgetPaymentMethodsDataBuilder b) updates]) =
      _$GgetPaymentMethodsData;

  static void _initializeBuilder(GgetPaymentMethodsDataBuilder b) =>
      b..G__typename = 'Query';

  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  GgetPaymentMethodsData_getPaymentMethods? get getPaymentMethods;
  static Serializer<GgetPaymentMethodsData> get serializer =>
      _$ggetPaymentMethodsDataSerializer;

  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GgetPaymentMethodsData.serializer,
        this,
      ) as Map<String, dynamic>);

  static GgetPaymentMethodsData? fromJson(Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GgetPaymentMethodsData.serializer,
        json,
      );
}

abstract class GgetPaymentMethodsData_getPaymentMethods
    implements
        Built<GgetPaymentMethodsData_getPaymentMethods,
            GgetPaymentMethodsData_getPaymentMethodsBuilder> {
  GgetPaymentMethodsData_getPaymentMethods._();

  factory GgetPaymentMethodsData_getPaymentMethods(
      [void Function(GgetPaymentMethodsData_getPaymentMethodsBuilder b)
          updates]) = _$GgetPaymentMethodsData_getPaymentMethods;

  static void _initializeBuilder(
          GgetPaymentMethodsData_getPaymentMethodsBuilder b) =>
      b..G__typename = 'GetPaymentType';

  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  BuiltList<GgetPaymentMethodsData_getPaymentMethods_results?>? get results;
  int? get status;
  String? get errorMessage;
  static Serializer<GgetPaymentMethodsData_getPaymentMethods> get serializer =>
      _$ggetPaymentMethodsDataGetPaymentMethodsSerializer;

  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GgetPaymentMethodsData_getPaymentMethods.serializer,
        this,
      ) as Map<String, dynamic>);

  static GgetPaymentMethodsData_getPaymentMethods? fromJson(
          Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GgetPaymentMethodsData_getPaymentMethods.serializer,
        json,
      );
}

abstract class GgetPaymentMethodsData_getPaymentMethods_results
    implements
        Built<GgetPaymentMethodsData_getPaymentMethods_results,
            GgetPaymentMethodsData_getPaymentMethods_resultsBuilder> {
  GgetPaymentMethodsData_getPaymentMethods_results._();

  factory GgetPaymentMethodsData_getPaymentMethods_results(
      [void Function(GgetPaymentMethodsData_getPaymentMethods_resultsBuilder b)
          updates]) = _$GgetPaymentMethodsData_getPaymentMethods_results;

  static void _initializeBuilder(
          GgetPaymentMethodsData_getPaymentMethods_resultsBuilder b) =>
      b..G__typename = 'PaymentMethods';

  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  int? get id;
  String? get name;
  String? get processedIn;
  String? get fees;
  String? get currency;
  String? get details;
  bool? get isEnable;
  int? get paymentType;
  String? get imageUrl;
  static Serializer<GgetPaymentMethodsData_getPaymentMethods_results>
      get serializer =>
          _$ggetPaymentMethodsDataGetPaymentMethodsResultsSerializer;

  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GgetPaymentMethodsData_getPaymentMethods_results.serializer,
        this,
      ) as Map<String, dynamic>);

  static GgetPaymentMethodsData_getPaymentMethods_results? fromJson(
          Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GgetPaymentMethodsData_getPaymentMethods_results.serializer,
        json,
      );
}

abstract class GaddPayoutData
    implements Built<GaddPayoutData, GaddPayoutDataBuilder> {
  GaddPayoutData._();

  factory GaddPayoutData([void Function(GaddPayoutDataBuilder b) updates]) =
      _$GaddPayoutData;

  static void _initializeBuilder(GaddPayoutDataBuilder b) =>
      b..G__typename = 'Mutation';

  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  GaddPayoutData_addPayout? get addPayout;
  static Serializer<GaddPayoutData> get serializer =>
      _$gaddPayoutDataSerializer;

  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GaddPayoutData.serializer,
        this,
      ) as Map<String, dynamic>);

  static GaddPayoutData? fromJson(Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GaddPayoutData.serializer,
        json,
      );
}

abstract class GaddPayoutData_addPayout
    implements
        Built<GaddPayoutData_addPayout, GaddPayoutData_addPayoutBuilder> {
  GaddPayoutData_addPayout._();

  factory GaddPayoutData_addPayout(
          [void Function(GaddPayoutData_addPayoutBuilder b) updates]) =
      _$GaddPayoutData_addPayout;

  static void _initializeBuilder(GaddPayoutData_addPayoutBuilder b) =>
      b..G__typename = 'GetPayoutType';

  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  int? get status;
  String? get errorMessage;
  String? get connectUrl;
  String? get successUrl;
  String? get failureUrl;
  String? get stripeAccountId;
  static Serializer<GaddPayoutData_addPayout> get serializer =>
      _$gaddPayoutDataAddPayoutSerializer;

  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GaddPayoutData_addPayout.serializer,
        this,
      ) as Map<String, dynamic>);

  static GaddPayoutData_addPayout? fromJson(Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GaddPayoutData_addPayout.serializer,
        json,
      );
}

abstract class GverifyPayoutData
    implements Built<GverifyPayoutData, GverifyPayoutDataBuilder> {
  GverifyPayoutData._();

  factory GverifyPayoutData(
          [void Function(GverifyPayoutDataBuilder b) updates]) =
      _$GverifyPayoutData;

  static void _initializeBuilder(GverifyPayoutDataBuilder b) =>
      b..G__typename = 'Mutation';

  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  GverifyPayoutData_verifyPayout? get verifyPayout;
  static Serializer<GverifyPayoutData> get serializer =>
      _$gverifyPayoutDataSerializer;

  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GverifyPayoutData.serializer,
        this,
      ) as Map<String, dynamic>);

  static GverifyPayoutData? fromJson(Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GverifyPayoutData.serializer,
        json,
      );
}

abstract class GverifyPayoutData_verifyPayout
    implements
        Built<GverifyPayoutData_verifyPayout,
            GverifyPayoutData_verifyPayoutBuilder> {
  GverifyPayoutData_verifyPayout._();

  factory GverifyPayoutData_verifyPayout(
          [void Function(GverifyPayoutData_verifyPayoutBuilder b) updates]) =
      _$GverifyPayoutData_verifyPayout;

  static void _initializeBuilder(GverifyPayoutData_verifyPayoutBuilder b) =>
      b..G__typename = 'GetPayoutType';

  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  int? get status;
  String? get errorMessage;
  String? get connectUrl;
  String? get successUrl;
  String? get failureUrl;
  String? get stripeAccountId;
  static Serializer<GverifyPayoutData_verifyPayout> get serializer =>
      _$gverifyPayoutDataVerifyPayoutSerializer;

  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GverifyPayoutData_verifyPayout.serializer,
        this,
      ) as Map<String, dynamic>);

  static GverifyPayoutData_verifyPayout? fromJson(Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GverifyPayoutData_verifyPayout.serializer,
        json,
      );
}

abstract class GgetPawaPayOptionsData
    implements Built<GgetPawaPayOptionsData, GgetPawaPayOptionsDataBuilder> {
  GgetPawaPayOptionsData._();

  factory GgetPawaPayOptionsData(
          [void Function(GgetPawaPayOptionsDataBuilder b) updates]) =
      _$GgetPawaPayOptionsData;

  static void _initializeBuilder(GgetPawaPayOptionsDataBuilder b) =>
      b..G__typename = 'Query';

  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  GgetPawaPayOptionsData_getPawaPayOptions? get getPawaPayOptions;
  static Serializer<GgetPawaPayOptionsData> get serializer =>
      _$ggetPawaPayOptionsDataSerializer;

  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GgetPawaPayOptionsData.serializer,
        this,
      ) as Map<String, dynamic>);

  static GgetPawaPayOptionsData? fromJson(Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GgetPawaPayOptionsData.serializer,
        json,
      );
}

abstract class GgetPawaPayOptionsData_getPawaPayOptions
    implements
        Built<GgetPawaPayOptionsData_getPawaPayOptions,
            GgetPawaPayOptionsData_getPawaPayOptionsBuilder> {
  GgetPawaPayOptionsData_getPawaPayOptions._();

  factory GgetPawaPayOptionsData_getPawaPayOptions(
      [void Function(GgetPawaPayOptionsData_getPawaPayOptionsBuilder b)
          updates]) = _$GgetPawaPayOptionsData_getPawaPayOptions;

  static void _initializeBuilder(
          GgetPawaPayOptionsData_getPawaPayOptionsBuilder b) =>
      b..G__typename = 'PawaPayOptions';

  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  int? get status;
  String? get errorMessage;
  String? get recommendedCountry;
  BuiltList<GgetPawaPayOptionsData_getPawaPayOptions_countries?>? get countries;
  static Serializer<GgetPawaPayOptionsData_getPawaPayOptions> get serializer =>
      _$ggetPawaPayOptionsDataGetPawaPayOptionsSerializer;

  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GgetPawaPayOptionsData_getPawaPayOptions.serializer,
        this,
      ) as Map<String, dynamic>);

  static GgetPawaPayOptionsData_getPawaPayOptions? fromJson(
          Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GgetPawaPayOptionsData_getPawaPayOptions.serializer,
        json,
      );
}

abstract class GgetPawaPayOptionsData_getPawaPayOptions_countries
    implements
        Built<GgetPawaPayOptionsData_getPawaPayOptions_countries,
            GgetPawaPayOptionsData_getPawaPayOptions_countriesBuilder> {
  GgetPawaPayOptionsData_getPawaPayOptions_countries._();

  factory GgetPawaPayOptionsData_getPawaPayOptions_countries(
      [void Function(
              GgetPawaPayOptionsData_getPawaPayOptions_countriesBuilder b)
          updates]) = _$GgetPawaPayOptionsData_getPawaPayOptions_countries;

  static void _initializeBuilder(
          GgetPawaPayOptionsData_getPawaPayOptions_countriesBuilder b) =>
      b..G__typename = 'PawaPayCountry';

  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  String? get country;
  String? get displayName;
  String? get prefix;
  String? get flag;
  BuiltList<GgetPawaPayOptionsData_getPawaPayOptions_countries_currencies?>?
      get currencies;
  static Serializer<GgetPawaPayOptionsData_getPawaPayOptions_countries>
      get serializer =>
          _$ggetPawaPayOptionsDataGetPawaPayOptionsCountriesSerializer;

  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GgetPawaPayOptionsData_getPawaPayOptions_countries.serializer,
        this,
      ) as Map<String, dynamic>);

  static GgetPawaPayOptionsData_getPawaPayOptions_countries? fromJson(
          Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GgetPawaPayOptionsData_getPawaPayOptions_countries.serializer,
        json,
      );
}

abstract class GgetPawaPayOptionsData_getPawaPayOptions_countries_currencies
    implements
        Built<GgetPawaPayOptionsData_getPawaPayOptions_countries_currencies,
            GgetPawaPayOptionsData_getPawaPayOptions_countries_currenciesBuilder> {
  GgetPawaPayOptionsData_getPawaPayOptions_countries_currencies._();

  factory GgetPawaPayOptionsData_getPawaPayOptions_countries_currencies(
          [void Function(
                  GgetPawaPayOptionsData_getPawaPayOptions_countries_currenciesBuilder
                      b)
              updates]) =
      _$GgetPawaPayOptionsData_getPawaPayOptions_countries_currencies;

  static void _initializeBuilder(
          GgetPawaPayOptionsData_getPawaPayOptions_countries_currenciesBuilder
              b) =>
      b..G__typename = 'PawaPayCurrency';

  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  String? get currency;
  BuiltList<
          GgetPawaPayOptionsData_getPawaPayOptions_countries_currencies_providers?>?
      get providers;
  static Serializer<
          GgetPawaPayOptionsData_getPawaPayOptions_countries_currencies>
      get serializer =>
          _$ggetPawaPayOptionsDataGetPawaPayOptionsCountriesCurrenciesSerializer;

  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GgetPawaPayOptionsData_getPawaPayOptions_countries_currencies
            .serializer,
        this,
      ) as Map<String, dynamic>);

  static GgetPawaPayOptionsData_getPawaPayOptions_countries_currencies?
      fromJson(Map<String, dynamic> json) => _i1.serializers.deserializeWith(
            GgetPawaPayOptionsData_getPawaPayOptions_countries_currencies
                .serializer,
            json,
          );
}

abstract class GgetPawaPayOptionsData_getPawaPayOptions_countries_currencies_providers
    implements
        Built<
            GgetPawaPayOptionsData_getPawaPayOptions_countries_currencies_providers,
            GgetPawaPayOptionsData_getPawaPayOptions_countries_currencies_providersBuilder> {
  GgetPawaPayOptionsData_getPawaPayOptions_countries_currencies_providers._();

  factory GgetPawaPayOptionsData_getPawaPayOptions_countries_currencies_providers(
          [void Function(
                  GgetPawaPayOptionsData_getPawaPayOptions_countries_currencies_providersBuilder
                      b)
              updates]) =
      _$GgetPawaPayOptionsData_getPawaPayOptions_countries_currencies_providers;

  static void _initializeBuilder(
          GgetPawaPayOptionsData_getPawaPayOptions_countries_currencies_providersBuilder
              b) =>
      b..G__typename = 'PawaPayProvider';

  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  String? get provider;
  String? get displayName;
  static Serializer<
          GgetPawaPayOptionsData_getPawaPayOptions_countries_currencies_providers>
      get serializer =>
          _$ggetPawaPayOptionsDataGetPawaPayOptionsCountriesCurrenciesProvidersSerializer;

  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GgetPawaPayOptionsData_getPawaPayOptions_countries_currencies_providers
            .serializer,
        this,
      ) as Map<String, dynamic>);

  static GgetPawaPayOptionsData_getPawaPayOptions_countries_currencies_providers?
      fromJson(Map<String, dynamic> json) => _i1.serializers.deserializeWith(
            GgetPawaPayOptionsData_getPawaPayOptions_countries_currencies_providers
                .serializer,
            json,
          );
}

abstract class GinitiatePawaPayDepositData
    implements
        Built<GinitiatePawaPayDepositData, GinitiatePawaPayDepositDataBuilder> {
  GinitiatePawaPayDepositData._();

  factory GinitiatePawaPayDepositData(
          [void Function(GinitiatePawaPayDepositDataBuilder b) updates]) =
      _$GinitiatePawaPayDepositData;

  static void _initializeBuilder(GinitiatePawaPayDepositDataBuilder b) =>
      b..G__typename = 'Mutation';

  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  GinitiatePawaPayDepositData_initiatePawaPayDeposit?
      get initiatePawaPayDeposit;
  static Serializer<GinitiatePawaPayDepositData> get serializer =>
      _$ginitiatePawaPayDepositDataSerializer;

  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GinitiatePawaPayDepositData.serializer,
        this,
      ) as Map<String, dynamic>);

  static GinitiatePawaPayDepositData? fromJson(Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GinitiatePawaPayDepositData.serializer,
        json,
      );
}

abstract class GinitiatePawaPayDepositData_initiatePawaPayDeposit
    implements
        Built<GinitiatePawaPayDepositData_initiatePawaPayDeposit,
            GinitiatePawaPayDepositData_initiatePawaPayDepositBuilder> {
  GinitiatePawaPayDepositData_initiatePawaPayDeposit._();

  factory GinitiatePawaPayDepositData_initiatePawaPayDeposit(
      [void Function(
              GinitiatePawaPayDepositData_initiatePawaPayDepositBuilder b)
          updates]) = _$GinitiatePawaPayDepositData_initiatePawaPayDeposit;

  static void _initializeBuilder(
          GinitiatePawaPayDepositData_initiatePawaPayDepositBuilder b) =>
      b..G__typename = 'PawaPayDeposit';

  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  int? get status;
  String? get errorMessage;
  String? get depositId;
  String? get paymentStatus;
  static Serializer<GinitiatePawaPayDepositData_initiatePawaPayDeposit>
      get serializer =>
          _$ginitiatePawaPayDepositDataInitiatePawaPayDepositSerializer;

  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GinitiatePawaPayDepositData_initiatePawaPayDeposit.serializer,
        this,
      ) as Map<String, dynamic>);

  static GinitiatePawaPayDepositData_initiatePawaPayDeposit? fromJson(
          Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GinitiatePawaPayDepositData_initiatePawaPayDeposit.serializer,
        json,
      );
}

abstract class GgetPawaPayDepositStatusData
    implements
        Built<GgetPawaPayDepositStatusData,
            GgetPawaPayDepositStatusDataBuilder> {
  GgetPawaPayDepositStatusData._();

  factory GgetPawaPayDepositStatusData(
          [void Function(GgetPawaPayDepositStatusDataBuilder b) updates]) =
      _$GgetPawaPayDepositStatusData;

  static void _initializeBuilder(GgetPawaPayDepositStatusDataBuilder b) =>
      b..G__typename = 'Query';

  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  GgetPawaPayDepositStatusData_getPawaPayDepositStatus?
      get getPawaPayDepositStatus;
  static Serializer<GgetPawaPayDepositStatusData> get serializer =>
      _$ggetPawaPayDepositStatusDataSerializer;

  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GgetPawaPayDepositStatusData.serializer,
        this,
      ) as Map<String, dynamic>);

  static GgetPawaPayDepositStatusData? fromJson(Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GgetPawaPayDepositStatusData.serializer,
        json,
      );
}

abstract class GgetPawaPayDepositStatusData_getPawaPayDepositStatus
    implements
        Built<GgetPawaPayDepositStatusData_getPawaPayDepositStatus,
            GgetPawaPayDepositStatusData_getPawaPayDepositStatusBuilder> {
  GgetPawaPayDepositStatusData_getPawaPayDepositStatus._();

  factory GgetPawaPayDepositStatusData_getPawaPayDepositStatus(
      [void Function(
              GgetPawaPayDepositStatusData_getPawaPayDepositStatusBuilder b)
          updates]) = _$GgetPawaPayDepositStatusData_getPawaPayDepositStatus;

  static void _initializeBuilder(
          GgetPawaPayDepositStatusData_getPawaPayDepositStatusBuilder b) =>
      b..G__typename = 'PawaPayDeposit';

  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  int? get status;
  String? get errorMessage;
  String? get paymentStatus;
  GgetPawaPayDepositStatusData_getPawaPayDepositStatus_reservation?
      get reservation;
  static Serializer<GgetPawaPayDepositStatusData_getPawaPayDepositStatus>
      get serializer =>
          _$ggetPawaPayDepositStatusDataGetPawaPayDepositStatusSerializer;

  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GgetPawaPayDepositStatusData_getPawaPayDepositStatus.serializer,
        this,
      ) as Map<String, dynamic>);

  static GgetPawaPayDepositStatusData_getPawaPayDepositStatus? fromJson(
          Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GgetPawaPayDepositStatusData_getPawaPayDepositStatus.serializer,
        json,
      );
}

abstract class GgetPawaPayDepositStatusData_getPawaPayDepositStatus_reservation
    implements
        Built<GgetPawaPayDepositStatusData_getPawaPayDepositStatus_reservation,
            GgetPawaPayDepositStatusData_getPawaPayDepositStatus_reservationBuilder> {
  GgetPawaPayDepositStatusData_getPawaPayDepositStatus_reservation._();

  factory GgetPawaPayDepositStatusData_getPawaPayDepositStatus_reservation(
          [void Function(
                  GgetPawaPayDepositStatusData_getPawaPayDepositStatus_reservationBuilder
                      b)
              updates]) =
      _$GgetPawaPayDepositStatusData_getPawaPayDepositStatus_reservation;

  static void _initializeBuilder(
          GgetPawaPayDepositStatusData_getPawaPayDepositStatus_reservationBuilder
              b) =>
      b..G__typename = 'Reservation';

  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  int? get id;
  String? get paymentState;
  String? get reservationState;
  static Serializer<
          GgetPawaPayDepositStatusData_getPawaPayDepositStatus_reservation>
      get serializer =>
          _$ggetPawaPayDepositStatusDataGetPawaPayDepositStatusReservationSerializer;

  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GgetPawaPayDepositStatusData_getPawaPayDepositStatus_reservation
            .serializer,
        this,
      ) as Map<String, dynamic>);

  static GgetPawaPayDepositStatusData_getPawaPayDepositStatus_reservation?
      fromJson(Map<String, dynamic> json) => _i1.serializers.deserializeWith(
            GgetPawaPayDepositStatusData_getPawaPayDepositStatus_reservation
                .serializer,
            json,
          );
}

abstract class GaddPawaPayPayoutAccountData
    implements
        Built<GaddPawaPayPayoutAccountData,
            GaddPawaPayPayoutAccountDataBuilder> {
  GaddPawaPayPayoutAccountData._();

  factory GaddPawaPayPayoutAccountData(
          [void Function(GaddPawaPayPayoutAccountDataBuilder b) updates]) =
      _$GaddPawaPayPayoutAccountData;

  static void _initializeBuilder(GaddPawaPayPayoutAccountDataBuilder b) =>
      b..G__typename = 'Mutation';

  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  GaddPawaPayPayoutAccountData_addPawaPayPayoutAccount?
      get addPawaPayPayoutAccount;
  static Serializer<GaddPawaPayPayoutAccountData> get serializer =>
      _$gaddPawaPayPayoutAccountDataSerializer;

  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GaddPawaPayPayoutAccountData.serializer,
        this,
      ) as Map<String, dynamic>);

  static GaddPawaPayPayoutAccountData? fromJson(Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GaddPawaPayPayoutAccountData.serializer,
        json,
      );
}

abstract class GaddPawaPayPayoutAccountData_addPawaPayPayoutAccount
    implements
        Built<GaddPawaPayPayoutAccountData_addPawaPayPayoutAccount,
            GaddPawaPayPayoutAccountData_addPawaPayPayoutAccountBuilder> {
  GaddPawaPayPayoutAccountData_addPawaPayPayoutAccount._();

  factory GaddPawaPayPayoutAccountData_addPawaPayPayoutAccount(
      [void Function(
              GaddPawaPayPayoutAccountData_addPawaPayPayoutAccountBuilder b)
          updates]) = _$GaddPawaPayPayoutAccountData_addPawaPayPayoutAccount;

  static void _initializeBuilder(
          GaddPawaPayPayoutAccountData_addPawaPayPayoutAccountBuilder b) =>
      b..G__typename = 'PawaPayPayoutAccount';

  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  int? get status;
  String? get errorMessage;
  GaddPawaPayPayoutAccountData_addPawaPayPayoutAccount_result? get result;
  static Serializer<GaddPawaPayPayoutAccountData_addPawaPayPayoutAccount>
      get serializer =>
          _$gaddPawaPayPayoutAccountDataAddPawaPayPayoutAccountSerializer;

  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GaddPawaPayPayoutAccountData_addPawaPayPayoutAccount.serializer,
        this,
      ) as Map<String, dynamic>);

  static GaddPawaPayPayoutAccountData_addPawaPayPayoutAccount? fromJson(
          Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GaddPawaPayPayoutAccountData_addPawaPayPayoutAccount.serializer,
        json,
      );
}

abstract class GaddPawaPayPayoutAccountData_addPawaPayPayoutAccount_result
    implements
        Built<GaddPawaPayPayoutAccountData_addPawaPayPayoutAccount_result,
            GaddPawaPayPayoutAccountData_addPawaPayPayoutAccount_resultBuilder> {
  GaddPawaPayPayoutAccountData_addPawaPayPayoutAccount_result._();

  factory GaddPawaPayPayoutAccountData_addPawaPayPayoutAccount_result(
      [void Function(
              GaddPawaPayPayoutAccountData_addPawaPayPayoutAccount_resultBuilder
                  b)
          updates]) = _$GaddPawaPayPayoutAccountData_addPawaPayPayoutAccount_result;

  static void _initializeBuilder(
          GaddPawaPayPayoutAccountData_addPawaPayPayoutAccount_resultBuilder
              b) =>
      b..G__typename = 'Payout';

  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  int? get id;
  int? get methodId;
  String? get payEmail;
  String? get address1;
  String? get country;
  String? get currency;
  @BuiltValueField(wireName: 'default')
  bool? get Gdefault;
  bool? get isVerified;
  static Serializer<GaddPawaPayPayoutAccountData_addPawaPayPayoutAccount_result>
      get serializer =>
          _$gaddPawaPayPayoutAccountDataAddPawaPayPayoutAccountResultSerializer;

  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GaddPawaPayPayoutAccountData_addPawaPayPayoutAccount_result.serializer,
        this,
      ) as Map<String, dynamic>);

  static GaddPawaPayPayoutAccountData_addPawaPayPayoutAccount_result? fromJson(
          Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GaddPawaPayPayoutAccountData_addPawaPayPayoutAccount_result.serializer,
        json,
      );
}
