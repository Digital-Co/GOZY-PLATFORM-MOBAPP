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
