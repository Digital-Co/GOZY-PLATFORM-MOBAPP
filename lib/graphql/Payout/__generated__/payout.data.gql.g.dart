// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'payout.data.gql.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<GgetPayoutsData> _$ggetPayoutsDataSerializer =
    new _$GgetPayoutsDataSerializer();
Serializer<GgetPayoutsData_getPayouts> _$ggetPayoutsDataGetPayoutsSerializer =
    new _$GgetPayoutsData_getPayoutsSerializer();
Serializer<GgetPayoutsData_getPayouts_results>
    _$ggetPayoutsDataGetPayoutsResultsSerializer =
    new _$GgetPayoutsData_getPayouts_resultsSerializer();
Serializer<GgetPayoutsData_getPayouts_results_paymentMethod>
    _$ggetPayoutsDataGetPayoutsResultsPaymentMethodSerializer =
    new _$GgetPayoutsData_getPayouts_results_paymentMethodSerializer();
Serializer<GconfirmPayoutData> _$gconfirmPayoutDataSerializer =
    new _$GconfirmPayoutDataSerializer();
Serializer<GconfirmPayoutData_confirmPayout>
    _$gconfirmPayoutDataConfirmPayoutSerializer =
    new _$GconfirmPayoutData_confirmPayoutSerializer();
Serializer<GsetDefaultPayoutData> _$gsetDefaultPayoutDataSerializer =
    new _$GsetDefaultPayoutDataSerializer();
Serializer<GsetDefaultPayoutData_setDefaultPayout>
    _$gsetDefaultPayoutDataSetDefaultPayoutSerializer =
    new _$GsetDefaultPayoutData_setDefaultPayoutSerializer();
Serializer<GgetPaymentMethodsData> _$ggetPaymentMethodsDataSerializer =
    new _$GgetPaymentMethodsDataSerializer();
Serializer<GgetPaymentMethodsData_getPaymentMethods>
    _$ggetPaymentMethodsDataGetPaymentMethodsSerializer =
    new _$GgetPaymentMethodsData_getPaymentMethodsSerializer();
Serializer<GgetPaymentMethodsData_getPaymentMethods_results>
    _$ggetPaymentMethodsDataGetPaymentMethodsResultsSerializer =
    new _$GgetPaymentMethodsData_getPaymentMethods_resultsSerializer();
Serializer<GaddPayoutData> _$gaddPayoutDataSerializer =
    new _$GaddPayoutDataSerializer();
Serializer<GaddPayoutData_addPayout> _$gaddPayoutDataAddPayoutSerializer =
    new _$GaddPayoutData_addPayoutSerializer();
Serializer<GverifyPayoutData> _$gverifyPayoutDataSerializer =
    new _$GverifyPayoutDataSerializer();
Serializer<GverifyPayoutData_verifyPayout>
    _$gverifyPayoutDataVerifyPayoutSerializer =
    new _$GverifyPayoutData_verifyPayoutSerializer();
Serializer<GgetPawaPayOptionsData> _$ggetPawaPayOptionsDataSerializer =
    new _$GgetPawaPayOptionsDataSerializer();
Serializer<GgetPawaPayOptionsData_getPawaPayOptions>
    _$ggetPawaPayOptionsDataGetPawaPayOptionsSerializer =
    new _$GgetPawaPayOptionsData_getPawaPayOptionsSerializer();
Serializer<GgetPawaPayOptionsData_getPawaPayOptions_countries>
    _$ggetPawaPayOptionsDataGetPawaPayOptionsCountriesSerializer =
    new _$GgetPawaPayOptionsData_getPawaPayOptions_countriesSerializer();
Serializer<GgetPawaPayOptionsData_getPawaPayOptions_countries_currencies>
    _$ggetPawaPayOptionsDataGetPawaPayOptionsCountriesCurrenciesSerializer =
    new _$GgetPawaPayOptionsData_getPawaPayOptions_countries_currenciesSerializer();
Serializer<
        GgetPawaPayOptionsData_getPawaPayOptions_countries_currencies_providers>
    _$ggetPawaPayOptionsDataGetPawaPayOptionsCountriesCurrenciesProvidersSerializer =
    new _$GgetPawaPayOptionsData_getPawaPayOptions_countries_currencies_providersSerializer();
Serializer<GinitiatePawaPayDepositData>
    _$ginitiatePawaPayDepositDataSerializer =
    new _$GinitiatePawaPayDepositDataSerializer();
Serializer<GinitiatePawaPayDepositData_initiatePawaPayDeposit>
    _$ginitiatePawaPayDepositDataInitiatePawaPayDepositSerializer =
    new _$GinitiatePawaPayDepositData_initiatePawaPayDepositSerializer();
Serializer<GgetPawaPayDepositStatusData>
    _$ggetPawaPayDepositStatusDataSerializer =
    new _$GgetPawaPayDepositStatusDataSerializer();
Serializer<GgetPawaPayDepositStatusData_getPawaPayDepositStatus>
    _$ggetPawaPayDepositStatusDataGetPawaPayDepositStatusSerializer =
    new _$GgetPawaPayDepositStatusData_getPawaPayDepositStatusSerializer();
Serializer<GgetPawaPayDepositStatusData_getPawaPayDepositStatus_reservation>
    _$ggetPawaPayDepositStatusDataGetPawaPayDepositStatusReservationSerializer =
    new _$GgetPawaPayDepositStatusData_getPawaPayDepositStatus_reservationSerializer();
Serializer<GaddPawaPayPayoutAccountData>
    _$gaddPawaPayPayoutAccountDataSerializer =
    new _$GaddPawaPayPayoutAccountDataSerializer();
Serializer<GaddPawaPayPayoutAccountData_addPawaPayPayoutAccount>
    _$gaddPawaPayPayoutAccountDataAddPawaPayPayoutAccountSerializer =
    new _$GaddPawaPayPayoutAccountData_addPawaPayPayoutAccountSerializer();
Serializer<GaddPawaPayPayoutAccountData_addPawaPayPayoutAccount_result>
    _$gaddPawaPayPayoutAccountDataAddPawaPayPayoutAccountResultSerializer =
    new _$GaddPawaPayPayoutAccountData_addPawaPayPayoutAccount_resultSerializer();

class _$GgetPayoutsDataSerializer
    implements StructuredSerializer<GgetPayoutsData> {
  @override
  final Iterable<Type> types = const [GgetPayoutsData, _$GgetPayoutsData];
  @override
  final String wireName = 'GgetPayoutsData';

  @override
  Iterable<Object?> serialize(Serializers serializers, GgetPayoutsData object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      '__typename',
      serializers.serialize(object.G__typename,
          specifiedType: const FullType(String)),
    ];
    Object? value;
    value = object.getPayouts;
    if (value != null) {
      result
        ..add('getPayouts')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(GgetPayoutsData_getPayouts)));
    }
    return result;
  }

  @override
  GgetPayoutsData deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GgetPayoutsDataBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case '__typename':
          result.G__typename = serializers.deserialize(value,
              specifiedType: const FullType(String))! as String;
          break;
        case 'getPayouts':
          result.getPayouts.replace(serializers.deserialize(value,
                  specifiedType: const FullType(GgetPayoutsData_getPayouts))!
              as GgetPayoutsData_getPayouts);
          break;
      }
    }

    return result.build();
  }
}

class _$GgetPayoutsData_getPayoutsSerializer
    implements StructuredSerializer<GgetPayoutsData_getPayouts> {
  @override
  final Iterable<Type> types = const [
    GgetPayoutsData_getPayouts,
    _$GgetPayoutsData_getPayouts
  ];
  @override
  final String wireName = 'GgetPayoutsData_getPayouts';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, GgetPayoutsData_getPayouts object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      '__typename',
      serializers.serialize(object.G__typename,
          specifiedType: const FullType(String)),
    ];
    Object? value;
    value = object.results;
    if (value != null) {
      result
        ..add('results')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(BuiltList, const [
              const FullType.nullable(GgetPayoutsData_getPayouts_results)
            ])));
    }
    value = object.status;
    if (value != null) {
      result
        ..add('status')
        ..add(serializers.serialize(value, specifiedType: const FullType(int)));
    }
    value = object.errorMessage;
    if (value != null) {
      result
        ..add('errorMessage')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    return result;
  }

  @override
  GgetPayoutsData_getPayouts deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GgetPayoutsData_getPayoutsBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case '__typename':
          result.G__typename = serializers.deserialize(value,
              specifiedType: const FullType(String))! as String;
          break;
        case 'results':
          result.results.replace(serializers.deserialize(value,
              specifiedType: const FullType(BuiltList, const [
                const FullType.nullable(GgetPayoutsData_getPayouts_results)
              ]))! as BuiltList<Object?>);
          break;
        case 'status':
          result.status = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int?;
          break;
        case 'errorMessage':
          result.errorMessage = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
      }
    }

    return result.build();
  }
}

class _$GgetPayoutsData_getPayouts_resultsSerializer
    implements StructuredSerializer<GgetPayoutsData_getPayouts_results> {
  @override
  final Iterable<Type> types = const [
    GgetPayoutsData_getPayouts_results,
    _$GgetPayoutsData_getPayouts_results
  ];
  @override
  final String wireName = 'GgetPayoutsData_getPayouts_results';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, GgetPayoutsData_getPayouts_results object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      '__typename',
      serializers.serialize(object.G__typename,
          specifiedType: const FullType(String)),
    ];
    Object? value;
    value = object.id;
    if (value != null) {
      result
        ..add('id')
        ..add(serializers.serialize(value, specifiedType: const FullType(int)));
    }
    value = object.methodId;
    if (value != null) {
      result
        ..add('methodId')
        ..add(serializers.serialize(value, specifiedType: const FullType(int)));
    }
    value = object.paymentMethod;
    if (value != null) {
      result
        ..add('paymentMethod')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(
                GgetPayoutsData_getPayouts_results_paymentMethod)));
    }
    value = object.userId;
    if (value != null) {
      result
        ..add('userId')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.payEmail;
    if (value != null) {
      result
        ..add('payEmail')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.address1;
    if (value != null) {
      result
        ..add('address1')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.address2;
    if (value != null) {
      result
        ..add('address2')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.city;
    if (value != null) {
      result
        ..add('city')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.Gdefault;
    if (value != null) {
      result
        ..add('default')
        ..add(
            serializers.serialize(value, specifiedType: const FullType(bool)));
    }
    value = object.state;
    if (value != null) {
      result
        ..add('state')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.country;
    if (value != null) {
      result
        ..add('country')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.zipcode;
    if (value != null) {
      result
        ..add('zipcode')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.currency;
    if (value != null) {
      result
        ..add('currency')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.createdAt;
    if (value != null) {
      result
        ..add('createdAt')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.last4Digits;
    if (value != null) {
      result
        ..add('last4Digits')
        ..add(serializers.serialize(value, specifiedType: const FullType(int)));
    }
    value = object.isVerified;
    if (value != null) {
      result
        ..add('isVerified')
        ..add(
            serializers.serialize(value, specifiedType: const FullType(bool)));
    }
    value = object.status;
    if (value != null) {
      result
        ..add('status')
        ..add(serializers.serialize(value, specifiedType: const FullType(int)));
    }
    return result;
  }

  @override
  GgetPayoutsData_getPayouts_results deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GgetPayoutsData_getPayouts_resultsBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case '__typename':
          result.G__typename = serializers.deserialize(value,
              specifiedType: const FullType(String))! as String;
          break;
        case 'id':
          result.id = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int?;
          break;
        case 'methodId':
          result.methodId = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int?;
          break;
        case 'paymentMethod':
          result.paymentMethod.replace(serializers.deserialize(value,
                  specifiedType: const FullType(
                      GgetPayoutsData_getPayouts_results_paymentMethod))!
              as GgetPayoutsData_getPayouts_results_paymentMethod);
          break;
        case 'userId':
          result.userId = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'payEmail':
          result.payEmail = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'address1':
          result.address1 = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'address2':
          result.address2 = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'city':
          result.city = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'default':
          result.Gdefault = serializers.deserialize(value,
              specifiedType: const FullType(bool)) as bool?;
          break;
        case 'state':
          result.state = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'country':
          result.country = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'zipcode':
          result.zipcode = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'currency':
          result.currency = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'createdAt':
          result.createdAt = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'last4Digits':
          result.last4Digits = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int?;
          break;
        case 'isVerified':
          result.isVerified = serializers.deserialize(value,
              specifiedType: const FullType(bool)) as bool?;
          break;
        case 'status':
          result.status = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int?;
          break;
      }
    }

    return result.build();
  }
}

class _$GgetPayoutsData_getPayouts_results_paymentMethodSerializer
    implements
        StructuredSerializer<GgetPayoutsData_getPayouts_results_paymentMethod> {
  @override
  final Iterable<Type> types = const [
    GgetPayoutsData_getPayouts_results_paymentMethod,
    _$GgetPayoutsData_getPayouts_results_paymentMethod
  ];
  @override
  final String wireName = 'GgetPayoutsData_getPayouts_results_paymentMethod';

  @override
  Iterable<Object?> serialize(Serializers serializers,
      GgetPayoutsData_getPayouts_results_paymentMethod object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      '__typename',
      serializers.serialize(object.G__typename,
          specifiedType: const FullType(String)),
    ];
    Object? value;
    value = object.id;
    if (value != null) {
      result
        ..add('id')
        ..add(serializers.serialize(value, specifiedType: const FullType(int)));
    }
    value = object.name;
    if (value != null) {
      result
        ..add('name')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    return result;
  }

  @override
  GgetPayoutsData_getPayouts_results_paymentMethod deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result =
        new GgetPayoutsData_getPayouts_results_paymentMethodBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case '__typename':
          result.G__typename = serializers.deserialize(value,
              specifiedType: const FullType(String))! as String;
          break;
        case 'id':
          result.id = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int?;
          break;
        case 'name':
          result.name = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
      }
    }

    return result.build();
  }
}

class _$GconfirmPayoutDataSerializer
    implements StructuredSerializer<GconfirmPayoutData> {
  @override
  final Iterable<Type> types = const [GconfirmPayoutData, _$GconfirmPayoutData];
  @override
  final String wireName = 'GconfirmPayoutData';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, GconfirmPayoutData object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      '__typename',
      serializers.serialize(object.G__typename,
          specifiedType: const FullType(String)),
    ];
    Object? value;
    value = object.confirmPayout;
    if (value != null) {
      result
        ..add('confirmPayout')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(GconfirmPayoutData_confirmPayout)));
    }
    return result;
  }

  @override
  GconfirmPayoutData deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GconfirmPayoutDataBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case '__typename':
          result.G__typename = serializers.deserialize(value,
              specifiedType: const FullType(String))! as String;
          break;
        case 'confirmPayout':
          result.confirmPayout.replace(serializers.deserialize(value,
                  specifiedType:
                      const FullType(GconfirmPayoutData_confirmPayout))!
              as GconfirmPayoutData_confirmPayout);
          break;
      }
    }

    return result.build();
  }
}

class _$GconfirmPayoutData_confirmPayoutSerializer
    implements StructuredSerializer<GconfirmPayoutData_confirmPayout> {
  @override
  final Iterable<Type> types = const [
    GconfirmPayoutData_confirmPayout,
    _$GconfirmPayoutData_confirmPayout
  ];
  @override
  final String wireName = 'GconfirmPayoutData_confirmPayout';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, GconfirmPayoutData_confirmPayout object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      '__typename',
      serializers.serialize(object.G__typename,
          specifiedType: const FullType(String)),
    ];
    Object? value;
    value = object.status;
    if (value != null) {
      result
        ..add('status')
        ..add(serializers.serialize(value, specifiedType: const FullType(int)));
    }
    value = object.errorMessage;
    if (value != null) {
      result
        ..add('errorMessage')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    return result;
  }

  @override
  GconfirmPayoutData_confirmPayout deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GconfirmPayoutData_confirmPayoutBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case '__typename':
          result.G__typename = serializers.deserialize(value,
              specifiedType: const FullType(String))! as String;
          break;
        case 'status':
          result.status = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int?;
          break;
        case 'errorMessage':
          result.errorMessage = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
      }
    }

    return result.build();
  }
}

class _$GsetDefaultPayoutDataSerializer
    implements StructuredSerializer<GsetDefaultPayoutData> {
  @override
  final Iterable<Type> types = const [
    GsetDefaultPayoutData,
    _$GsetDefaultPayoutData
  ];
  @override
  final String wireName = 'GsetDefaultPayoutData';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, GsetDefaultPayoutData object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      '__typename',
      serializers.serialize(object.G__typename,
          specifiedType: const FullType(String)),
    ];
    Object? value;
    value = object.setDefaultPayout;
    if (value != null) {
      result
        ..add('setDefaultPayout')
        ..add(serializers.serialize(value,
            specifiedType:
                const FullType(GsetDefaultPayoutData_setDefaultPayout)));
    }
    return result;
  }

  @override
  GsetDefaultPayoutData deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GsetDefaultPayoutDataBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case '__typename':
          result.G__typename = serializers.deserialize(value,
              specifiedType: const FullType(String))! as String;
          break;
        case 'setDefaultPayout':
          result.setDefaultPayout.replace(serializers.deserialize(value,
                  specifiedType:
                      const FullType(GsetDefaultPayoutData_setDefaultPayout))!
              as GsetDefaultPayoutData_setDefaultPayout);
          break;
      }
    }

    return result.build();
  }
}

class _$GsetDefaultPayoutData_setDefaultPayoutSerializer
    implements StructuredSerializer<GsetDefaultPayoutData_setDefaultPayout> {
  @override
  final Iterable<Type> types = const [
    GsetDefaultPayoutData_setDefaultPayout,
    _$GsetDefaultPayoutData_setDefaultPayout
  ];
  @override
  final String wireName = 'GsetDefaultPayoutData_setDefaultPayout';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, GsetDefaultPayoutData_setDefaultPayout object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      '__typename',
      serializers.serialize(object.G__typename,
          specifiedType: const FullType(String)),
    ];
    Object? value;
    value = object.status;
    if (value != null) {
      result
        ..add('status')
        ..add(serializers.serialize(value, specifiedType: const FullType(int)));
    }
    value = object.errorMessage;
    if (value != null) {
      result
        ..add('errorMessage')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    return result;
  }

  @override
  GsetDefaultPayoutData_setDefaultPayout deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GsetDefaultPayoutData_setDefaultPayoutBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case '__typename':
          result.G__typename = serializers.deserialize(value,
              specifiedType: const FullType(String))! as String;
          break;
        case 'status':
          result.status = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int?;
          break;
        case 'errorMessage':
          result.errorMessage = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
      }
    }

    return result.build();
  }
}

class _$GgetPaymentMethodsDataSerializer
    implements StructuredSerializer<GgetPaymentMethodsData> {
  @override
  final Iterable<Type> types = const [
    GgetPaymentMethodsData,
    _$GgetPaymentMethodsData
  ];
  @override
  final String wireName = 'GgetPaymentMethodsData';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, GgetPaymentMethodsData object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      '__typename',
      serializers.serialize(object.G__typename,
          specifiedType: const FullType(String)),
    ];
    Object? value;
    value = object.getPaymentMethods;
    if (value != null) {
      result
        ..add('getPaymentMethods')
        ..add(serializers.serialize(value,
            specifiedType:
                const FullType(GgetPaymentMethodsData_getPaymentMethods)));
    }
    return result;
  }

  @override
  GgetPaymentMethodsData deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GgetPaymentMethodsDataBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case '__typename':
          result.G__typename = serializers.deserialize(value,
              specifiedType: const FullType(String))! as String;
          break;
        case 'getPaymentMethods':
          result.getPaymentMethods.replace(serializers.deserialize(value,
                  specifiedType:
                      const FullType(GgetPaymentMethodsData_getPaymentMethods))!
              as GgetPaymentMethodsData_getPaymentMethods);
          break;
      }
    }

    return result.build();
  }
}

class _$GgetPaymentMethodsData_getPaymentMethodsSerializer
    implements StructuredSerializer<GgetPaymentMethodsData_getPaymentMethods> {
  @override
  final Iterable<Type> types = const [
    GgetPaymentMethodsData_getPaymentMethods,
    _$GgetPaymentMethodsData_getPaymentMethods
  ];
  @override
  final String wireName = 'GgetPaymentMethodsData_getPaymentMethods';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, GgetPaymentMethodsData_getPaymentMethods object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      '__typename',
      serializers.serialize(object.G__typename,
          specifiedType: const FullType(String)),
    ];
    Object? value;
    value = object.results;
    if (value != null) {
      result
        ..add('results')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(BuiltList, const [
              const FullType.nullable(
                  GgetPaymentMethodsData_getPaymentMethods_results)
            ])));
    }
    value = object.status;
    if (value != null) {
      result
        ..add('status')
        ..add(serializers.serialize(value, specifiedType: const FullType(int)));
    }
    value = object.errorMessage;
    if (value != null) {
      result
        ..add('errorMessage')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    return result;
  }

  @override
  GgetPaymentMethodsData_getPaymentMethods deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GgetPaymentMethodsData_getPaymentMethodsBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case '__typename':
          result.G__typename = serializers.deserialize(value,
              specifiedType: const FullType(String))! as String;
          break;
        case 'results':
          result.results.replace(serializers.deserialize(value,
              specifiedType: const FullType(BuiltList, const [
                const FullType.nullable(
                    GgetPaymentMethodsData_getPaymentMethods_results)
              ]))! as BuiltList<Object?>);
          break;
        case 'status':
          result.status = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int?;
          break;
        case 'errorMessage':
          result.errorMessage = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
      }
    }

    return result.build();
  }
}

class _$GgetPaymentMethodsData_getPaymentMethods_resultsSerializer
    implements
        StructuredSerializer<GgetPaymentMethodsData_getPaymentMethods_results> {
  @override
  final Iterable<Type> types = const [
    GgetPaymentMethodsData_getPaymentMethods_results,
    _$GgetPaymentMethodsData_getPaymentMethods_results
  ];
  @override
  final String wireName = 'GgetPaymentMethodsData_getPaymentMethods_results';

  @override
  Iterable<Object?> serialize(Serializers serializers,
      GgetPaymentMethodsData_getPaymentMethods_results object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      '__typename',
      serializers.serialize(object.G__typename,
          specifiedType: const FullType(String)),
    ];
    Object? value;
    value = object.id;
    if (value != null) {
      result
        ..add('id')
        ..add(serializers.serialize(value, specifiedType: const FullType(int)));
    }
    value = object.name;
    if (value != null) {
      result
        ..add('name')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.processedIn;
    if (value != null) {
      result
        ..add('processedIn')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.fees;
    if (value != null) {
      result
        ..add('fees')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.currency;
    if (value != null) {
      result
        ..add('currency')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.details;
    if (value != null) {
      result
        ..add('details')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.isEnable;
    if (value != null) {
      result
        ..add('isEnable')
        ..add(
            serializers.serialize(value, specifiedType: const FullType(bool)));
    }
    value = object.paymentType;
    if (value != null) {
      result
        ..add('paymentType')
        ..add(serializers.serialize(value, specifiedType: const FullType(int)));
    }
    value = object.imageUrl;
    if (value != null) {
      result
        ..add('imageUrl')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    return result;
  }

  @override
  GgetPaymentMethodsData_getPaymentMethods_results deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result =
        new GgetPaymentMethodsData_getPaymentMethods_resultsBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case '__typename':
          result.G__typename = serializers.deserialize(value,
              specifiedType: const FullType(String))! as String;
          break;
        case 'id':
          result.id = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int?;
          break;
        case 'name':
          result.name = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'processedIn':
          result.processedIn = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'fees':
          result.fees = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'currency':
          result.currency = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'details':
          result.details = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'isEnable':
          result.isEnable = serializers.deserialize(value,
              specifiedType: const FullType(bool)) as bool?;
          break;
        case 'paymentType':
          result.paymentType = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int?;
          break;
        case 'imageUrl':
          result.imageUrl = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
      }
    }

    return result.build();
  }
}

class _$GaddPayoutDataSerializer
    implements StructuredSerializer<GaddPayoutData> {
  @override
  final Iterable<Type> types = const [GaddPayoutData, _$GaddPayoutData];
  @override
  final String wireName = 'GaddPayoutData';

  @override
  Iterable<Object?> serialize(Serializers serializers, GaddPayoutData object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      '__typename',
      serializers.serialize(object.G__typename,
          specifiedType: const FullType(String)),
    ];
    Object? value;
    value = object.addPayout;
    if (value != null) {
      result
        ..add('addPayout')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(GaddPayoutData_addPayout)));
    }
    return result;
  }

  @override
  GaddPayoutData deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GaddPayoutDataBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case '__typename':
          result.G__typename = serializers.deserialize(value,
              specifiedType: const FullType(String))! as String;
          break;
        case 'addPayout':
          result.addPayout.replace(serializers.deserialize(value,
                  specifiedType: const FullType(GaddPayoutData_addPayout))!
              as GaddPayoutData_addPayout);
          break;
      }
    }

    return result.build();
  }
}

class _$GaddPayoutData_addPayoutSerializer
    implements StructuredSerializer<GaddPayoutData_addPayout> {
  @override
  final Iterable<Type> types = const [
    GaddPayoutData_addPayout,
    _$GaddPayoutData_addPayout
  ];
  @override
  final String wireName = 'GaddPayoutData_addPayout';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, GaddPayoutData_addPayout object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      '__typename',
      serializers.serialize(object.G__typename,
          specifiedType: const FullType(String)),
    ];
    Object? value;
    value = object.status;
    if (value != null) {
      result
        ..add('status')
        ..add(serializers.serialize(value, specifiedType: const FullType(int)));
    }
    value = object.errorMessage;
    if (value != null) {
      result
        ..add('errorMessage')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.connectUrl;
    if (value != null) {
      result
        ..add('connectUrl')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.successUrl;
    if (value != null) {
      result
        ..add('successUrl')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.failureUrl;
    if (value != null) {
      result
        ..add('failureUrl')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.stripeAccountId;
    if (value != null) {
      result
        ..add('stripeAccountId')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    return result;
  }

  @override
  GaddPayoutData_addPayout deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GaddPayoutData_addPayoutBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case '__typename':
          result.G__typename = serializers.deserialize(value,
              specifiedType: const FullType(String))! as String;
          break;
        case 'status':
          result.status = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int?;
          break;
        case 'errorMessage':
          result.errorMessage = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'connectUrl':
          result.connectUrl = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'successUrl':
          result.successUrl = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'failureUrl':
          result.failureUrl = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'stripeAccountId':
          result.stripeAccountId = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
      }
    }

    return result.build();
  }
}

class _$GverifyPayoutDataSerializer
    implements StructuredSerializer<GverifyPayoutData> {
  @override
  final Iterable<Type> types = const [GverifyPayoutData, _$GverifyPayoutData];
  @override
  final String wireName = 'GverifyPayoutData';

  @override
  Iterable<Object?> serialize(Serializers serializers, GverifyPayoutData object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      '__typename',
      serializers.serialize(object.G__typename,
          specifiedType: const FullType(String)),
    ];
    Object? value;
    value = object.verifyPayout;
    if (value != null) {
      result
        ..add('verifyPayout')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(GverifyPayoutData_verifyPayout)));
    }
    return result;
  }

  @override
  GverifyPayoutData deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GverifyPayoutDataBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case '__typename':
          result.G__typename = serializers.deserialize(value,
              specifiedType: const FullType(String))! as String;
          break;
        case 'verifyPayout':
          result.verifyPayout.replace(serializers.deserialize(value,
                  specifiedType:
                      const FullType(GverifyPayoutData_verifyPayout))!
              as GverifyPayoutData_verifyPayout);
          break;
      }
    }

    return result.build();
  }
}

class _$GverifyPayoutData_verifyPayoutSerializer
    implements StructuredSerializer<GverifyPayoutData_verifyPayout> {
  @override
  final Iterable<Type> types = const [
    GverifyPayoutData_verifyPayout,
    _$GverifyPayoutData_verifyPayout
  ];
  @override
  final String wireName = 'GverifyPayoutData_verifyPayout';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, GverifyPayoutData_verifyPayout object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      '__typename',
      serializers.serialize(object.G__typename,
          specifiedType: const FullType(String)),
    ];
    Object? value;
    value = object.status;
    if (value != null) {
      result
        ..add('status')
        ..add(serializers.serialize(value, specifiedType: const FullType(int)));
    }
    value = object.errorMessage;
    if (value != null) {
      result
        ..add('errorMessage')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.connectUrl;
    if (value != null) {
      result
        ..add('connectUrl')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.successUrl;
    if (value != null) {
      result
        ..add('successUrl')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.failureUrl;
    if (value != null) {
      result
        ..add('failureUrl')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.stripeAccountId;
    if (value != null) {
      result
        ..add('stripeAccountId')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    return result;
  }

  @override
  GverifyPayoutData_verifyPayout deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GverifyPayoutData_verifyPayoutBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case '__typename':
          result.G__typename = serializers.deserialize(value,
              specifiedType: const FullType(String))! as String;
          break;
        case 'status':
          result.status = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int?;
          break;
        case 'errorMessage':
          result.errorMessage = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'connectUrl':
          result.connectUrl = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'successUrl':
          result.successUrl = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'failureUrl':
          result.failureUrl = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'stripeAccountId':
          result.stripeAccountId = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
      }
    }

    return result.build();
  }
}

class _$GgetPawaPayOptionsDataSerializer
    implements StructuredSerializer<GgetPawaPayOptionsData> {
  @override
  final Iterable<Type> types = const [
    GgetPawaPayOptionsData,
    _$GgetPawaPayOptionsData
  ];
  @override
  final String wireName = 'GgetPawaPayOptionsData';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, GgetPawaPayOptionsData object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      '__typename',
      serializers.serialize(object.G__typename,
          specifiedType: const FullType(String)),
    ];
    Object? value;
    value = object.getPawaPayOptions;
    if (value != null) {
      result
        ..add('getPawaPayOptions')
        ..add(serializers.serialize(value,
            specifiedType:
                const FullType(GgetPawaPayOptionsData_getPawaPayOptions)));
    }
    return result;
  }

  @override
  GgetPawaPayOptionsData deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GgetPawaPayOptionsDataBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case '__typename':
          result.G__typename = serializers.deserialize(value,
              specifiedType: const FullType(String))! as String;
          break;
        case 'getPawaPayOptions':
          result.getPawaPayOptions.replace(serializers.deserialize(value,
                  specifiedType:
                      const FullType(GgetPawaPayOptionsData_getPawaPayOptions))!
              as GgetPawaPayOptionsData_getPawaPayOptions);
          break;
      }
    }

    return result.build();
  }
}

class _$GgetPawaPayOptionsData_getPawaPayOptionsSerializer
    implements StructuredSerializer<GgetPawaPayOptionsData_getPawaPayOptions> {
  @override
  final Iterable<Type> types = const [
    GgetPawaPayOptionsData_getPawaPayOptions,
    _$GgetPawaPayOptionsData_getPawaPayOptions
  ];
  @override
  final String wireName = 'GgetPawaPayOptionsData_getPawaPayOptions';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, GgetPawaPayOptionsData_getPawaPayOptions object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      '__typename',
      serializers.serialize(object.G__typename,
          specifiedType: const FullType(String)),
    ];
    Object? value;
    value = object.status;
    if (value != null) {
      result
        ..add('status')
        ..add(serializers.serialize(value, specifiedType: const FullType(int)));
    }
    value = object.errorMessage;
    if (value != null) {
      result
        ..add('errorMessage')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.recommendedCountry;
    if (value != null) {
      result
        ..add('recommendedCountry')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.countries;
    if (value != null) {
      result
        ..add('countries')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(BuiltList, const [
              const FullType.nullable(
                  GgetPawaPayOptionsData_getPawaPayOptions_countries)
            ])));
    }
    return result;
  }

  @override
  GgetPawaPayOptionsData_getPawaPayOptions deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GgetPawaPayOptionsData_getPawaPayOptionsBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case '__typename':
          result.G__typename = serializers.deserialize(value,
              specifiedType: const FullType(String))! as String;
          break;
        case 'status':
          result.status = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int?;
          break;
        case 'errorMessage':
          result.errorMessage = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'recommendedCountry':
          result.recommendedCountry = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'countries':
          result.countries.replace(serializers.deserialize(value,
              specifiedType: const FullType(BuiltList, const [
                const FullType.nullable(
                    GgetPawaPayOptionsData_getPawaPayOptions_countries)
              ]))! as BuiltList<Object?>);
          break;
      }
    }

    return result.build();
  }
}

class _$GgetPawaPayOptionsData_getPawaPayOptions_countriesSerializer
    implements
        StructuredSerializer<
            GgetPawaPayOptionsData_getPawaPayOptions_countries> {
  @override
  final Iterable<Type> types = const [
    GgetPawaPayOptionsData_getPawaPayOptions_countries,
    _$GgetPawaPayOptionsData_getPawaPayOptions_countries
  ];
  @override
  final String wireName = 'GgetPawaPayOptionsData_getPawaPayOptions_countries';

  @override
  Iterable<Object?> serialize(Serializers serializers,
      GgetPawaPayOptionsData_getPawaPayOptions_countries object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      '__typename',
      serializers.serialize(object.G__typename,
          specifiedType: const FullType(String)),
    ];
    Object? value;
    value = object.country;
    if (value != null) {
      result
        ..add('country')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.displayName;
    if (value != null) {
      result
        ..add('displayName')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.prefix;
    if (value != null) {
      result
        ..add('prefix')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.flag;
    if (value != null) {
      result
        ..add('flag')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.currencies;
    if (value != null) {
      result
        ..add('currencies')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(BuiltList, const [
              const FullType.nullable(
                  GgetPawaPayOptionsData_getPawaPayOptions_countries_currencies)
            ])));
    }
    return result;
  }

  @override
  GgetPawaPayOptionsData_getPawaPayOptions_countries deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result =
        new GgetPawaPayOptionsData_getPawaPayOptions_countriesBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case '__typename':
          result.G__typename = serializers.deserialize(value,
              specifiedType: const FullType(String))! as String;
          break;
        case 'country':
          result.country = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'displayName':
          result.displayName = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'prefix':
          result.prefix = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'flag':
          result.flag = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'currencies':
          result.currencies.replace(serializers.deserialize(value,
              specifiedType: const FullType(BuiltList, const [
                const FullType.nullable(
                    GgetPawaPayOptionsData_getPawaPayOptions_countries_currencies)
              ]))! as BuiltList<Object?>);
          break;
      }
    }

    return result.build();
  }
}

class _$GgetPawaPayOptionsData_getPawaPayOptions_countries_currenciesSerializer
    implements
        StructuredSerializer<
            GgetPawaPayOptionsData_getPawaPayOptions_countries_currencies> {
  @override
  final Iterable<Type> types = const [
    GgetPawaPayOptionsData_getPawaPayOptions_countries_currencies,
    _$GgetPawaPayOptionsData_getPawaPayOptions_countries_currencies
  ];
  @override
  final String wireName =
      'GgetPawaPayOptionsData_getPawaPayOptions_countries_currencies';

  @override
  Iterable<Object?> serialize(Serializers serializers,
      GgetPawaPayOptionsData_getPawaPayOptions_countries_currencies object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      '__typename',
      serializers.serialize(object.G__typename,
          specifiedType: const FullType(String)),
    ];
    Object? value;
    value = object.currency;
    if (value != null) {
      result
        ..add('currency')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.providers;
    if (value != null) {
      result
        ..add('providers')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(BuiltList, const [
              const FullType.nullable(
                  GgetPawaPayOptionsData_getPawaPayOptions_countries_currencies_providers)
            ])));
    }
    return result;
  }

  @override
  GgetPawaPayOptionsData_getPawaPayOptions_countries_currencies deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result =
        new GgetPawaPayOptionsData_getPawaPayOptions_countries_currenciesBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case '__typename':
          result.G__typename = serializers.deserialize(value,
              specifiedType: const FullType(String))! as String;
          break;
        case 'currency':
          result.currency = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'providers':
          result.providers.replace(serializers.deserialize(value,
              specifiedType: const FullType(BuiltList, const [
                const FullType.nullable(
                    GgetPawaPayOptionsData_getPawaPayOptions_countries_currencies_providers)
              ]))! as BuiltList<Object?>);
          break;
      }
    }

    return result.build();
  }
}

class _$GgetPawaPayOptionsData_getPawaPayOptions_countries_currencies_providersSerializer
    implements
        StructuredSerializer<
            GgetPawaPayOptionsData_getPawaPayOptions_countries_currencies_providers> {
  @override
  final Iterable<Type> types = const [
    GgetPawaPayOptionsData_getPawaPayOptions_countries_currencies_providers,
    _$GgetPawaPayOptionsData_getPawaPayOptions_countries_currencies_providers
  ];
  @override
  final String wireName =
      'GgetPawaPayOptionsData_getPawaPayOptions_countries_currencies_providers';

  @override
  Iterable<Object?> serialize(
      Serializers serializers,
      GgetPawaPayOptionsData_getPawaPayOptions_countries_currencies_providers
          object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      '__typename',
      serializers.serialize(object.G__typename,
          specifiedType: const FullType(String)),
    ];
    Object? value;
    value = object.provider;
    if (value != null) {
      result
        ..add('provider')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.displayName;
    if (value != null) {
      result
        ..add('displayName')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    return result;
  }

  @override
  GgetPawaPayOptionsData_getPawaPayOptions_countries_currencies_providers
      deserialize(Serializers serializers, Iterable<Object?> serialized,
          {FullType specifiedType = FullType.unspecified}) {
    final result =
        new GgetPawaPayOptionsData_getPawaPayOptions_countries_currencies_providersBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case '__typename':
          result.G__typename = serializers.deserialize(value,
              specifiedType: const FullType(String))! as String;
          break;
        case 'provider':
          result.provider = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'displayName':
          result.displayName = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
      }
    }

    return result.build();
  }
}

class _$GinitiatePawaPayDepositDataSerializer
    implements StructuredSerializer<GinitiatePawaPayDepositData> {
  @override
  final Iterable<Type> types = const [
    GinitiatePawaPayDepositData,
    _$GinitiatePawaPayDepositData
  ];
  @override
  final String wireName = 'GinitiatePawaPayDepositData';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, GinitiatePawaPayDepositData object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      '__typename',
      serializers.serialize(object.G__typename,
          specifiedType: const FullType(String)),
    ];
    Object? value;
    value = object.initiatePawaPayDeposit;
    if (value != null) {
      result
        ..add('initiatePawaPayDeposit')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(
                GinitiatePawaPayDepositData_initiatePawaPayDeposit)));
    }
    return result;
  }

  @override
  GinitiatePawaPayDepositData deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GinitiatePawaPayDepositDataBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case '__typename':
          result.G__typename = serializers.deserialize(value,
              specifiedType: const FullType(String))! as String;
          break;
        case 'initiatePawaPayDeposit':
          result.initiatePawaPayDeposit.replace(serializers.deserialize(value,
                  specifiedType: const FullType(
                      GinitiatePawaPayDepositData_initiatePawaPayDeposit))!
              as GinitiatePawaPayDepositData_initiatePawaPayDeposit);
          break;
      }
    }

    return result.build();
  }
}

class _$GinitiatePawaPayDepositData_initiatePawaPayDepositSerializer
    implements
        StructuredSerializer<
            GinitiatePawaPayDepositData_initiatePawaPayDeposit> {
  @override
  final Iterable<Type> types = const [
    GinitiatePawaPayDepositData_initiatePawaPayDeposit,
    _$GinitiatePawaPayDepositData_initiatePawaPayDeposit
  ];
  @override
  final String wireName = 'GinitiatePawaPayDepositData_initiatePawaPayDeposit';

  @override
  Iterable<Object?> serialize(Serializers serializers,
      GinitiatePawaPayDepositData_initiatePawaPayDeposit object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      '__typename',
      serializers.serialize(object.G__typename,
          specifiedType: const FullType(String)),
    ];
    Object? value;
    value = object.status;
    if (value != null) {
      result
        ..add('status')
        ..add(serializers.serialize(value, specifiedType: const FullType(int)));
    }
    value = object.errorMessage;
    if (value != null) {
      result
        ..add('errorMessage')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.depositId;
    if (value != null) {
      result
        ..add('depositId')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.paymentStatus;
    if (value != null) {
      result
        ..add('paymentStatus')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    return result;
  }

  @override
  GinitiatePawaPayDepositData_initiatePawaPayDeposit deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result =
        new GinitiatePawaPayDepositData_initiatePawaPayDepositBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case '__typename':
          result.G__typename = serializers.deserialize(value,
              specifiedType: const FullType(String))! as String;
          break;
        case 'status':
          result.status = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int?;
          break;
        case 'errorMessage':
          result.errorMessage = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'depositId':
          result.depositId = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'paymentStatus':
          result.paymentStatus = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
      }
    }

    return result.build();
  }
}

class _$GgetPawaPayDepositStatusDataSerializer
    implements StructuredSerializer<GgetPawaPayDepositStatusData> {
  @override
  final Iterable<Type> types = const [
    GgetPawaPayDepositStatusData,
    _$GgetPawaPayDepositStatusData
  ];
  @override
  final String wireName = 'GgetPawaPayDepositStatusData';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, GgetPawaPayDepositStatusData object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      '__typename',
      serializers.serialize(object.G__typename,
          specifiedType: const FullType(String)),
    ];
    Object? value;
    value = object.getPawaPayDepositStatus;
    if (value != null) {
      result
        ..add('getPawaPayDepositStatus')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(
                GgetPawaPayDepositStatusData_getPawaPayDepositStatus)));
    }
    return result;
  }

  @override
  GgetPawaPayDepositStatusData deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GgetPawaPayDepositStatusDataBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case '__typename':
          result.G__typename = serializers.deserialize(value,
              specifiedType: const FullType(String))! as String;
          break;
        case 'getPawaPayDepositStatus':
          result.getPawaPayDepositStatus.replace(serializers.deserialize(value,
                  specifiedType: const FullType(
                      GgetPawaPayDepositStatusData_getPawaPayDepositStatus))!
              as GgetPawaPayDepositStatusData_getPawaPayDepositStatus);
          break;
      }
    }

    return result.build();
  }
}

class _$GgetPawaPayDepositStatusData_getPawaPayDepositStatusSerializer
    implements
        StructuredSerializer<
            GgetPawaPayDepositStatusData_getPawaPayDepositStatus> {
  @override
  final Iterable<Type> types = const [
    GgetPawaPayDepositStatusData_getPawaPayDepositStatus,
    _$GgetPawaPayDepositStatusData_getPawaPayDepositStatus
  ];
  @override
  final String wireName =
      'GgetPawaPayDepositStatusData_getPawaPayDepositStatus';

  @override
  Iterable<Object?> serialize(Serializers serializers,
      GgetPawaPayDepositStatusData_getPawaPayDepositStatus object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      '__typename',
      serializers.serialize(object.G__typename,
          specifiedType: const FullType(String)),
    ];
    Object? value;
    value = object.status;
    if (value != null) {
      result
        ..add('status')
        ..add(serializers.serialize(value, specifiedType: const FullType(int)));
    }
    value = object.errorMessage;
    if (value != null) {
      result
        ..add('errorMessage')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.paymentStatus;
    if (value != null) {
      result
        ..add('paymentStatus')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.reservation;
    if (value != null) {
      result
        ..add('reservation')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(
                GgetPawaPayDepositStatusData_getPawaPayDepositStatus_reservation)));
    }
    return result;
  }

  @override
  GgetPawaPayDepositStatusData_getPawaPayDepositStatus deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result =
        new GgetPawaPayDepositStatusData_getPawaPayDepositStatusBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case '__typename':
          result.G__typename = serializers.deserialize(value,
              specifiedType: const FullType(String))! as String;
          break;
        case 'status':
          result.status = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int?;
          break;
        case 'errorMessage':
          result.errorMessage = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'paymentStatus':
          result.paymentStatus = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'reservation':
          result.reservation.replace(serializers.deserialize(value,
                  specifiedType: const FullType(
                      GgetPawaPayDepositStatusData_getPawaPayDepositStatus_reservation))!
              as GgetPawaPayDepositStatusData_getPawaPayDepositStatus_reservation);
          break;
      }
    }

    return result.build();
  }
}

class _$GgetPawaPayDepositStatusData_getPawaPayDepositStatus_reservationSerializer
    implements
        StructuredSerializer<
            GgetPawaPayDepositStatusData_getPawaPayDepositStatus_reservation> {
  @override
  final Iterable<Type> types = const [
    GgetPawaPayDepositStatusData_getPawaPayDepositStatus_reservation,
    _$GgetPawaPayDepositStatusData_getPawaPayDepositStatus_reservation
  ];
  @override
  final String wireName =
      'GgetPawaPayDepositStatusData_getPawaPayDepositStatus_reservation';

  @override
  Iterable<Object?> serialize(Serializers serializers,
      GgetPawaPayDepositStatusData_getPawaPayDepositStatus_reservation object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      '__typename',
      serializers.serialize(object.G__typename,
          specifiedType: const FullType(String)),
    ];
    Object? value;
    value = object.id;
    if (value != null) {
      result
        ..add('id')
        ..add(serializers.serialize(value, specifiedType: const FullType(int)));
    }
    value = object.paymentState;
    if (value != null) {
      result
        ..add('paymentState')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.reservationState;
    if (value != null) {
      result
        ..add('reservationState')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    return result;
  }

  @override
  GgetPawaPayDepositStatusData_getPawaPayDepositStatus_reservation deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result =
        new GgetPawaPayDepositStatusData_getPawaPayDepositStatus_reservationBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case '__typename':
          result.G__typename = serializers.deserialize(value,
              specifiedType: const FullType(String))! as String;
          break;
        case 'id':
          result.id = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int?;
          break;
        case 'paymentState':
          result.paymentState = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'reservationState':
          result.reservationState = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
      }
    }

    return result.build();
  }
}

class _$GaddPawaPayPayoutAccountDataSerializer
    implements StructuredSerializer<GaddPawaPayPayoutAccountData> {
  @override
  final Iterable<Type> types = const [
    GaddPawaPayPayoutAccountData,
    _$GaddPawaPayPayoutAccountData
  ];
  @override
  final String wireName = 'GaddPawaPayPayoutAccountData';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, GaddPawaPayPayoutAccountData object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      '__typename',
      serializers.serialize(object.G__typename,
          specifiedType: const FullType(String)),
    ];
    Object? value;
    value = object.addPawaPayPayoutAccount;
    if (value != null) {
      result
        ..add('addPawaPayPayoutAccount')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(
                GaddPawaPayPayoutAccountData_addPawaPayPayoutAccount)));
    }
    return result;
  }

  @override
  GaddPawaPayPayoutAccountData deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GaddPawaPayPayoutAccountDataBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case '__typename':
          result.G__typename = serializers.deserialize(value,
              specifiedType: const FullType(String))! as String;
          break;
        case 'addPawaPayPayoutAccount':
          result.addPawaPayPayoutAccount.replace(serializers.deserialize(value,
                  specifiedType: const FullType(
                      GaddPawaPayPayoutAccountData_addPawaPayPayoutAccount))!
              as GaddPawaPayPayoutAccountData_addPawaPayPayoutAccount);
          break;
      }
    }

    return result.build();
  }
}

class _$GaddPawaPayPayoutAccountData_addPawaPayPayoutAccountSerializer
    implements
        StructuredSerializer<
            GaddPawaPayPayoutAccountData_addPawaPayPayoutAccount> {
  @override
  final Iterable<Type> types = const [
    GaddPawaPayPayoutAccountData_addPawaPayPayoutAccount,
    _$GaddPawaPayPayoutAccountData_addPawaPayPayoutAccount
  ];
  @override
  final String wireName =
      'GaddPawaPayPayoutAccountData_addPawaPayPayoutAccount';

  @override
  Iterable<Object?> serialize(Serializers serializers,
      GaddPawaPayPayoutAccountData_addPawaPayPayoutAccount object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      '__typename',
      serializers.serialize(object.G__typename,
          specifiedType: const FullType(String)),
    ];
    Object? value;
    value = object.status;
    if (value != null) {
      result
        ..add('status')
        ..add(serializers.serialize(value, specifiedType: const FullType(int)));
    }
    value = object.errorMessage;
    if (value != null) {
      result
        ..add('errorMessage')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.result;
    if (value != null) {
      result
        ..add('result')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(
                GaddPawaPayPayoutAccountData_addPawaPayPayoutAccount_result)));
    }
    return result;
  }

  @override
  GaddPawaPayPayoutAccountData_addPawaPayPayoutAccount deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result =
        new GaddPawaPayPayoutAccountData_addPawaPayPayoutAccountBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case '__typename':
          result.G__typename = serializers.deserialize(value,
              specifiedType: const FullType(String))! as String;
          break;
        case 'status':
          result.status = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int?;
          break;
        case 'errorMessage':
          result.errorMessage = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'result':
          result.result.replace(serializers.deserialize(value,
                  specifiedType: const FullType(
                      GaddPawaPayPayoutAccountData_addPawaPayPayoutAccount_result))!
              as GaddPawaPayPayoutAccountData_addPawaPayPayoutAccount_result);
          break;
      }
    }

    return result.build();
  }
}

class _$GaddPawaPayPayoutAccountData_addPawaPayPayoutAccount_resultSerializer
    implements
        StructuredSerializer<
            GaddPawaPayPayoutAccountData_addPawaPayPayoutAccount_result> {
  @override
  final Iterable<Type> types = const [
    GaddPawaPayPayoutAccountData_addPawaPayPayoutAccount_result,
    _$GaddPawaPayPayoutAccountData_addPawaPayPayoutAccount_result
  ];
  @override
  final String wireName =
      'GaddPawaPayPayoutAccountData_addPawaPayPayoutAccount_result';

  @override
  Iterable<Object?> serialize(Serializers serializers,
      GaddPawaPayPayoutAccountData_addPawaPayPayoutAccount_result object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      '__typename',
      serializers.serialize(object.G__typename,
          specifiedType: const FullType(String)),
    ];
    Object? value;
    value = object.id;
    if (value != null) {
      result
        ..add('id')
        ..add(serializers.serialize(value, specifiedType: const FullType(int)));
    }
    value = object.methodId;
    if (value != null) {
      result
        ..add('methodId')
        ..add(serializers.serialize(value, specifiedType: const FullType(int)));
    }
    value = object.payEmail;
    if (value != null) {
      result
        ..add('payEmail')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.address1;
    if (value != null) {
      result
        ..add('address1')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.country;
    if (value != null) {
      result
        ..add('country')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.currency;
    if (value != null) {
      result
        ..add('currency')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.Gdefault;
    if (value != null) {
      result
        ..add('default')
        ..add(
            serializers.serialize(value, specifiedType: const FullType(bool)));
    }
    value = object.isVerified;
    if (value != null) {
      result
        ..add('isVerified')
        ..add(
            serializers.serialize(value, specifiedType: const FullType(bool)));
    }
    return result;
  }

  @override
  GaddPawaPayPayoutAccountData_addPawaPayPayoutAccount_result deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result =
        new GaddPawaPayPayoutAccountData_addPawaPayPayoutAccount_resultBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case '__typename':
          result.G__typename = serializers.deserialize(value,
              specifiedType: const FullType(String))! as String;
          break;
        case 'id':
          result.id = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int?;
          break;
        case 'methodId':
          result.methodId = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int?;
          break;
        case 'payEmail':
          result.payEmail = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'address1':
          result.address1 = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'country':
          result.country = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'currency':
          result.currency = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'default':
          result.Gdefault = serializers.deserialize(value,
              specifiedType: const FullType(bool)) as bool?;
          break;
        case 'isVerified':
          result.isVerified = serializers.deserialize(value,
              specifiedType: const FullType(bool)) as bool?;
          break;
      }
    }

    return result.build();
  }
}

class _$GgetPayoutsData extends GgetPayoutsData {
  @override
  final String G__typename;
  @override
  final GgetPayoutsData_getPayouts? getPayouts;

  factory _$GgetPayoutsData([void Function(GgetPayoutsDataBuilder)? updates]) =>
      (new GgetPayoutsDataBuilder()..update(updates))._build();

  _$GgetPayoutsData._({required this.G__typename, this.getPayouts})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        G__typename, r'GgetPayoutsData', 'G__typename');
  }

  @override
  GgetPayoutsData rebuild(void Function(GgetPayoutsDataBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GgetPayoutsDataBuilder toBuilder() =>
      new GgetPayoutsDataBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GgetPayoutsData &&
        G__typename == other.G__typename &&
        getPayouts == other.getPayouts;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, G__typename.hashCode);
    _$hash = $jc(_$hash, getPayouts.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'GgetPayoutsData')
          ..add('G__typename', G__typename)
          ..add('getPayouts', getPayouts))
        .toString();
  }
}

class GgetPayoutsDataBuilder
    implements Builder<GgetPayoutsData, GgetPayoutsDataBuilder> {
  _$GgetPayoutsData? _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  GgetPayoutsData_getPayoutsBuilder? _getPayouts;
  GgetPayoutsData_getPayoutsBuilder get getPayouts =>
      _$this._getPayouts ??= new GgetPayoutsData_getPayoutsBuilder();
  set getPayouts(GgetPayoutsData_getPayoutsBuilder? getPayouts) =>
      _$this._getPayouts = getPayouts;

  GgetPayoutsDataBuilder() {
    GgetPayoutsData._initializeBuilder(this);
  }

  GgetPayoutsDataBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _G__typename = $v.G__typename;
      _getPayouts = $v.getPayouts?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GgetPayoutsData other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GgetPayoutsData;
  }

  @override
  void update(void Function(GgetPayoutsDataBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GgetPayoutsData build() => _build();

  _$GgetPayoutsData _build() {
    _$GgetPayoutsData _$result;
    try {
      _$result = _$v ??
          new _$GgetPayoutsData._(
              G__typename: BuiltValueNullFieldError.checkNotNull(
                  G__typename, r'GgetPayoutsData', 'G__typename'),
              getPayouts: _getPayouts?.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'getPayouts';
        _getPayouts?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'GgetPayoutsData', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

class _$GgetPayoutsData_getPayouts extends GgetPayoutsData_getPayouts {
  @override
  final String G__typename;
  @override
  final BuiltList<GgetPayoutsData_getPayouts_results?>? results;
  @override
  final int? status;
  @override
  final String? errorMessage;

  factory _$GgetPayoutsData_getPayouts(
          [void Function(GgetPayoutsData_getPayoutsBuilder)? updates]) =>
      (new GgetPayoutsData_getPayoutsBuilder()..update(updates))._build();

  _$GgetPayoutsData_getPayouts._(
      {required this.G__typename, this.results, this.status, this.errorMessage})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        G__typename, r'GgetPayoutsData_getPayouts', 'G__typename');
  }

  @override
  GgetPayoutsData_getPayouts rebuild(
          void Function(GgetPayoutsData_getPayoutsBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GgetPayoutsData_getPayoutsBuilder toBuilder() =>
      new GgetPayoutsData_getPayoutsBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GgetPayoutsData_getPayouts &&
        G__typename == other.G__typename &&
        results == other.results &&
        status == other.status &&
        errorMessage == other.errorMessage;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, G__typename.hashCode);
    _$hash = $jc(_$hash, results.hashCode);
    _$hash = $jc(_$hash, status.hashCode);
    _$hash = $jc(_$hash, errorMessage.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'GgetPayoutsData_getPayouts')
          ..add('G__typename', G__typename)
          ..add('results', results)
          ..add('status', status)
          ..add('errorMessage', errorMessage))
        .toString();
  }
}

class GgetPayoutsData_getPayoutsBuilder
    implements
        Builder<GgetPayoutsData_getPayouts, GgetPayoutsData_getPayoutsBuilder> {
  _$GgetPayoutsData_getPayouts? _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  ListBuilder<GgetPayoutsData_getPayouts_results?>? _results;
  ListBuilder<GgetPayoutsData_getPayouts_results?> get results =>
      _$this._results ??=
          new ListBuilder<GgetPayoutsData_getPayouts_results?>();
  set results(ListBuilder<GgetPayoutsData_getPayouts_results?>? results) =>
      _$this._results = results;

  int? _status;
  int? get status => _$this._status;
  set status(int? status) => _$this._status = status;

  String? _errorMessage;
  String? get errorMessage => _$this._errorMessage;
  set errorMessage(String? errorMessage) => _$this._errorMessage = errorMessage;

  GgetPayoutsData_getPayoutsBuilder() {
    GgetPayoutsData_getPayouts._initializeBuilder(this);
  }

  GgetPayoutsData_getPayoutsBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _G__typename = $v.G__typename;
      _results = $v.results?.toBuilder();
      _status = $v.status;
      _errorMessage = $v.errorMessage;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GgetPayoutsData_getPayouts other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GgetPayoutsData_getPayouts;
  }

  @override
  void update(void Function(GgetPayoutsData_getPayoutsBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GgetPayoutsData_getPayouts build() => _build();

  _$GgetPayoutsData_getPayouts _build() {
    _$GgetPayoutsData_getPayouts _$result;
    try {
      _$result = _$v ??
          new _$GgetPayoutsData_getPayouts._(
              G__typename: BuiltValueNullFieldError.checkNotNull(
                  G__typename, r'GgetPayoutsData_getPayouts', 'G__typename'),
              results: _results?.build(),
              status: status,
              errorMessage: errorMessage);
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'results';
        _results?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'GgetPayoutsData_getPayouts', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

class _$GgetPayoutsData_getPayouts_results
    extends GgetPayoutsData_getPayouts_results {
  @override
  final String G__typename;
  @override
  final int? id;
  @override
  final int? methodId;
  @override
  final GgetPayoutsData_getPayouts_results_paymentMethod? paymentMethod;
  @override
  final String? userId;
  @override
  final String? payEmail;
  @override
  final String? address1;
  @override
  final String? address2;
  @override
  final String? city;
  @override
  final bool? Gdefault;
  @override
  final String? state;
  @override
  final String? country;
  @override
  final String? zipcode;
  @override
  final String? currency;
  @override
  final String? createdAt;
  @override
  final int? last4Digits;
  @override
  final bool? isVerified;
  @override
  final int? status;

  factory _$GgetPayoutsData_getPayouts_results(
          [void Function(GgetPayoutsData_getPayouts_resultsBuilder)?
              updates]) =>
      (new GgetPayoutsData_getPayouts_resultsBuilder()..update(updates))
          ._build();

  _$GgetPayoutsData_getPayouts_results._(
      {required this.G__typename,
      this.id,
      this.methodId,
      this.paymentMethod,
      this.userId,
      this.payEmail,
      this.address1,
      this.address2,
      this.city,
      this.Gdefault,
      this.state,
      this.country,
      this.zipcode,
      this.currency,
      this.createdAt,
      this.last4Digits,
      this.isVerified,
      this.status})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        G__typename, r'GgetPayoutsData_getPayouts_results', 'G__typename');
  }

  @override
  GgetPayoutsData_getPayouts_results rebuild(
          void Function(GgetPayoutsData_getPayouts_resultsBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GgetPayoutsData_getPayouts_resultsBuilder toBuilder() =>
      new GgetPayoutsData_getPayouts_resultsBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GgetPayoutsData_getPayouts_results &&
        G__typename == other.G__typename &&
        id == other.id &&
        methodId == other.methodId &&
        paymentMethod == other.paymentMethod &&
        userId == other.userId &&
        payEmail == other.payEmail &&
        address1 == other.address1 &&
        address2 == other.address2 &&
        city == other.city &&
        Gdefault == other.Gdefault &&
        state == other.state &&
        country == other.country &&
        zipcode == other.zipcode &&
        currency == other.currency &&
        createdAt == other.createdAt &&
        last4Digits == other.last4Digits &&
        isVerified == other.isVerified &&
        status == other.status;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, G__typename.hashCode);
    _$hash = $jc(_$hash, id.hashCode);
    _$hash = $jc(_$hash, methodId.hashCode);
    _$hash = $jc(_$hash, paymentMethod.hashCode);
    _$hash = $jc(_$hash, userId.hashCode);
    _$hash = $jc(_$hash, payEmail.hashCode);
    _$hash = $jc(_$hash, address1.hashCode);
    _$hash = $jc(_$hash, address2.hashCode);
    _$hash = $jc(_$hash, city.hashCode);
    _$hash = $jc(_$hash, Gdefault.hashCode);
    _$hash = $jc(_$hash, state.hashCode);
    _$hash = $jc(_$hash, country.hashCode);
    _$hash = $jc(_$hash, zipcode.hashCode);
    _$hash = $jc(_$hash, currency.hashCode);
    _$hash = $jc(_$hash, createdAt.hashCode);
    _$hash = $jc(_$hash, last4Digits.hashCode);
    _$hash = $jc(_$hash, isVerified.hashCode);
    _$hash = $jc(_$hash, status.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'GgetPayoutsData_getPayouts_results')
          ..add('G__typename', G__typename)
          ..add('id', id)
          ..add('methodId', methodId)
          ..add('paymentMethod', paymentMethod)
          ..add('userId', userId)
          ..add('payEmail', payEmail)
          ..add('address1', address1)
          ..add('address2', address2)
          ..add('city', city)
          ..add('Gdefault', Gdefault)
          ..add('state', state)
          ..add('country', country)
          ..add('zipcode', zipcode)
          ..add('currency', currency)
          ..add('createdAt', createdAt)
          ..add('last4Digits', last4Digits)
          ..add('isVerified', isVerified)
          ..add('status', status))
        .toString();
  }
}

class GgetPayoutsData_getPayouts_resultsBuilder
    implements
        Builder<GgetPayoutsData_getPayouts_results,
            GgetPayoutsData_getPayouts_resultsBuilder> {
  _$GgetPayoutsData_getPayouts_results? _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  int? _id;
  int? get id => _$this._id;
  set id(int? id) => _$this._id = id;

  int? _methodId;
  int? get methodId => _$this._methodId;
  set methodId(int? methodId) => _$this._methodId = methodId;

  GgetPayoutsData_getPayouts_results_paymentMethodBuilder? _paymentMethod;
  GgetPayoutsData_getPayouts_results_paymentMethodBuilder get paymentMethod =>
      _$this._paymentMethod ??=
          new GgetPayoutsData_getPayouts_results_paymentMethodBuilder();
  set paymentMethod(
          GgetPayoutsData_getPayouts_results_paymentMethodBuilder?
              paymentMethod) =>
      _$this._paymentMethod = paymentMethod;

  String? _userId;
  String? get userId => _$this._userId;
  set userId(String? userId) => _$this._userId = userId;

  String? _payEmail;
  String? get payEmail => _$this._payEmail;
  set payEmail(String? payEmail) => _$this._payEmail = payEmail;

  String? _address1;
  String? get address1 => _$this._address1;
  set address1(String? address1) => _$this._address1 = address1;

  String? _address2;
  String? get address2 => _$this._address2;
  set address2(String? address2) => _$this._address2 = address2;

  String? _city;
  String? get city => _$this._city;
  set city(String? city) => _$this._city = city;

  bool? _Gdefault;
  bool? get Gdefault => _$this._Gdefault;
  set Gdefault(bool? Gdefault) => _$this._Gdefault = Gdefault;

  String? _state;
  String? get state => _$this._state;
  set state(String? state) => _$this._state = state;

  String? _country;
  String? get country => _$this._country;
  set country(String? country) => _$this._country = country;

  String? _zipcode;
  String? get zipcode => _$this._zipcode;
  set zipcode(String? zipcode) => _$this._zipcode = zipcode;

  String? _currency;
  String? get currency => _$this._currency;
  set currency(String? currency) => _$this._currency = currency;

  String? _createdAt;
  String? get createdAt => _$this._createdAt;
  set createdAt(String? createdAt) => _$this._createdAt = createdAt;

  int? _last4Digits;
  int? get last4Digits => _$this._last4Digits;
  set last4Digits(int? last4Digits) => _$this._last4Digits = last4Digits;

  bool? _isVerified;
  bool? get isVerified => _$this._isVerified;
  set isVerified(bool? isVerified) => _$this._isVerified = isVerified;

  int? _status;
  int? get status => _$this._status;
  set status(int? status) => _$this._status = status;

  GgetPayoutsData_getPayouts_resultsBuilder() {
    GgetPayoutsData_getPayouts_results._initializeBuilder(this);
  }

  GgetPayoutsData_getPayouts_resultsBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _G__typename = $v.G__typename;
      _id = $v.id;
      _methodId = $v.methodId;
      _paymentMethod = $v.paymentMethod?.toBuilder();
      _userId = $v.userId;
      _payEmail = $v.payEmail;
      _address1 = $v.address1;
      _address2 = $v.address2;
      _city = $v.city;
      _Gdefault = $v.Gdefault;
      _state = $v.state;
      _country = $v.country;
      _zipcode = $v.zipcode;
      _currency = $v.currency;
      _createdAt = $v.createdAt;
      _last4Digits = $v.last4Digits;
      _isVerified = $v.isVerified;
      _status = $v.status;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GgetPayoutsData_getPayouts_results other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GgetPayoutsData_getPayouts_results;
  }

  @override
  void update(
      void Function(GgetPayoutsData_getPayouts_resultsBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GgetPayoutsData_getPayouts_results build() => _build();

  _$GgetPayoutsData_getPayouts_results _build() {
    _$GgetPayoutsData_getPayouts_results _$result;
    try {
      _$result = _$v ??
          new _$GgetPayoutsData_getPayouts_results._(
              G__typename: BuiltValueNullFieldError.checkNotNull(G__typename,
                  r'GgetPayoutsData_getPayouts_results', 'G__typename'),
              id: id,
              methodId: methodId,
              paymentMethod: _paymentMethod?.build(),
              userId: userId,
              payEmail: payEmail,
              address1: address1,
              address2: address2,
              city: city,
              Gdefault: Gdefault,
              state: state,
              country: country,
              zipcode: zipcode,
              currency: currency,
              createdAt: createdAt,
              last4Digits: last4Digits,
              isVerified: isVerified,
              status: status);
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'paymentMethod';
        _paymentMethod?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'GgetPayoutsData_getPayouts_results', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

class _$GgetPayoutsData_getPayouts_results_paymentMethod
    extends GgetPayoutsData_getPayouts_results_paymentMethod {
  @override
  final String G__typename;
  @override
  final int? id;
  @override
  final String? name;

  factory _$GgetPayoutsData_getPayouts_results_paymentMethod(
          [void Function(
                  GgetPayoutsData_getPayouts_results_paymentMethodBuilder)?
              updates]) =>
      (new GgetPayoutsData_getPayouts_results_paymentMethodBuilder()
            ..update(updates))
          ._build();

  _$GgetPayoutsData_getPayouts_results_paymentMethod._(
      {required this.G__typename, this.id, this.name})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(G__typename,
        r'GgetPayoutsData_getPayouts_results_paymentMethod', 'G__typename');
  }

  @override
  GgetPayoutsData_getPayouts_results_paymentMethod rebuild(
          void Function(GgetPayoutsData_getPayouts_results_paymentMethodBuilder)
              updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GgetPayoutsData_getPayouts_results_paymentMethodBuilder toBuilder() =>
      new GgetPayoutsData_getPayouts_results_paymentMethodBuilder()
        ..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GgetPayoutsData_getPayouts_results_paymentMethod &&
        G__typename == other.G__typename &&
        id == other.id &&
        name == other.name;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, G__typename.hashCode);
    _$hash = $jc(_$hash, id.hashCode);
    _$hash = $jc(_$hash, name.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(
            r'GgetPayoutsData_getPayouts_results_paymentMethod')
          ..add('G__typename', G__typename)
          ..add('id', id)
          ..add('name', name))
        .toString();
  }
}

class GgetPayoutsData_getPayouts_results_paymentMethodBuilder
    implements
        Builder<GgetPayoutsData_getPayouts_results_paymentMethod,
            GgetPayoutsData_getPayouts_results_paymentMethodBuilder> {
  _$GgetPayoutsData_getPayouts_results_paymentMethod? _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  int? _id;
  int? get id => _$this._id;
  set id(int? id) => _$this._id = id;

  String? _name;
  String? get name => _$this._name;
  set name(String? name) => _$this._name = name;

  GgetPayoutsData_getPayouts_results_paymentMethodBuilder() {
    GgetPayoutsData_getPayouts_results_paymentMethod._initializeBuilder(this);
  }

  GgetPayoutsData_getPayouts_results_paymentMethodBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _G__typename = $v.G__typename;
      _id = $v.id;
      _name = $v.name;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GgetPayoutsData_getPayouts_results_paymentMethod other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GgetPayoutsData_getPayouts_results_paymentMethod;
  }

  @override
  void update(
      void Function(GgetPayoutsData_getPayouts_results_paymentMethodBuilder)?
          updates) {
    if (updates != null) updates(this);
  }

  @override
  GgetPayoutsData_getPayouts_results_paymentMethod build() => _build();

  _$GgetPayoutsData_getPayouts_results_paymentMethod _build() {
    final _$result = _$v ??
        new _$GgetPayoutsData_getPayouts_results_paymentMethod._(
            G__typename: BuiltValueNullFieldError.checkNotNull(
                G__typename,
                r'GgetPayoutsData_getPayouts_results_paymentMethod',
                'G__typename'),
            id: id,
            name: name);
    replace(_$result);
    return _$result;
  }
}

class _$GconfirmPayoutData extends GconfirmPayoutData {
  @override
  final String G__typename;
  @override
  final GconfirmPayoutData_confirmPayout? confirmPayout;

  factory _$GconfirmPayoutData(
          [void Function(GconfirmPayoutDataBuilder)? updates]) =>
      (new GconfirmPayoutDataBuilder()..update(updates))._build();

  _$GconfirmPayoutData._({required this.G__typename, this.confirmPayout})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        G__typename, r'GconfirmPayoutData', 'G__typename');
  }

  @override
  GconfirmPayoutData rebuild(
          void Function(GconfirmPayoutDataBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GconfirmPayoutDataBuilder toBuilder() =>
      new GconfirmPayoutDataBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GconfirmPayoutData &&
        G__typename == other.G__typename &&
        confirmPayout == other.confirmPayout;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, G__typename.hashCode);
    _$hash = $jc(_$hash, confirmPayout.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'GconfirmPayoutData')
          ..add('G__typename', G__typename)
          ..add('confirmPayout', confirmPayout))
        .toString();
  }
}

class GconfirmPayoutDataBuilder
    implements Builder<GconfirmPayoutData, GconfirmPayoutDataBuilder> {
  _$GconfirmPayoutData? _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  GconfirmPayoutData_confirmPayoutBuilder? _confirmPayout;
  GconfirmPayoutData_confirmPayoutBuilder get confirmPayout =>
      _$this._confirmPayout ??= new GconfirmPayoutData_confirmPayoutBuilder();
  set confirmPayout(GconfirmPayoutData_confirmPayoutBuilder? confirmPayout) =>
      _$this._confirmPayout = confirmPayout;

  GconfirmPayoutDataBuilder() {
    GconfirmPayoutData._initializeBuilder(this);
  }

  GconfirmPayoutDataBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _G__typename = $v.G__typename;
      _confirmPayout = $v.confirmPayout?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GconfirmPayoutData other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GconfirmPayoutData;
  }

  @override
  void update(void Function(GconfirmPayoutDataBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GconfirmPayoutData build() => _build();

  _$GconfirmPayoutData _build() {
    _$GconfirmPayoutData _$result;
    try {
      _$result = _$v ??
          new _$GconfirmPayoutData._(
              G__typename: BuiltValueNullFieldError.checkNotNull(
                  G__typename, r'GconfirmPayoutData', 'G__typename'),
              confirmPayout: _confirmPayout?.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'confirmPayout';
        _confirmPayout?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'GconfirmPayoutData', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

class _$GconfirmPayoutData_confirmPayout
    extends GconfirmPayoutData_confirmPayout {
  @override
  final String G__typename;
  @override
  final int? status;
  @override
  final String? errorMessage;

  factory _$GconfirmPayoutData_confirmPayout(
          [void Function(GconfirmPayoutData_confirmPayoutBuilder)? updates]) =>
      (new GconfirmPayoutData_confirmPayoutBuilder()..update(updates))._build();

  _$GconfirmPayoutData_confirmPayout._(
      {required this.G__typename, this.status, this.errorMessage})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        G__typename, r'GconfirmPayoutData_confirmPayout', 'G__typename');
  }

  @override
  GconfirmPayoutData_confirmPayout rebuild(
          void Function(GconfirmPayoutData_confirmPayoutBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GconfirmPayoutData_confirmPayoutBuilder toBuilder() =>
      new GconfirmPayoutData_confirmPayoutBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GconfirmPayoutData_confirmPayout &&
        G__typename == other.G__typename &&
        status == other.status &&
        errorMessage == other.errorMessage;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, G__typename.hashCode);
    _$hash = $jc(_$hash, status.hashCode);
    _$hash = $jc(_$hash, errorMessage.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'GconfirmPayoutData_confirmPayout')
          ..add('G__typename', G__typename)
          ..add('status', status)
          ..add('errorMessage', errorMessage))
        .toString();
  }
}

class GconfirmPayoutData_confirmPayoutBuilder
    implements
        Builder<GconfirmPayoutData_confirmPayout,
            GconfirmPayoutData_confirmPayoutBuilder> {
  _$GconfirmPayoutData_confirmPayout? _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  int? _status;
  int? get status => _$this._status;
  set status(int? status) => _$this._status = status;

  String? _errorMessage;
  String? get errorMessage => _$this._errorMessage;
  set errorMessage(String? errorMessage) => _$this._errorMessage = errorMessage;

  GconfirmPayoutData_confirmPayoutBuilder() {
    GconfirmPayoutData_confirmPayout._initializeBuilder(this);
  }

  GconfirmPayoutData_confirmPayoutBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _G__typename = $v.G__typename;
      _status = $v.status;
      _errorMessage = $v.errorMessage;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GconfirmPayoutData_confirmPayout other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GconfirmPayoutData_confirmPayout;
  }

  @override
  void update(void Function(GconfirmPayoutData_confirmPayoutBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GconfirmPayoutData_confirmPayout build() => _build();

  _$GconfirmPayoutData_confirmPayout _build() {
    final _$result = _$v ??
        new _$GconfirmPayoutData_confirmPayout._(
            G__typename: BuiltValueNullFieldError.checkNotNull(G__typename,
                r'GconfirmPayoutData_confirmPayout', 'G__typename'),
            status: status,
            errorMessage: errorMessage);
    replace(_$result);
    return _$result;
  }
}

class _$GsetDefaultPayoutData extends GsetDefaultPayoutData {
  @override
  final String G__typename;
  @override
  final GsetDefaultPayoutData_setDefaultPayout? setDefaultPayout;

  factory _$GsetDefaultPayoutData(
          [void Function(GsetDefaultPayoutDataBuilder)? updates]) =>
      (new GsetDefaultPayoutDataBuilder()..update(updates))._build();

  _$GsetDefaultPayoutData._({required this.G__typename, this.setDefaultPayout})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        G__typename, r'GsetDefaultPayoutData', 'G__typename');
  }

  @override
  GsetDefaultPayoutData rebuild(
          void Function(GsetDefaultPayoutDataBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GsetDefaultPayoutDataBuilder toBuilder() =>
      new GsetDefaultPayoutDataBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GsetDefaultPayoutData &&
        G__typename == other.G__typename &&
        setDefaultPayout == other.setDefaultPayout;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, G__typename.hashCode);
    _$hash = $jc(_$hash, setDefaultPayout.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'GsetDefaultPayoutData')
          ..add('G__typename', G__typename)
          ..add('setDefaultPayout', setDefaultPayout))
        .toString();
  }
}

class GsetDefaultPayoutDataBuilder
    implements Builder<GsetDefaultPayoutData, GsetDefaultPayoutDataBuilder> {
  _$GsetDefaultPayoutData? _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  GsetDefaultPayoutData_setDefaultPayoutBuilder? _setDefaultPayout;
  GsetDefaultPayoutData_setDefaultPayoutBuilder get setDefaultPayout =>
      _$this._setDefaultPayout ??=
          new GsetDefaultPayoutData_setDefaultPayoutBuilder();
  set setDefaultPayout(
          GsetDefaultPayoutData_setDefaultPayoutBuilder? setDefaultPayout) =>
      _$this._setDefaultPayout = setDefaultPayout;

  GsetDefaultPayoutDataBuilder() {
    GsetDefaultPayoutData._initializeBuilder(this);
  }

  GsetDefaultPayoutDataBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _G__typename = $v.G__typename;
      _setDefaultPayout = $v.setDefaultPayout?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GsetDefaultPayoutData other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GsetDefaultPayoutData;
  }

  @override
  void update(void Function(GsetDefaultPayoutDataBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GsetDefaultPayoutData build() => _build();

  _$GsetDefaultPayoutData _build() {
    _$GsetDefaultPayoutData _$result;
    try {
      _$result = _$v ??
          new _$GsetDefaultPayoutData._(
              G__typename: BuiltValueNullFieldError.checkNotNull(
                  G__typename, r'GsetDefaultPayoutData', 'G__typename'),
              setDefaultPayout: _setDefaultPayout?.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'setDefaultPayout';
        _setDefaultPayout?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'GsetDefaultPayoutData', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

class _$GsetDefaultPayoutData_setDefaultPayout
    extends GsetDefaultPayoutData_setDefaultPayout {
  @override
  final String G__typename;
  @override
  final int? status;
  @override
  final String? errorMessage;

  factory _$GsetDefaultPayoutData_setDefaultPayout(
          [void Function(GsetDefaultPayoutData_setDefaultPayoutBuilder)?
              updates]) =>
      (new GsetDefaultPayoutData_setDefaultPayoutBuilder()..update(updates))
          ._build();

  _$GsetDefaultPayoutData_setDefaultPayout._(
      {required this.G__typename, this.status, this.errorMessage})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        G__typename, r'GsetDefaultPayoutData_setDefaultPayout', 'G__typename');
  }

  @override
  GsetDefaultPayoutData_setDefaultPayout rebuild(
          void Function(GsetDefaultPayoutData_setDefaultPayoutBuilder)
              updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GsetDefaultPayoutData_setDefaultPayoutBuilder toBuilder() =>
      new GsetDefaultPayoutData_setDefaultPayoutBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GsetDefaultPayoutData_setDefaultPayout &&
        G__typename == other.G__typename &&
        status == other.status &&
        errorMessage == other.errorMessage;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, G__typename.hashCode);
    _$hash = $jc(_$hash, status.hashCode);
    _$hash = $jc(_$hash, errorMessage.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(
            r'GsetDefaultPayoutData_setDefaultPayout')
          ..add('G__typename', G__typename)
          ..add('status', status)
          ..add('errorMessage', errorMessage))
        .toString();
  }
}

class GsetDefaultPayoutData_setDefaultPayoutBuilder
    implements
        Builder<GsetDefaultPayoutData_setDefaultPayout,
            GsetDefaultPayoutData_setDefaultPayoutBuilder> {
  _$GsetDefaultPayoutData_setDefaultPayout? _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  int? _status;
  int? get status => _$this._status;
  set status(int? status) => _$this._status = status;

  String? _errorMessage;
  String? get errorMessage => _$this._errorMessage;
  set errorMessage(String? errorMessage) => _$this._errorMessage = errorMessage;

  GsetDefaultPayoutData_setDefaultPayoutBuilder() {
    GsetDefaultPayoutData_setDefaultPayout._initializeBuilder(this);
  }

  GsetDefaultPayoutData_setDefaultPayoutBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _G__typename = $v.G__typename;
      _status = $v.status;
      _errorMessage = $v.errorMessage;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GsetDefaultPayoutData_setDefaultPayout other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GsetDefaultPayoutData_setDefaultPayout;
  }

  @override
  void update(
      void Function(GsetDefaultPayoutData_setDefaultPayoutBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GsetDefaultPayoutData_setDefaultPayout build() => _build();

  _$GsetDefaultPayoutData_setDefaultPayout _build() {
    final _$result = _$v ??
        new _$GsetDefaultPayoutData_setDefaultPayout._(
            G__typename: BuiltValueNullFieldError.checkNotNull(G__typename,
                r'GsetDefaultPayoutData_setDefaultPayout', 'G__typename'),
            status: status,
            errorMessage: errorMessage);
    replace(_$result);
    return _$result;
  }
}

class _$GgetPaymentMethodsData extends GgetPaymentMethodsData {
  @override
  final String G__typename;
  @override
  final GgetPaymentMethodsData_getPaymentMethods? getPaymentMethods;

  factory _$GgetPaymentMethodsData(
          [void Function(GgetPaymentMethodsDataBuilder)? updates]) =>
      (new GgetPaymentMethodsDataBuilder()..update(updates))._build();

  _$GgetPaymentMethodsData._(
      {required this.G__typename, this.getPaymentMethods})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        G__typename, r'GgetPaymentMethodsData', 'G__typename');
  }

  @override
  GgetPaymentMethodsData rebuild(
          void Function(GgetPaymentMethodsDataBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GgetPaymentMethodsDataBuilder toBuilder() =>
      new GgetPaymentMethodsDataBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GgetPaymentMethodsData &&
        G__typename == other.G__typename &&
        getPaymentMethods == other.getPaymentMethods;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, G__typename.hashCode);
    _$hash = $jc(_$hash, getPaymentMethods.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'GgetPaymentMethodsData')
          ..add('G__typename', G__typename)
          ..add('getPaymentMethods', getPaymentMethods))
        .toString();
  }
}

class GgetPaymentMethodsDataBuilder
    implements Builder<GgetPaymentMethodsData, GgetPaymentMethodsDataBuilder> {
  _$GgetPaymentMethodsData? _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  GgetPaymentMethodsData_getPaymentMethodsBuilder? _getPaymentMethods;
  GgetPaymentMethodsData_getPaymentMethodsBuilder get getPaymentMethods =>
      _$this._getPaymentMethods ??=
          new GgetPaymentMethodsData_getPaymentMethodsBuilder();
  set getPaymentMethods(
          GgetPaymentMethodsData_getPaymentMethodsBuilder? getPaymentMethods) =>
      _$this._getPaymentMethods = getPaymentMethods;

  GgetPaymentMethodsDataBuilder() {
    GgetPaymentMethodsData._initializeBuilder(this);
  }

  GgetPaymentMethodsDataBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _G__typename = $v.G__typename;
      _getPaymentMethods = $v.getPaymentMethods?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GgetPaymentMethodsData other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GgetPaymentMethodsData;
  }

  @override
  void update(void Function(GgetPaymentMethodsDataBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GgetPaymentMethodsData build() => _build();

  _$GgetPaymentMethodsData _build() {
    _$GgetPaymentMethodsData _$result;
    try {
      _$result = _$v ??
          new _$GgetPaymentMethodsData._(
              G__typename: BuiltValueNullFieldError.checkNotNull(
                  G__typename, r'GgetPaymentMethodsData', 'G__typename'),
              getPaymentMethods: _getPaymentMethods?.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'getPaymentMethods';
        _getPaymentMethods?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'GgetPaymentMethodsData', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

class _$GgetPaymentMethodsData_getPaymentMethods
    extends GgetPaymentMethodsData_getPaymentMethods {
  @override
  final String G__typename;
  @override
  final BuiltList<GgetPaymentMethodsData_getPaymentMethods_results?>? results;
  @override
  final int? status;
  @override
  final String? errorMessage;

  factory _$GgetPaymentMethodsData_getPaymentMethods(
          [void Function(GgetPaymentMethodsData_getPaymentMethodsBuilder)?
              updates]) =>
      (new GgetPaymentMethodsData_getPaymentMethodsBuilder()..update(updates))
          ._build();

  _$GgetPaymentMethodsData_getPaymentMethods._(
      {required this.G__typename, this.results, this.status, this.errorMessage})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(G__typename,
        r'GgetPaymentMethodsData_getPaymentMethods', 'G__typename');
  }

  @override
  GgetPaymentMethodsData_getPaymentMethods rebuild(
          void Function(GgetPaymentMethodsData_getPaymentMethodsBuilder)
              updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GgetPaymentMethodsData_getPaymentMethodsBuilder toBuilder() =>
      new GgetPaymentMethodsData_getPaymentMethodsBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GgetPaymentMethodsData_getPaymentMethods &&
        G__typename == other.G__typename &&
        results == other.results &&
        status == other.status &&
        errorMessage == other.errorMessage;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, G__typename.hashCode);
    _$hash = $jc(_$hash, results.hashCode);
    _$hash = $jc(_$hash, status.hashCode);
    _$hash = $jc(_$hash, errorMessage.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(
            r'GgetPaymentMethodsData_getPaymentMethods')
          ..add('G__typename', G__typename)
          ..add('results', results)
          ..add('status', status)
          ..add('errorMessage', errorMessage))
        .toString();
  }
}

class GgetPaymentMethodsData_getPaymentMethodsBuilder
    implements
        Builder<GgetPaymentMethodsData_getPaymentMethods,
            GgetPaymentMethodsData_getPaymentMethodsBuilder> {
  _$GgetPaymentMethodsData_getPaymentMethods? _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  ListBuilder<GgetPaymentMethodsData_getPaymentMethods_results?>? _results;
  ListBuilder<GgetPaymentMethodsData_getPaymentMethods_results?> get results =>
      _$this._results ??=
          new ListBuilder<GgetPaymentMethodsData_getPaymentMethods_results?>();
  set results(
          ListBuilder<GgetPaymentMethodsData_getPaymentMethods_results?>?
              results) =>
      _$this._results = results;

  int? _status;
  int? get status => _$this._status;
  set status(int? status) => _$this._status = status;

  String? _errorMessage;
  String? get errorMessage => _$this._errorMessage;
  set errorMessage(String? errorMessage) => _$this._errorMessage = errorMessage;

  GgetPaymentMethodsData_getPaymentMethodsBuilder() {
    GgetPaymentMethodsData_getPaymentMethods._initializeBuilder(this);
  }

  GgetPaymentMethodsData_getPaymentMethodsBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _G__typename = $v.G__typename;
      _results = $v.results?.toBuilder();
      _status = $v.status;
      _errorMessage = $v.errorMessage;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GgetPaymentMethodsData_getPaymentMethods other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GgetPaymentMethodsData_getPaymentMethods;
  }

  @override
  void update(
      void Function(GgetPaymentMethodsData_getPaymentMethodsBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GgetPaymentMethodsData_getPaymentMethods build() => _build();

  _$GgetPaymentMethodsData_getPaymentMethods _build() {
    _$GgetPaymentMethodsData_getPaymentMethods _$result;
    try {
      _$result = _$v ??
          new _$GgetPaymentMethodsData_getPaymentMethods._(
              G__typename: BuiltValueNullFieldError.checkNotNull(G__typename,
                  r'GgetPaymentMethodsData_getPaymentMethods', 'G__typename'),
              results: _results?.build(),
              status: status,
              errorMessage: errorMessage);
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'results';
        _results?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'GgetPaymentMethodsData_getPaymentMethods',
            _$failedField,
            e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

class _$GgetPaymentMethodsData_getPaymentMethods_results
    extends GgetPaymentMethodsData_getPaymentMethods_results {
  @override
  final String G__typename;
  @override
  final int? id;
  @override
  final String? name;
  @override
  final String? processedIn;
  @override
  final String? fees;
  @override
  final String? currency;
  @override
  final String? details;
  @override
  final bool? isEnable;
  @override
  final int? paymentType;
  @override
  final String? imageUrl;

  factory _$GgetPaymentMethodsData_getPaymentMethods_results(
          [void Function(
                  GgetPaymentMethodsData_getPaymentMethods_resultsBuilder)?
              updates]) =>
      (new GgetPaymentMethodsData_getPaymentMethods_resultsBuilder()
            ..update(updates))
          ._build();

  _$GgetPaymentMethodsData_getPaymentMethods_results._(
      {required this.G__typename,
      this.id,
      this.name,
      this.processedIn,
      this.fees,
      this.currency,
      this.details,
      this.isEnable,
      this.paymentType,
      this.imageUrl})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(G__typename,
        r'GgetPaymentMethodsData_getPaymentMethods_results', 'G__typename');
  }

  @override
  GgetPaymentMethodsData_getPaymentMethods_results rebuild(
          void Function(GgetPaymentMethodsData_getPaymentMethods_resultsBuilder)
              updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GgetPaymentMethodsData_getPaymentMethods_resultsBuilder toBuilder() =>
      new GgetPaymentMethodsData_getPaymentMethods_resultsBuilder()
        ..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GgetPaymentMethodsData_getPaymentMethods_results &&
        G__typename == other.G__typename &&
        id == other.id &&
        name == other.name &&
        processedIn == other.processedIn &&
        fees == other.fees &&
        currency == other.currency &&
        details == other.details &&
        isEnable == other.isEnable &&
        paymentType == other.paymentType &&
        imageUrl == other.imageUrl;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, G__typename.hashCode);
    _$hash = $jc(_$hash, id.hashCode);
    _$hash = $jc(_$hash, name.hashCode);
    _$hash = $jc(_$hash, processedIn.hashCode);
    _$hash = $jc(_$hash, fees.hashCode);
    _$hash = $jc(_$hash, currency.hashCode);
    _$hash = $jc(_$hash, details.hashCode);
    _$hash = $jc(_$hash, isEnable.hashCode);
    _$hash = $jc(_$hash, paymentType.hashCode);
    _$hash = $jc(_$hash, imageUrl.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(
            r'GgetPaymentMethodsData_getPaymentMethods_results')
          ..add('G__typename', G__typename)
          ..add('id', id)
          ..add('name', name)
          ..add('processedIn', processedIn)
          ..add('fees', fees)
          ..add('currency', currency)
          ..add('details', details)
          ..add('isEnable', isEnable)
          ..add('paymentType', paymentType)
          ..add('imageUrl', imageUrl))
        .toString();
  }
}

class GgetPaymentMethodsData_getPaymentMethods_resultsBuilder
    implements
        Builder<GgetPaymentMethodsData_getPaymentMethods_results,
            GgetPaymentMethodsData_getPaymentMethods_resultsBuilder> {
  _$GgetPaymentMethodsData_getPaymentMethods_results? _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  int? _id;
  int? get id => _$this._id;
  set id(int? id) => _$this._id = id;

  String? _name;
  String? get name => _$this._name;
  set name(String? name) => _$this._name = name;

  String? _processedIn;
  String? get processedIn => _$this._processedIn;
  set processedIn(String? processedIn) => _$this._processedIn = processedIn;

  String? _fees;
  String? get fees => _$this._fees;
  set fees(String? fees) => _$this._fees = fees;

  String? _currency;
  String? get currency => _$this._currency;
  set currency(String? currency) => _$this._currency = currency;

  String? _details;
  String? get details => _$this._details;
  set details(String? details) => _$this._details = details;

  bool? _isEnable;
  bool? get isEnable => _$this._isEnable;
  set isEnable(bool? isEnable) => _$this._isEnable = isEnable;

  int? _paymentType;
  int? get paymentType => _$this._paymentType;
  set paymentType(int? paymentType) => _$this._paymentType = paymentType;

  String? _imageUrl;
  String? get imageUrl => _$this._imageUrl;
  set imageUrl(String? imageUrl) => _$this._imageUrl = imageUrl;

  GgetPaymentMethodsData_getPaymentMethods_resultsBuilder() {
    GgetPaymentMethodsData_getPaymentMethods_results._initializeBuilder(this);
  }

  GgetPaymentMethodsData_getPaymentMethods_resultsBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _G__typename = $v.G__typename;
      _id = $v.id;
      _name = $v.name;
      _processedIn = $v.processedIn;
      _fees = $v.fees;
      _currency = $v.currency;
      _details = $v.details;
      _isEnable = $v.isEnable;
      _paymentType = $v.paymentType;
      _imageUrl = $v.imageUrl;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GgetPaymentMethodsData_getPaymentMethods_results other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GgetPaymentMethodsData_getPaymentMethods_results;
  }

  @override
  void update(
      void Function(GgetPaymentMethodsData_getPaymentMethods_resultsBuilder)?
          updates) {
    if (updates != null) updates(this);
  }

  @override
  GgetPaymentMethodsData_getPaymentMethods_results build() => _build();

  _$GgetPaymentMethodsData_getPaymentMethods_results _build() {
    final _$result = _$v ??
        new _$GgetPaymentMethodsData_getPaymentMethods_results._(
            G__typename: BuiltValueNullFieldError.checkNotNull(
                G__typename,
                r'GgetPaymentMethodsData_getPaymentMethods_results',
                'G__typename'),
            id: id,
            name: name,
            processedIn: processedIn,
            fees: fees,
            currency: currency,
            details: details,
            isEnable: isEnable,
            paymentType: paymentType,
            imageUrl: imageUrl);
    replace(_$result);
    return _$result;
  }
}

class _$GaddPayoutData extends GaddPayoutData {
  @override
  final String G__typename;
  @override
  final GaddPayoutData_addPayout? addPayout;

  factory _$GaddPayoutData([void Function(GaddPayoutDataBuilder)? updates]) =>
      (new GaddPayoutDataBuilder()..update(updates))._build();

  _$GaddPayoutData._({required this.G__typename, this.addPayout}) : super._() {
    BuiltValueNullFieldError.checkNotNull(
        G__typename, r'GaddPayoutData', 'G__typename');
  }

  @override
  GaddPayoutData rebuild(void Function(GaddPayoutDataBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GaddPayoutDataBuilder toBuilder() =>
      new GaddPayoutDataBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GaddPayoutData &&
        G__typename == other.G__typename &&
        addPayout == other.addPayout;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, G__typename.hashCode);
    _$hash = $jc(_$hash, addPayout.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'GaddPayoutData')
          ..add('G__typename', G__typename)
          ..add('addPayout', addPayout))
        .toString();
  }
}

class GaddPayoutDataBuilder
    implements Builder<GaddPayoutData, GaddPayoutDataBuilder> {
  _$GaddPayoutData? _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  GaddPayoutData_addPayoutBuilder? _addPayout;
  GaddPayoutData_addPayoutBuilder get addPayout =>
      _$this._addPayout ??= new GaddPayoutData_addPayoutBuilder();
  set addPayout(GaddPayoutData_addPayoutBuilder? addPayout) =>
      _$this._addPayout = addPayout;

  GaddPayoutDataBuilder() {
    GaddPayoutData._initializeBuilder(this);
  }

  GaddPayoutDataBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _G__typename = $v.G__typename;
      _addPayout = $v.addPayout?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GaddPayoutData other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GaddPayoutData;
  }

  @override
  void update(void Function(GaddPayoutDataBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GaddPayoutData build() => _build();

  _$GaddPayoutData _build() {
    _$GaddPayoutData _$result;
    try {
      _$result = _$v ??
          new _$GaddPayoutData._(
              G__typename: BuiltValueNullFieldError.checkNotNull(
                  G__typename, r'GaddPayoutData', 'G__typename'),
              addPayout: _addPayout?.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'addPayout';
        _addPayout?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'GaddPayoutData', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

class _$GaddPayoutData_addPayout extends GaddPayoutData_addPayout {
  @override
  final String G__typename;
  @override
  final int? status;
  @override
  final String? errorMessage;
  @override
  final String? connectUrl;
  @override
  final String? successUrl;
  @override
  final String? failureUrl;
  @override
  final String? stripeAccountId;

  factory _$GaddPayoutData_addPayout(
          [void Function(GaddPayoutData_addPayoutBuilder)? updates]) =>
      (new GaddPayoutData_addPayoutBuilder()..update(updates))._build();

  _$GaddPayoutData_addPayout._(
      {required this.G__typename,
      this.status,
      this.errorMessage,
      this.connectUrl,
      this.successUrl,
      this.failureUrl,
      this.stripeAccountId})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        G__typename, r'GaddPayoutData_addPayout', 'G__typename');
  }

  @override
  GaddPayoutData_addPayout rebuild(
          void Function(GaddPayoutData_addPayoutBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GaddPayoutData_addPayoutBuilder toBuilder() =>
      new GaddPayoutData_addPayoutBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GaddPayoutData_addPayout &&
        G__typename == other.G__typename &&
        status == other.status &&
        errorMessage == other.errorMessage &&
        connectUrl == other.connectUrl &&
        successUrl == other.successUrl &&
        failureUrl == other.failureUrl &&
        stripeAccountId == other.stripeAccountId;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, G__typename.hashCode);
    _$hash = $jc(_$hash, status.hashCode);
    _$hash = $jc(_$hash, errorMessage.hashCode);
    _$hash = $jc(_$hash, connectUrl.hashCode);
    _$hash = $jc(_$hash, successUrl.hashCode);
    _$hash = $jc(_$hash, failureUrl.hashCode);
    _$hash = $jc(_$hash, stripeAccountId.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'GaddPayoutData_addPayout')
          ..add('G__typename', G__typename)
          ..add('status', status)
          ..add('errorMessage', errorMessage)
          ..add('connectUrl', connectUrl)
          ..add('successUrl', successUrl)
          ..add('failureUrl', failureUrl)
          ..add('stripeAccountId', stripeAccountId))
        .toString();
  }
}

class GaddPayoutData_addPayoutBuilder
    implements
        Builder<GaddPayoutData_addPayout, GaddPayoutData_addPayoutBuilder> {
  _$GaddPayoutData_addPayout? _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  int? _status;
  int? get status => _$this._status;
  set status(int? status) => _$this._status = status;

  String? _errorMessage;
  String? get errorMessage => _$this._errorMessage;
  set errorMessage(String? errorMessage) => _$this._errorMessage = errorMessage;

  String? _connectUrl;
  String? get connectUrl => _$this._connectUrl;
  set connectUrl(String? connectUrl) => _$this._connectUrl = connectUrl;

  String? _successUrl;
  String? get successUrl => _$this._successUrl;
  set successUrl(String? successUrl) => _$this._successUrl = successUrl;

  String? _failureUrl;
  String? get failureUrl => _$this._failureUrl;
  set failureUrl(String? failureUrl) => _$this._failureUrl = failureUrl;

  String? _stripeAccountId;
  String? get stripeAccountId => _$this._stripeAccountId;
  set stripeAccountId(String? stripeAccountId) =>
      _$this._stripeAccountId = stripeAccountId;

  GaddPayoutData_addPayoutBuilder() {
    GaddPayoutData_addPayout._initializeBuilder(this);
  }

  GaddPayoutData_addPayoutBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _G__typename = $v.G__typename;
      _status = $v.status;
      _errorMessage = $v.errorMessage;
      _connectUrl = $v.connectUrl;
      _successUrl = $v.successUrl;
      _failureUrl = $v.failureUrl;
      _stripeAccountId = $v.stripeAccountId;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GaddPayoutData_addPayout other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GaddPayoutData_addPayout;
  }

  @override
  void update(void Function(GaddPayoutData_addPayoutBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GaddPayoutData_addPayout build() => _build();

  _$GaddPayoutData_addPayout _build() {
    final _$result = _$v ??
        new _$GaddPayoutData_addPayout._(
            G__typename: BuiltValueNullFieldError.checkNotNull(
                G__typename, r'GaddPayoutData_addPayout', 'G__typename'),
            status: status,
            errorMessage: errorMessage,
            connectUrl: connectUrl,
            successUrl: successUrl,
            failureUrl: failureUrl,
            stripeAccountId: stripeAccountId);
    replace(_$result);
    return _$result;
  }
}

class _$GverifyPayoutData extends GverifyPayoutData {
  @override
  final String G__typename;
  @override
  final GverifyPayoutData_verifyPayout? verifyPayout;

  factory _$GverifyPayoutData(
          [void Function(GverifyPayoutDataBuilder)? updates]) =>
      (new GverifyPayoutDataBuilder()..update(updates))._build();

  _$GverifyPayoutData._({required this.G__typename, this.verifyPayout})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        G__typename, r'GverifyPayoutData', 'G__typename');
  }

  @override
  GverifyPayoutData rebuild(void Function(GverifyPayoutDataBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GverifyPayoutDataBuilder toBuilder() =>
      new GverifyPayoutDataBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GverifyPayoutData &&
        G__typename == other.G__typename &&
        verifyPayout == other.verifyPayout;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, G__typename.hashCode);
    _$hash = $jc(_$hash, verifyPayout.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'GverifyPayoutData')
          ..add('G__typename', G__typename)
          ..add('verifyPayout', verifyPayout))
        .toString();
  }
}

class GverifyPayoutDataBuilder
    implements Builder<GverifyPayoutData, GverifyPayoutDataBuilder> {
  _$GverifyPayoutData? _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  GverifyPayoutData_verifyPayoutBuilder? _verifyPayout;
  GverifyPayoutData_verifyPayoutBuilder get verifyPayout =>
      _$this._verifyPayout ??= new GverifyPayoutData_verifyPayoutBuilder();
  set verifyPayout(GverifyPayoutData_verifyPayoutBuilder? verifyPayout) =>
      _$this._verifyPayout = verifyPayout;

  GverifyPayoutDataBuilder() {
    GverifyPayoutData._initializeBuilder(this);
  }

  GverifyPayoutDataBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _G__typename = $v.G__typename;
      _verifyPayout = $v.verifyPayout?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GverifyPayoutData other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GverifyPayoutData;
  }

  @override
  void update(void Function(GverifyPayoutDataBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GverifyPayoutData build() => _build();

  _$GverifyPayoutData _build() {
    _$GverifyPayoutData _$result;
    try {
      _$result = _$v ??
          new _$GverifyPayoutData._(
              G__typename: BuiltValueNullFieldError.checkNotNull(
                  G__typename, r'GverifyPayoutData', 'G__typename'),
              verifyPayout: _verifyPayout?.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'verifyPayout';
        _verifyPayout?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'GverifyPayoutData', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

class _$GverifyPayoutData_verifyPayout extends GverifyPayoutData_verifyPayout {
  @override
  final String G__typename;
  @override
  final int? status;
  @override
  final String? errorMessage;
  @override
  final String? connectUrl;
  @override
  final String? successUrl;
  @override
  final String? failureUrl;
  @override
  final String? stripeAccountId;

  factory _$GverifyPayoutData_verifyPayout(
          [void Function(GverifyPayoutData_verifyPayoutBuilder)? updates]) =>
      (new GverifyPayoutData_verifyPayoutBuilder()..update(updates))._build();

  _$GverifyPayoutData_verifyPayout._(
      {required this.G__typename,
      this.status,
      this.errorMessage,
      this.connectUrl,
      this.successUrl,
      this.failureUrl,
      this.stripeAccountId})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        G__typename, r'GverifyPayoutData_verifyPayout', 'G__typename');
  }

  @override
  GverifyPayoutData_verifyPayout rebuild(
          void Function(GverifyPayoutData_verifyPayoutBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GverifyPayoutData_verifyPayoutBuilder toBuilder() =>
      new GverifyPayoutData_verifyPayoutBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GverifyPayoutData_verifyPayout &&
        G__typename == other.G__typename &&
        status == other.status &&
        errorMessage == other.errorMessage &&
        connectUrl == other.connectUrl &&
        successUrl == other.successUrl &&
        failureUrl == other.failureUrl &&
        stripeAccountId == other.stripeAccountId;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, G__typename.hashCode);
    _$hash = $jc(_$hash, status.hashCode);
    _$hash = $jc(_$hash, errorMessage.hashCode);
    _$hash = $jc(_$hash, connectUrl.hashCode);
    _$hash = $jc(_$hash, successUrl.hashCode);
    _$hash = $jc(_$hash, failureUrl.hashCode);
    _$hash = $jc(_$hash, stripeAccountId.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'GverifyPayoutData_verifyPayout')
          ..add('G__typename', G__typename)
          ..add('status', status)
          ..add('errorMessage', errorMessage)
          ..add('connectUrl', connectUrl)
          ..add('successUrl', successUrl)
          ..add('failureUrl', failureUrl)
          ..add('stripeAccountId', stripeAccountId))
        .toString();
  }
}

class GverifyPayoutData_verifyPayoutBuilder
    implements
        Builder<GverifyPayoutData_verifyPayout,
            GverifyPayoutData_verifyPayoutBuilder> {
  _$GverifyPayoutData_verifyPayout? _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  int? _status;
  int? get status => _$this._status;
  set status(int? status) => _$this._status = status;

  String? _errorMessage;
  String? get errorMessage => _$this._errorMessage;
  set errorMessage(String? errorMessage) => _$this._errorMessage = errorMessage;

  String? _connectUrl;
  String? get connectUrl => _$this._connectUrl;
  set connectUrl(String? connectUrl) => _$this._connectUrl = connectUrl;

  String? _successUrl;
  String? get successUrl => _$this._successUrl;
  set successUrl(String? successUrl) => _$this._successUrl = successUrl;

  String? _failureUrl;
  String? get failureUrl => _$this._failureUrl;
  set failureUrl(String? failureUrl) => _$this._failureUrl = failureUrl;

  String? _stripeAccountId;
  String? get stripeAccountId => _$this._stripeAccountId;
  set stripeAccountId(String? stripeAccountId) =>
      _$this._stripeAccountId = stripeAccountId;

  GverifyPayoutData_verifyPayoutBuilder() {
    GverifyPayoutData_verifyPayout._initializeBuilder(this);
  }

  GverifyPayoutData_verifyPayoutBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _G__typename = $v.G__typename;
      _status = $v.status;
      _errorMessage = $v.errorMessage;
      _connectUrl = $v.connectUrl;
      _successUrl = $v.successUrl;
      _failureUrl = $v.failureUrl;
      _stripeAccountId = $v.stripeAccountId;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GverifyPayoutData_verifyPayout other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GverifyPayoutData_verifyPayout;
  }

  @override
  void update(void Function(GverifyPayoutData_verifyPayoutBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GverifyPayoutData_verifyPayout build() => _build();

  _$GverifyPayoutData_verifyPayout _build() {
    final _$result = _$v ??
        new _$GverifyPayoutData_verifyPayout._(
            G__typename: BuiltValueNullFieldError.checkNotNull(
                G__typename, r'GverifyPayoutData_verifyPayout', 'G__typename'),
            status: status,
            errorMessage: errorMessage,
            connectUrl: connectUrl,
            successUrl: successUrl,
            failureUrl: failureUrl,
            stripeAccountId: stripeAccountId);
    replace(_$result);
    return _$result;
  }
}

class _$GgetPawaPayOptionsData extends GgetPawaPayOptionsData {
  @override
  final String G__typename;
  @override
  final GgetPawaPayOptionsData_getPawaPayOptions? getPawaPayOptions;

  factory _$GgetPawaPayOptionsData(
          [void Function(GgetPawaPayOptionsDataBuilder)? updates]) =>
      (new GgetPawaPayOptionsDataBuilder()..update(updates))._build();

  _$GgetPawaPayOptionsData._(
      {required this.G__typename, this.getPawaPayOptions})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        G__typename, r'GgetPawaPayOptionsData', 'G__typename');
  }

  @override
  GgetPawaPayOptionsData rebuild(
          void Function(GgetPawaPayOptionsDataBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GgetPawaPayOptionsDataBuilder toBuilder() =>
      new GgetPawaPayOptionsDataBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GgetPawaPayOptionsData &&
        G__typename == other.G__typename &&
        getPawaPayOptions == other.getPawaPayOptions;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, G__typename.hashCode);
    _$hash = $jc(_$hash, getPawaPayOptions.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'GgetPawaPayOptionsData')
          ..add('G__typename', G__typename)
          ..add('getPawaPayOptions', getPawaPayOptions))
        .toString();
  }
}

class GgetPawaPayOptionsDataBuilder
    implements Builder<GgetPawaPayOptionsData, GgetPawaPayOptionsDataBuilder> {
  _$GgetPawaPayOptionsData? _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  GgetPawaPayOptionsData_getPawaPayOptionsBuilder? _getPawaPayOptions;
  GgetPawaPayOptionsData_getPawaPayOptionsBuilder get getPawaPayOptions =>
      _$this._getPawaPayOptions ??=
          new GgetPawaPayOptionsData_getPawaPayOptionsBuilder();
  set getPawaPayOptions(
          GgetPawaPayOptionsData_getPawaPayOptionsBuilder? getPawaPayOptions) =>
      _$this._getPawaPayOptions = getPawaPayOptions;

  GgetPawaPayOptionsDataBuilder() {
    GgetPawaPayOptionsData._initializeBuilder(this);
  }

  GgetPawaPayOptionsDataBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _G__typename = $v.G__typename;
      _getPawaPayOptions = $v.getPawaPayOptions?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GgetPawaPayOptionsData other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GgetPawaPayOptionsData;
  }

  @override
  void update(void Function(GgetPawaPayOptionsDataBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GgetPawaPayOptionsData build() => _build();

  _$GgetPawaPayOptionsData _build() {
    _$GgetPawaPayOptionsData _$result;
    try {
      _$result = _$v ??
          new _$GgetPawaPayOptionsData._(
              G__typename: BuiltValueNullFieldError.checkNotNull(
                  G__typename, r'GgetPawaPayOptionsData', 'G__typename'),
              getPawaPayOptions: _getPawaPayOptions?.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'getPawaPayOptions';
        _getPawaPayOptions?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'GgetPawaPayOptionsData', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

class _$GgetPawaPayOptionsData_getPawaPayOptions
    extends GgetPawaPayOptionsData_getPawaPayOptions {
  @override
  final String G__typename;
  @override
  final int? status;
  @override
  final String? errorMessage;
  @override
  final String? recommendedCountry;
  @override
  final BuiltList<GgetPawaPayOptionsData_getPawaPayOptions_countries?>?
      countries;

  factory _$GgetPawaPayOptionsData_getPawaPayOptions(
          [void Function(GgetPawaPayOptionsData_getPawaPayOptionsBuilder)?
              updates]) =>
      (new GgetPawaPayOptionsData_getPawaPayOptionsBuilder()..update(updates))
          ._build();

  _$GgetPawaPayOptionsData_getPawaPayOptions._(
      {required this.G__typename,
      this.status,
      this.errorMessage,
      this.recommendedCountry,
      this.countries})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(G__typename,
        r'GgetPawaPayOptionsData_getPawaPayOptions', 'G__typename');
  }

  @override
  GgetPawaPayOptionsData_getPawaPayOptions rebuild(
          void Function(GgetPawaPayOptionsData_getPawaPayOptionsBuilder)
              updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GgetPawaPayOptionsData_getPawaPayOptionsBuilder toBuilder() =>
      new GgetPawaPayOptionsData_getPawaPayOptionsBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GgetPawaPayOptionsData_getPawaPayOptions &&
        G__typename == other.G__typename &&
        status == other.status &&
        errorMessage == other.errorMessage &&
        recommendedCountry == other.recommendedCountry &&
        countries == other.countries;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, G__typename.hashCode);
    _$hash = $jc(_$hash, status.hashCode);
    _$hash = $jc(_$hash, errorMessage.hashCode);
    _$hash = $jc(_$hash, recommendedCountry.hashCode);
    _$hash = $jc(_$hash, countries.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(
            r'GgetPawaPayOptionsData_getPawaPayOptions')
          ..add('G__typename', G__typename)
          ..add('status', status)
          ..add('errorMessage', errorMessage)
          ..add('recommendedCountry', recommendedCountry)
          ..add('countries', countries))
        .toString();
  }
}

class GgetPawaPayOptionsData_getPawaPayOptionsBuilder
    implements
        Builder<GgetPawaPayOptionsData_getPawaPayOptions,
            GgetPawaPayOptionsData_getPawaPayOptionsBuilder> {
  _$GgetPawaPayOptionsData_getPawaPayOptions? _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  int? _status;
  int? get status => _$this._status;
  set status(int? status) => _$this._status = status;

  String? _errorMessage;
  String? get errorMessage => _$this._errorMessage;
  set errorMessage(String? errorMessage) => _$this._errorMessage = errorMessage;

  String? _recommendedCountry;
  String? get recommendedCountry => _$this._recommendedCountry;
  set recommendedCountry(String? recommendedCountry) =>
      _$this._recommendedCountry = recommendedCountry;

  ListBuilder<GgetPawaPayOptionsData_getPawaPayOptions_countries?>? _countries;
  ListBuilder<GgetPawaPayOptionsData_getPawaPayOptions_countries?>
      get countries => _$this._countries ??= new ListBuilder<
          GgetPawaPayOptionsData_getPawaPayOptions_countries?>();
  set countries(
          ListBuilder<GgetPawaPayOptionsData_getPawaPayOptions_countries?>?
              countries) =>
      _$this._countries = countries;

  GgetPawaPayOptionsData_getPawaPayOptionsBuilder() {
    GgetPawaPayOptionsData_getPawaPayOptions._initializeBuilder(this);
  }

  GgetPawaPayOptionsData_getPawaPayOptionsBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _G__typename = $v.G__typename;
      _status = $v.status;
      _errorMessage = $v.errorMessage;
      _recommendedCountry = $v.recommendedCountry;
      _countries = $v.countries?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GgetPawaPayOptionsData_getPawaPayOptions other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GgetPawaPayOptionsData_getPawaPayOptions;
  }

  @override
  void update(
      void Function(GgetPawaPayOptionsData_getPawaPayOptionsBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GgetPawaPayOptionsData_getPawaPayOptions build() => _build();

  _$GgetPawaPayOptionsData_getPawaPayOptions _build() {
    _$GgetPawaPayOptionsData_getPawaPayOptions _$result;
    try {
      _$result = _$v ??
          new _$GgetPawaPayOptionsData_getPawaPayOptions._(
              G__typename: BuiltValueNullFieldError.checkNotNull(G__typename,
                  r'GgetPawaPayOptionsData_getPawaPayOptions', 'G__typename'),
              status: status,
              errorMessage: errorMessage,
              recommendedCountry: recommendedCountry,
              countries: _countries?.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'countries';
        _countries?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'GgetPawaPayOptionsData_getPawaPayOptions',
            _$failedField,
            e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

class _$GgetPawaPayOptionsData_getPawaPayOptions_countries
    extends GgetPawaPayOptionsData_getPawaPayOptions_countries {
  @override
  final String G__typename;
  @override
  final String? country;
  @override
  final String? displayName;
  @override
  final String? prefix;
  @override
  final String? flag;
  @override
  final BuiltList<
          GgetPawaPayOptionsData_getPawaPayOptions_countries_currencies?>?
      currencies;

  factory _$GgetPawaPayOptionsData_getPawaPayOptions_countries(
          [void Function(
                  GgetPawaPayOptionsData_getPawaPayOptions_countriesBuilder)?
              updates]) =>
      (new GgetPawaPayOptionsData_getPawaPayOptions_countriesBuilder()
            ..update(updates))
          ._build();

  _$GgetPawaPayOptionsData_getPawaPayOptions_countries._(
      {required this.G__typename,
      this.country,
      this.displayName,
      this.prefix,
      this.flag,
      this.currencies})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(G__typename,
        r'GgetPawaPayOptionsData_getPawaPayOptions_countries', 'G__typename');
  }

  @override
  GgetPawaPayOptionsData_getPawaPayOptions_countries rebuild(
          void Function(
                  GgetPawaPayOptionsData_getPawaPayOptions_countriesBuilder)
              updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GgetPawaPayOptionsData_getPawaPayOptions_countriesBuilder toBuilder() =>
      new GgetPawaPayOptionsData_getPawaPayOptions_countriesBuilder()
        ..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GgetPawaPayOptionsData_getPawaPayOptions_countries &&
        G__typename == other.G__typename &&
        country == other.country &&
        displayName == other.displayName &&
        prefix == other.prefix &&
        flag == other.flag &&
        currencies == other.currencies;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, G__typename.hashCode);
    _$hash = $jc(_$hash, country.hashCode);
    _$hash = $jc(_$hash, displayName.hashCode);
    _$hash = $jc(_$hash, prefix.hashCode);
    _$hash = $jc(_$hash, flag.hashCode);
    _$hash = $jc(_$hash, currencies.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(
            r'GgetPawaPayOptionsData_getPawaPayOptions_countries')
          ..add('G__typename', G__typename)
          ..add('country', country)
          ..add('displayName', displayName)
          ..add('prefix', prefix)
          ..add('flag', flag)
          ..add('currencies', currencies))
        .toString();
  }
}

class GgetPawaPayOptionsData_getPawaPayOptions_countriesBuilder
    implements
        Builder<GgetPawaPayOptionsData_getPawaPayOptions_countries,
            GgetPawaPayOptionsData_getPawaPayOptions_countriesBuilder> {
  _$GgetPawaPayOptionsData_getPawaPayOptions_countries? _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  String? _country;
  String? get country => _$this._country;
  set country(String? country) => _$this._country = country;

  String? _displayName;
  String? get displayName => _$this._displayName;
  set displayName(String? displayName) => _$this._displayName = displayName;

  String? _prefix;
  String? get prefix => _$this._prefix;
  set prefix(String? prefix) => _$this._prefix = prefix;

  String? _flag;
  String? get flag => _$this._flag;
  set flag(String? flag) => _$this._flag = flag;

  ListBuilder<GgetPawaPayOptionsData_getPawaPayOptions_countries_currencies?>?
      _currencies;
  ListBuilder<GgetPawaPayOptionsData_getPawaPayOptions_countries_currencies?>
      get currencies => _$this._currencies ??= new ListBuilder<
          GgetPawaPayOptionsData_getPawaPayOptions_countries_currencies?>();
  set currencies(
          ListBuilder<
                  GgetPawaPayOptionsData_getPawaPayOptions_countries_currencies?>?
              currencies) =>
      _$this._currencies = currencies;

  GgetPawaPayOptionsData_getPawaPayOptions_countriesBuilder() {
    GgetPawaPayOptionsData_getPawaPayOptions_countries._initializeBuilder(this);
  }

  GgetPawaPayOptionsData_getPawaPayOptions_countriesBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _G__typename = $v.G__typename;
      _country = $v.country;
      _displayName = $v.displayName;
      _prefix = $v.prefix;
      _flag = $v.flag;
      _currencies = $v.currencies?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GgetPawaPayOptionsData_getPawaPayOptions_countries other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GgetPawaPayOptionsData_getPawaPayOptions_countries;
  }

  @override
  void update(
      void Function(GgetPawaPayOptionsData_getPawaPayOptions_countriesBuilder)?
          updates) {
    if (updates != null) updates(this);
  }

  @override
  GgetPawaPayOptionsData_getPawaPayOptions_countries build() => _build();

  _$GgetPawaPayOptionsData_getPawaPayOptions_countries _build() {
    _$GgetPawaPayOptionsData_getPawaPayOptions_countries _$result;
    try {
      _$result = _$v ??
          new _$GgetPawaPayOptionsData_getPawaPayOptions_countries._(
              G__typename: BuiltValueNullFieldError.checkNotNull(
                  G__typename,
                  r'GgetPawaPayOptionsData_getPawaPayOptions_countries',
                  'G__typename'),
              country: country,
              displayName: displayName,
              prefix: prefix,
              flag: flag,
              currencies: _currencies?.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'currencies';
        _currencies?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'GgetPawaPayOptionsData_getPawaPayOptions_countries',
            _$failedField,
            e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

class _$GgetPawaPayOptionsData_getPawaPayOptions_countries_currencies
    extends GgetPawaPayOptionsData_getPawaPayOptions_countries_currencies {
  @override
  final String G__typename;
  @override
  final String? currency;
  @override
  final BuiltList<
          GgetPawaPayOptionsData_getPawaPayOptions_countries_currencies_providers?>?
      providers;

  factory _$GgetPawaPayOptionsData_getPawaPayOptions_countries_currencies(
          [void Function(
                  GgetPawaPayOptionsData_getPawaPayOptions_countries_currenciesBuilder)?
              updates]) =>
      (new GgetPawaPayOptionsData_getPawaPayOptions_countries_currenciesBuilder()
            ..update(updates))
          ._build();

  _$GgetPawaPayOptionsData_getPawaPayOptions_countries_currencies._(
      {required this.G__typename, this.currency, this.providers})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        G__typename,
        r'GgetPawaPayOptionsData_getPawaPayOptions_countries_currencies',
        'G__typename');
  }

  @override
  GgetPawaPayOptionsData_getPawaPayOptions_countries_currencies rebuild(
          void Function(
                  GgetPawaPayOptionsData_getPawaPayOptions_countries_currenciesBuilder)
              updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GgetPawaPayOptionsData_getPawaPayOptions_countries_currenciesBuilder
      toBuilder() =>
          new GgetPawaPayOptionsData_getPawaPayOptions_countries_currenciesBuilder()
            ..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other
            is GgetPawaPayOptionsData_getPawaPayOptions_countries_currencies &&
        G__typename == other.G__typename &&
        currency == other.currency &&
        providers == other.providers;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, G__typename.hashCode);
    _$hash = $jc(_$hash, currency.hashCode);
    _$hash = $jc(_$hash, providers.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(
            r'GgetPawaPayOptionsData_getPawaPayOptions_countries_currencies')
          ..add('G__typename', G__typename)
          ..add('currency', currency)
          ..add('providers', providers))
        .toString();
  }
}

class GgetPawaPayOptionsData_getPawaPayOptions_countries_currenciesBuilder
    implements
        Builder<GgetPawaPayOptionsData_getPawaPayOptions_countries_currencies,
            GgetPawaPayOptionsData_getPawaPayOptions_countries_currenciesBuilder> {
  _$GgetPawaPayOptionsData_getPawaPayOptions_countries_currencies? _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  String? _currency;
  String? get currency => _$this._currency;
  set currency(String? currency) => _$this._currency = currency;

  ListBuilder<
          GgetPawaPayOptionsData_getPawaPayOptions_countries_currencies_providers?>?
      _providers;
  ListBuilder<
          GgetPawaPayOptionsData_getPawaPayOptions_countries_currencies_providers?>
      get providers => _$this._providers ??= new ListBuilder<
          GgetPawaPayOptionsData_getPawaPayOptions_countries_currencies_providers?>();
  set providers(
          ListBuilder<
                  GgetPawaPayOptionsData_getPawaPayOptions_countries_currencies_providers?>?
              providers) =>
      _$this._providers = providers;

  GgetPawaPayOptionsData_getPawaPayOptions_countries_currenciesBuilder() {
    GgetPawaPayOptionsData_getPawaPayOptions_countries_currencies
        ._initializeBuilder(this);
  }

  GgetPawaPayOptionsData_getPawaPayOptions_countries_currenciesBuilder
      get _$this {
    final $v = _$v;
    if ($v != null) {
      _G__typename = $v.G__typename;
      _currency = $v.currency;
      _providers = $v.providers?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(
      GgetPawaPayOptionsData_getPawaPayOptions_countries_currencies other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other
        as _$GgetPawaPayOptionsData_getPawaPayOptions_countries_currencies;
  }

  @override
  void update(
      void Function(
              GgetPawaPayOptionsData_getPawaPayOptions_countries_currenciesBuilder)?
          updates) {
    if (updates != null) updates(this);
  }

  @override
  GgetPawaPayOptionsData_getPawaPayOptions_countries_currencies build() =>
      _build();

  _$GgetPawaPayOptionsData_getPawaPayOptions_countries_currencies _build() {
    _$GgetPawaPayOptionsData_getPawaPayOptions_countries_currencies _$result;
    try {
      _$result = _$v ??
          new _$GgetPawaPayOptionsData_getPawaPayOptions_countries_currencies._(
              G__typename: BuiltValueNullFieldError.checkNotNull(
                  G__typename,
                  r'GgetPawaPayOptionsData_getPawaPayOptions_countries_currencies',
                  'G__typename'),
              currency: currency,
              providers: _providers?.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'providers';
        _providers?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'GgetPawaPayOptionsData_getPawaPayOptions_countries_currencies',
            _$failedField,
            e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

class _$GgetPawaPayOptionsData_getPawaPayOptions_countries_currencies_providers
    extends GgetPawaPayOptionsData_getPawaPayOptions_countries_currencies_providers {
  @override
  final String G__typename;
  @override
  final String? provider;
  @override
  final String? displayName;

  factory _$GgetPawaPayOptionsData_getPawaPayOptions_countries_currencies_providers(
          [void Function(
                  GgetPawaPayOptionsData_getPawaPayOptions_countries_currencies_providersBuilder)?
              updates]) =>
      (new GgetPawaPayOptionsData_getPawaPayOptions_countries_currencies_providersBuilder()
            ..update(updates))
          ._build();

  _$GgetPawaPayOptionsData_getPawaPayOptions_countries_currencies_providers._(
      {required this.G__typename, this.provider, this.displayName})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        G__typename,
        r'GgetPawaPayOptionsData_getPawaPayOptions_countries_currencies_providers',
        'G__typename');
  }

  @override
  GgetPawaPayOptionsData_getPawaPayOptions_countries_currencies_providers rebuild(
          void Function(
                  GgetPawaPayOptionsData_getPawaPayOptions_countries_currencies_providersBuilder)
              updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GgetPawaPayOptionsData_getPawaPayOptions_countries_currencies_providersBuilder
      toBuilder() =>
          new GgetPawaPayOptionsData_getPawaPayOptions_countries_currencies_providersBuilder()
            ..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other
            is GgetPawaPayOptionsData_getPawaPayOptions_countries_currencies_providers &&
        G__typename == other.G__typename &&
        provider == other.provider &&
        displayName == other.displayName;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, G__typename.hashCode);
    _$hash = $jc(_$hash, provider.hashCode);
    _$hash = $jc(_$hash, displayName.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(
            r'GgetPawaPayOptionsData_getPawaPayOptions_countries_currencies_providers')
          ..add('G__typename', G__typename)
          ..add('provider', provider)
          ..add('displayName', displayName))
        .toString();
  }
}

class GgetPawaPayOptionsData_getPawaPayOptions_countries_currencies_providersBuilder
    implements
        Builder<
            GgetPawaPayOptionsData_getPawaPayOptions_countries_currencies_providers,
            GgetPawaPayOptionsData_getPawaPayOptions_countries_currencies_providersBuilder> {
  _$GgetPawaPayOptionsData_getPawaPayOptions_countries_currencies_providers?
      _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  String? _provider;
  String? get provider => _$this._provider;
  set provider(String? provider) => _$this._provider = provider;

  String? _displayName;
  String? get displayName => _$this._displayName;
  set displayName(String? displayName) => _$this._displayName = displayName;

  GgetPawaPayOptionsData_getPawaPayOptions_countries_currencies_providersBuilder() {
    GgetPawaPayOptionsData_getPawaPayOptions_countries_currencies_providers
        ._initializeBuilder(this);
  }

  GgetPawaPayOptionsData_getPawaPayOptions_countries_currencies_providersBuilder
      get _$this {
    final $v = _$v;
    if ($v != null) {
      _G__typename = $v.G__typename;
      _provider = $v.provider;
      _displayName = $v.displayName;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(
      GgetPawaPayOptionsData_getPawaPayOptions_countries_currencies_providers
          other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other
        as _$GgetPawaPayOptionsData_getPawaPayOptions_countries_currencies_providers;
  }

  @override
  void update(
      void Function(
              GgetPawaPayOptionsData_getPawaPayOptions_countries_currencies_providersBuilder)?
          updates) {
    if (updates != null) updates(this);
  }

  @override
  GgetPawaPayOptionsData_getPawaPayOptions_countries_currencies_providers
      build() => _build();

  _$GgetPawaPayOptionsData_getPawaPayOptions_countries_currencies_providers
      _build() {
    final _$result = _$v ??
        new _$GgetPawaPayOptionsData_getPawaPayOptions_countries_currencies_providers
            ._(
            G__typename: BuiltValueNullFieldError.checkNotNull(
                G__typename,
                r'GgetPawaPayOptionsData_getPawaPayOptions_countries_currencies_providers',
                'G__typename'),
            provider: provider,
            displayName: displayName);
    replace(_$result);
    return _$result;
  }
}

class _$GinitiatePawaPayDepositData extends GinitiatePawaPayDepositData {
  @override
  final String G__typename;
  @override
  final GinitiatePawaPayDepositData_initiatePawaPayDeposit?
      initiatePawaPayDeposit;

  factory _$GinitiatePawaPayDepositData(
          [void Function(GinitiatePawaPayDepositDataBuilder)? updates]) =>
      (new GinitiatePawaPayDepositDataBuilder()..update(updates))._build();

  _$GinitiatePawaPayDepositData._(
      {required this.G__typename, this.initiatePawaPayDeposit})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        G__typename, r'GinitiatePawaPayDepositData', 'G__typename');
  }

  @override
  GinitiatePawaPayDepositData rebuild(
          void Function(GinitiatePawaPayDepositDataBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GinitiatePawaPayDepositDataBuilder toBuilder() =>
      new GinitiatePawaPayDepositDataBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GinitiatePawaPayDepositData &&
        G__typename == other.G__typename &&
        initiatePawaPayDeposit == other.initiatePawaPayDeposit;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, G__typename.hashCode);
    _$hash = $jc(_$hash, initiatePawaPayDeposit.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'GinitiatePawaPayDepositData')
          ..add('G__typename', G__typename)
          ..add('initiatePawaPayDeposit', initiatePawaPayDeposit))
        .toString();
  }
}

class GinitiatePawaPayDepositDataBuilder
    implements
        Builder<GinitiatePawaPayDepositData,
            GinitiatePawaPayDepositDataBuilder> {
  _$GinitiatePawaPayDepositData? _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  GinitiatePawaPayDepositData_initiatePawaPayDepositBuilder?
      _initiatePawaPayDeposit;
  GinitiatePawaPayDepositData_initiatePawaPayDepositBuilder
      get initiatePawaPayDeposit => _$this._initiatePawaPayDeposit ??=
          new GinitiatePawaPayDepositData_initiatePawaPayDepositBuilder();
  set initiatePawaPayDeposit(
          GinitiatePawaPayDepositData_initiatePawaPayDepositBuilder?
              initiatePawaPayDeposit) =>
      _$this._initiatePawaPayDeposit = initiatePawaPayDeposit;

  GinitiatePawaPayDepositDataBuilder() {
    GinitiatePawaPayDepositData._initializeBuilder(this);
  }

  GinitiatePawaPayDepositDataBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _G__typename = $v.G__typename;
      _initiatePawaPayDeposit = $v.initiatePawaPayDeposit?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GinitiatePawaPayDepositData other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GinitiatePawaPayDepositData;
  }

  @override
  void update(void Function(GinitiatePawaPayDepositDataBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GinitiatePawaPayDepositData build() => _build();

  _$GinitiatePawaPayDepositData _build() {
    _$GinitiatePawaPayDepositData _$result;
    try {
      _$result = _$v ??
          new _$GinitiatePawaPayDepositData._(
              G__typename: BuiltValueNullFieldError.checkNotNull(
                  G__typename, r'GinitiatePawaPayDepositData', 'G__typename'),
              initiatePawaPayDeposit: _initiatePawaPayDeposit?.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'initiatePawaPayDeposit';
        _initiatePawaPayDeposit?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'GinitiatePawaPayDepositData', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

class _$GinitiatePawaPayDepositData_initiatePawaPayDeposit
    extends GinitiatePawaPayDepositData_initiatePawaPayDeposit {
  @override
  final String G__typename;
  @override
  final int? status;
  @override
  final String? errorMessage;
  @override
  final String? depositId;
  @override
  final String? paymentStatus;

  factory _$GinitiatePawaPayDepositData_initiatePawaPayDeposit(
          [void Function(
                  GinitiatePawaPayDepositData_initiatePawaPayDepositBuilder)?
              updates]) =>
      (new GinitiatePawaPayDepositData_initiatePawaPayDepositBuilder()
            ..update(updates))
          ._build();

  _$GinitiatePawaPayDepositData_initiatePawaPayDeposit._(
      {required this.G__typename,
      this.status,
      this.errorMessage,
      this.depositId,
      this.paymentStatus})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(G__typename,
        r'GinitiatePawaPayDepositData_initiatePawaPayDeposit', 'G__typename');
  }

  @override
  GinitiatePawaPayDepositData_initiatePawaPayDeposit rebuild(
          void Function(
                  GinitiatePawaPayDepositData_initiatePawaPayDepositBuilder)
              updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GinitiatePawaPayDepositData_initiatePawaPayDepositBuilder toBuilder() =>
      new GinitiatePawaPayDepositData_initiatePawaPayDepositBuilder()
        ..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GinitiatePawaPayDepositData_initiatePawaPayDeposit &&
        G__typename == other.G__typename &&
        status == other.status &&
        errorMessage == other.errorMessage &&
        depositId == other.depositId &&
        paymentStatus == other.paymentStatus;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, G__typename.hashCode);
    _$hash = $jc(_$hash, status.hashCode);
    _$hash = $jc(_$hash, errorMessage.hashCode);
    _$hash = $jc(_$hash, depositId.hashCode);
    _$hash = $jc(_$hash, paymentStatus.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(
            r'GinitiatePawaPayDepositData_initiatePawaPayDeposit')
          ..add('G__typename', G__typename)
          ..add('status', status)
          ..add('errorMessage', errorMessage)
          ..add('depositId', depositId)
          ..add('paymentStatus', paymentStatus))
        .toString();
  }
}

class GinitiatePawaPayDepositData_initiatePawaPayDepositBuilder
    implements
        Builder<GinitiatePawaPayDepositData_initiatePawaPayDeposit,
            GinitiatePawaPayDepositData_initiatePawaPayDepositBuilder> {
  _$GinitiatePawaPayDepositData_initiatePawaPayDeposit? _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  int? _status;
  int? get status => _$this._status;
  set status(int? status) => _$this._status = status;

  String? _errorMessage;
  String? get errorMessage => _$this._errorMessage;
  set errorMessage(String? errorMessage) => _$this._errorMessage = errorMessage;

  String? _depositId;
  String? get depositId => _$this._depositId;
  set depositId(String? depositId) => _$this._depositId = depositId;

  String? _paymentStatus;
  String? get paymentStatus => _$this._paymentStatus;
  set paymentStatus(String? paymentStatus) =>
      _$this._paymentStatus = paymentStatus;

  GinitiatePawaPayDepositData_initiatePawaPayDepositBuilder() {
    GinitiatePawaPayDepositData_initiatePawaPayDeposit._initializeBuilder(this);
  }

  GinitiatePawaPayDepositData_initiatePawaPayDepositBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _G__typename = $v.G__typename;
      _status = $v.status;
      _errorMessage = $v.errorMessage;
      _depositId = $v.depositId;
      _paymentStatus = $v.paymentStatus;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GinitiatePawaPayDepositData_initiatePawaPayDeposit other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GinitiatePawaPayDepositData_initiatePawaPayDeposit;
  }

  @override
  void update(
      void Function(GinitiatePawaPayDepositData_initiatePawaPayDepositBuilder)?
          updates) {
    if (updates != null) updates(this);
  }

  @override
  GinitiatePawaPayDepositData_initiatePawaPayDeposit build() => _build();

  _$GinitiatePawaPayDepositData_initiatePawaPayDeposit _build() {
    final _$result = _$v ??
        new _$GinitiatePawaPayDepositData_initiatePawaPayDeposit._(
            G__typename: BuiltValueNullFieldError.checkNotNull(
                G__typename,
                r'GinitiatePawaPayDepositData_initiatePawaPayDeposit',
                'G__typename'),
            status: status,
            errorMessage: errorMessage,
            depositId: depositId,
            paymentStatus: paymentStatus);
    replace(_$result);
    return _$result;
  }
}

class _$GgetPawaPayDepositStatusData extends GgetPawaPayDepositStatusData {
  @override
  final String G__typename;
  @override
  final GgetPawaPayDepositStatusData_getPawaPayDepositStatus?
      getPawaPayDepositStatus;

  factory _$GgetPawaPayDepositStatusData(
          [void Function(GgetPawaPayDepositStatusDataBuilder)? updates]) =>
      (new GgetPawaPayDepositStatusDataBuilder()..update(updates))._build();

  _$GgetPawaPayDepositStatusData._(
      {required this.G__typename, this.getPawaPayDepositStatus})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        G__typename, r'GgetPawaPayDepositStatusData', 'G__typename');
  }

  @override
  GgetPawaPayDepositStatusData rebuild(
          void Function(GgetPawaPayDepositStatusDataBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GgetPawaPayDepositStatusDataBuilder toBuilder() =>
      new GgetPawaPayDepositStatusDataBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GgetPawaPayDepositStatusData &&
        G__typename == other.G__typename &&
        getPawaPayDepositStatus == other.getPawaPayDepositStatus;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, G__typename.hashCode);
    _$hash = $jc(_$hash, getPawaPayDepositStatus.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'GgetPawaPayDepositStatusData')
          ..add('G__typename', G__typename)
          ..add('getPawaPayDepositStatus', getPawaPayDepositStatus))
        .toString();
  }
}

class GgetPawaPayDepositStatusDataBuilder
    implements
        Builder<GgetPawaPayDepositStatusData,
            GgetPawaPayDepositStatusDataBuilder> {
  _$GgetPawaPayDepositStatusData? _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  GgetPawaPayDepositStatusData_getPawaPayDepositStatusBuilder?
      _getPawaPayDepositStatus;
  GgetPawaPayDepositStatusData_getPawaPayDepositStatusBuilder
      get getPawaPayDepositStatus => _$this._getPawaPayDepositStatus ??=
          new GgetPawaPayDepositStatusData_getPawaPayDepositStatusBuilder();
  set getPawaPayDepositStatus(
          GgetPawaPayDepositStatusData_getPawaPayDepositStatusBuilder?
              getPawaPayDepositStatus) =>
      _$this._getPawaPayDepositStatus = getPawaPayDepositStatus;

  GgetPawaPayDepositStatusDataBuilder() {
    GgetPawaPayDepositStatusData._initializeBuilder(this);
  }

  GgetPawaPayDepositStatusDataBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _G__typename = $v.G__typename;
      _getPawaPayDepositStatus = $v.getPawaPayDepositStatus?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GgetPawaPayDepositStatusData other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GgetPawaPayDepositStatusData;
  }

  @override
  void update(void Function(GgetPawaPayDepositStatusDataBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GgetPawaPayDepositStatusData build() => _build();

  _$GgetPawaPayDepositStatusData _build() {
    _$GgetPawaPayDepositStatusData _$result;
    try {
      _$result = _$v ??
          new _$GgetPawaPayDepositStatusData._(
              G__typename: BuiltValueNullFieldError.checkNotNull(
                  G__typename, r'GgetPawaPayDepositStatusData', 'G__typename'),
              getPawaPayDepositStatus: _getPawaPayDepositStatus?.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'getPawaPayDepositStatus';
        _getPawaPayDepositStatus?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'GgetPawaPayDepositStatusData', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

class _$GgetPawaPayDepositStatusData_getPawaPayDepositStatus
    extends GgetPawaPayDepositStatusData_getPawaPayDepositStatus {
  @override
  final String G__typename;
  @override
  final int? status;
  @override
  final String? errorMessage;
  @override
  final String? paymentStatus;
  @override
  final GgetPawaPayDepositStatusData_getPawaPayDepositStatus_reservation?
      reservation;

  factory _$GgetPawaPayDepositStatusData_getPawaPayDepositStatus(
          [void Function(
                  GgetPawaPayDepositStatusData_getPawaPayDepositStatusBuilder)?
              updates]) =>
      (new GgetPawaPayDepositStatusData_getPawaPayDepositStatusBuilder()
            ..update(updates))
          ._build();

  _$GgetPawaPayDepositStatusData_getPawaPayDepositStatus._(
      {required this.G__typename,
      this.status,
      this.errorMessage,
      this.paymentStatus,
      this.reservation})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(G__typename,
        r'GgetPawaPayDepositStatusData_getPawaPayDepositStatus', 'G__typename');
  }

  @override
  GgetPawaPayDepositStatusData_getPawaPayDepositStatus rebuild(
          void Function(
                  GgetPawaPayDepositStatusData_getPawaPayDepositStatusBuilder)
              updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GgetPawaPayDepositStatusData_getPawaPayDepositStatusBuilder toBuilder() =>
      new GgetPawaPayDepositStatusData_getPawaPayDepositStatusBuilder()
        ..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GgetPawaPayDepositStatusData_getPawaPayDepositStatus &&
        G__typename == other.G__typename &&
        status == other.status &&
        errorMessage == other.errorMessage &&
        paymentStatus == other.paymentStatus &&
        reservation == other.reservation;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, G__typename.hashCode);
    _$hash = $jc(_$hash, status.hashCode);
    _$hash = $jc(_$hash, errorMessage.hashCode);
    _$hash = $jc(_$hash, paymentStatus.hashCode);
    _$hash = $jc(_$hash, reservation.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(
            r'GgetPawaPayDepositStatusData_getPawaPayDepositStatus')
          ..add('G__typename', G__typename)
          ..add('status', status)
          ..add('errorMessage', errorMessage)
          ..add('paymentStatus', paymentStatus)
          ..add('reservation', reservation))
        .toString();
  }
}

class GgetPawaPayDepositStatusData_getPawaPayDepositStatusBuilder
    implements
        Builder<GgetPawaPayDepositStatusData_getPawaPayDepositStatus,
            GgetPawaPayDepositStatusData_getPawaPayDepositStatusBuilder> {
  _$GgetPawaPayDepositStatusData_getPawaPayDepositStatus? _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  int? _status;
  int? get status => _$this._status;
  set status(int? status) => _$this._status = status;

  String? _errorMessage;
  String? get errorMessage => _$this._errorMessage;
  set errorMessage(String? errorMessage) => _$this._errorMessage = errorMessage;

  String? _paymentStatus;
  String? get paymentStatus => _$this._paymentStatus;
  set paymentStatus(String? paymentStatus) =>
      _$this._paymentStatus = paymentStatus;

  GgetPawaPayDepositStatusData_getPawaPayDepositStatus_reservationBuilder?
      _reservation;
  GgetPawaPayDepositStatusData_getPawaPayDepositStatus_reservationBuilder
      get reservation => _$this._reservation ??=
          new GgetPawaPayDepositStatusData_getPawaPayDepositStatus_reservationBuilder();
  set reservation(
          GgetPawaPayDepositStatusData_getPawaPayDepositStatus_reservationBuilder?
              reservation) =>
      _$this._reservation = reservation;

  GgetPawaPayDepositStatusData_getPawaPayDepositStatusBuilder() {
    GgetPawaPayDepositStatusData_getPawaPayDepositStatus._initializeBuilder(
        this);
  }

  GgetPawaPayDepositStatusData_getPawaPayDepositStatusBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _G__typename = $v.G__typename;
      _status = $v.status;
      _errorMessage = $v.errorMessage;
      _paymentStatus = $v.paymentStatus;
      _reservation = $v.reservation?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GgetPawaPayDepositStatusData_getPawaPayDepositStatus other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GgetPawaPayDepositStatusData_getPawaPayDepositStatus;
  }

  @override
  void update(
      void Function(
              GgetPawaPayDepositStatusData_getPawaPayDepositStatusBuilder)?
          updates) {
    if (updates != null) updates(this);
  }

  @override
  GgetPawaPayDepositStatusData_getPawaPayDepositStatus build() => _build();

  _$GgetPawaPayDepositStatusData_getPawaPayDepositStatus _build() {
    _$GgetPawaPayDepositStatusData_getPawaPayDepositStatus _$result;
    try {
      _$result = _$v ??
          new _$GgetPawaPayDepositStatusData_getPawaPayDepositStatus._(
              G__typename: BuiltValueNullFieldError.checkNotNull(
                  G__typename,
                  r'GgetPawaPayDepositStatusData_getPawaPayDepositStatus',
                  'G__typename'),
              status: status,
              errorMessage: errorMessage,
              paymentStatus: paymentStatus,
              reservation: _reservation?.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'reservation';
        _reservation?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'GgetPawaPayDepositStatusData_getPawaPayDepositStatus',
            _$failedField,
            e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

class _$GgetPawaPayDepositStatusData_getPawaPayDepositStatus_reservation
    extends GgetPawaPayDepositStatusData_getPawaPayDepositStatus_reservation {
  @override
  final String G__typename;
  @override
  final int? id;
  @override
  final String? paymentState;
  @override
  final String? reservationState;

  factory _$GgetPawaPayDepositStatusData_getPawaPayDepositStatus_reservation(
          [void Function(
                  GgetPawaPayDepositStatusData_getPawaPayDepositStatus_reservationBuilder)?
              updates]) =>
      (new GgetPawaPayDepositStatusData_getPawaPayDepositStatus_reservationBuilder()
            ..update(updates))
          ._build();

  _$GgetPawaPayDepositStatusData_getPawaPayDepositStatus_reservation._(
      {required this.G__typename,
      this.id,
      this.paymentState,
      this.reservationState})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        G__typename,
        r'GgetPawaPayDepositStatusData_getPawaPayDepositStatus_reservation',
        'G__typename');
  }

  @override
  GgetPawaPayDepositStatusData_getPawaPayDepositStatus_reservation rebuild(
          void Function(
                  GgetPawaPayDepositStatusData_getPawaPayDepositStatus_reservationBuilder)
              updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GgetPawaPayDepositStatusData_getPawaPayDepositStatus_reservationBuilder
      toBuilder() =>
          new GgetPawaPayDepositStatusData_getPawaPayDepositStatus_reservationBuilder()
            ..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other
            is GgetPawaPayDepositStatusData_getPawaPayDepositStatus_reservation &&
        G__typename == other.G__typename &&
        id == other.id &&
        paymentState == other.paymentState &&
        reservationState == other.reservationState;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, G__typename.hashCode);
    _$hash = $jc(_$hash, id.hashCode);
    _$hash = $jc(_$hash, paymentState.hashCode);
    _$hash = $jc(_$hash, reservationState.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(
            r'GgetPawaPayDepositStatusData_getPawaPayDepositStatus_reservation')
          ..add('G__typename', G__typename)
          ..add('id', id)
          ..add('paymentState', paymentState)
          ..add('reservationState', reservationState))
        .toString();
  }
}

class GgetPawaPayDepositStatusData_getPawaPayDepositStatus_reservationBuilder
    implements
        Builder<
            GgetPawaPayDepositStatusData_getPawaPayDepositStatus_reservation,
            GgetPawaPayDepositStatusData_getPawaPayDepositStatus_reservationBuilder> {
  _$GgetPawaPayDepositStatusData_getPawaPayDepositStatus_reservation? _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  int? _id;
  int? get id => _$this._id;
  set id(int? id) => _$this._id = id;

  String? _paymentState;
  String? get paymentState => _$this._paymentState;
  set paymentState(String? paymentState) => _$this._paymentState = paymentState;

  String? _reservationState;
  String? get reservationState => _$this._reservationState;
  set reservationState(String? reservationState) =>
      _$this._reservationState = reservationState;

  GgetPawaPayDepositStatusData_getPawaPayDepositStatus_reservationBuilder() {
    GgetPawaPayDepositStatusData_getPawaPayDepositStatus_reservation
        ._initializeBuilder(this);
  }

  GgetPawaPayDepositStatusData_getPawaPayDepositStatus_reservationBuilder
      get _$this {
    final $v = _$v;
    if ($v != null) {
      _G__typename = $v.G__typename;
      _id = $v.id;
      _paymentState = $v.paymentState;
      _reservationState = $v.reservationState;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(
      GgetPawaPayDepositStatusData_getPawaPayDepositStatus_reservation other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other
        as _$GgetPawaPayDepositStatusData_getPawaPayDepositStatus_reservation;
  }

  @override
  void update(
      void Function(
              GgetPawaPayDepositStatusData_getPawaPayDepositStatus_reservationBuilder)?
          updates) {
    if (updates != null) updates(this);
  }

  @override
  GgetPawaPayDepositStatusData_getPawaPayDepositStatus_reservation build() =>
      _build();

  _$GgetPawaPayDepositStatusData_getPawaPayDepositStatus_reservation _build() {
    final _$result = _$v ??
        new _$GgetPawaPayDepositStatusData_getPawaPayDepositStatus_reservation
            ._(
            G__typename: BuiltValueNullFieldError.checkNotNull(
                G__typename,
                r'GgetPawaPayDepositStatusData_getPawaPayDepositStatus_reservation',
                'G__typename'),
            id: id,
            paymentState: paymentState,
            reservationState: reservationState);
    replace(_$result);
    return _$result;
  }
}

class _$GaddPawaPayPayoutAccountData extends GaddPawaPayPayoutAccountData {
  @override
  final String G__typename;
  @override
  final GaddPawaPayPayoutAccountData_addPawaPayPayoutAccount?
      addPawaPayPayoutAccount;

  factory _$GaddPawaPayPayoutAccountData(
          [void Function(GaddPawaPayPayoutAccountDataBuilder)? updates]) =>
      (new GaddPawaPayPayoutAccountDataBuilder()..update(updates))._build();

  _$GaddPawaPayPayoutAccountData._(
      {required this.G__typename, this.addPawaPayPayoutAccount})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        G__typename, r'GaddPawaPayPayoutAccountData', 'G__typename');
  }

  @override
  GaddPawaPayPayoutAccountData rebuild(
          void Function(GaddPawaPayPayoutAccountDataBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GaddPawaPayPayoutAccountDataBuilder toBuilder() =>
      new GaddPawaPayPayoutAccountDataBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GaddPawaPayPayoutAccountData &&
        G__typename == other.G__typename &&
        addPawaPayPayoutAccount == other.addPawaPayPayoutAccount;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, G__typename.hashCode);
    _$hash = $jc(_$hash, addPawaPayPayoutAccount.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'GaddPawaPayPayoutAccountData')
          ..add('G__typename', G__typename)
          ..add('addPawaPayPayoutAccount', addPawaPayPayoutAccount))
        .toString();
  }
}

class GaddPawaPayPayoutAccountDataBuilder
    implements
        Builder<GaddPawaPayPayoutAccountData,
            GaddPawaPayPayoutAccountDataBuilder> {
  _$GaddPawaPayPayoutAccountData? _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  GaddPawaPayPayoutAccountData_addPawaPayPayoutAccountBuilder?
      _addPawaPayPayoutAccount;
  GaddPawaPayPayoutAccountData_addPawaPayPayoutAccountBuilder
      get addPawaPayPayoutAccount => _$this._addPawaPayPayoutAccount ??=
          new GaddPawaPayPayoutAccountData_addPawaPayPayoutAccountBuilder();
  set addPawaPayPayoutAccount(
          GaddPawaPayPayoutAccountData_addPawaPayPayoutAccountBuilder?
              addPawaPayPayoutAccount) =>
      _$this._addPawaPayPayoutAccount = addPawaPayPayoutAccount;

  GaddPawaPayPayoutAccountDataBuilder() {
    GaddPawaPayPayoutAccountData._initializeBuilder(this);
  }

  GaddPawaPayPayoutAccountDataBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _G__typename = $v.G__typename;
      _addPawaPayPayoutAccount = $v.addPawaPayPayoutAccount?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GaddPawaPayPayoutAccountData other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GaddPawaPayPayoutAccountData;
  }

  @override
  void update(void Function(GaddPawaPayPayoutAccountDataBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GaddPawaPayPayoutAccountData build() => _build();

  _$GaddPawaPayPayoutAccountData _build() {
    _$GaddPawaPayPayoutAccountData _$result;
    try {
      _$result = _$v ??
          new _$GaddPawaPayPayoutAccountData._(
              G__typename: BuiltValueNullFieldError.checkNotNull(
                  G__typename, r'GaddPawaPayPayoutAccountData', 'G__typename'),
              addPawaPayPayoutAccount: _addPawaPayPayoutAccount?.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'addPawaPayPayoutAccount';
        _addPawaPayPayoutAccount?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'GaddPawaPayPayoutAccountData', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

class _$GaddPawaPayPayoutAccountData_addPawaPayPayoutAccount
    extends GaddPawaPayPayoutAccountData_addPawaPayPayoutAccount {
  @override
  final String G__typename;
  @override
  final int? status;
  @override
  final String? errorMessage;
  @override
  final GaddPawaPayPayoutAccountData_addPawaPayPayoutAccount_result? result;

  factory _$GaddPawaPayPayoutAccountData_addPawaPayPayoutAccount(
          [void Function(
                  GaddPawaPayPayoutAccountData_addPawaPayPayoutAccountBuilder)?
              updates]) =>
      (new GaddPawaPayPayoutAccountData_addPawaPayPayoutAccountBuilder()
            ..update(updates))
          ._build();

  _$GaddPawaPayPayoutAccountData_addPawaPayPayoutAccount._(
      {required this.G__typename, this.status, this.errorMessage, this.result})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(G__typename,
        r'GaddPawaPayPayoutAccountData_addPawaPayPayoutAccount', 'G__typename');
  }

  @override
  GaddPawaPayPayoutAccountData_addPawaPayPayoutAccount rebuild(
          void Function(
                  GaddPawaPayPayoutAccountData_addPawaPayPayoutAccountBuilder)
              updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GaddPawaPayPayoutAccountData_addPawaPayPayoutAccountBuilder toBuilder() =>
      new GaddPawaPayPayoutAccountData_addPawaPayPayoutAccountBuilder()
        ..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GaddPawaPayPayoutAccountData_addPawaPayPayoutAccount &&
        G__typename == other.G__typename &&
        status == other.status &&
        errorMessage == other.errorMessage &&
        result == other.result;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, G__typename.hashCode);
    _$hash = $jc(_$hash, status.hashCode);
    _$hash = $jc(_$hash, errorMessage.hashCode);
    _$hash = $jc(_$hash, result.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(
            r'GaddPawaPayPayoutAccountData_addPawaPayPayoutAccount')
          ..add('G__typename', G__typename)
          ..add('status', status)
          ..add('errorMessage', errorMessage)
          ..add('result', result))
        .toString();
  }
}

class GaddPawaPayPayoutAccountData_addPawaPayPayoutAccountBuilder
    implements
        Builder<GaddPawaPayPayoutAccountData_addPawaPayPayoutAccount,
            GaddPawaPayPayoutAccountData_addPawaPayPayoutAccountBuilder> {
  _$GaddPawaPayPayoutAccountData_addPawaPayPayoutAccount? _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  int? _status;
  int? get status => _$this._status;
  set status(int? status) => _$this._status = status;

  String? _errorMessage;
  String? get errorMessage => _$this._errorMessage;
  set errorMessage(String? errorMessage) => _$this._errorMessage = errorMessage;

  GaddPawaPayPayoutAccountData_addPawaPayPayoutAccount_resultBuilder? _result;
  GaddPawaPayPayoutAccountData_addPawaPayPayoutAccount_resultBuilder
      get result => _$this._result ??=
          new GaddPawaPayPayoutAccountData_addPawaPayPayoutAccount_resultBuilder();
  set result(
          GaddPawaPayPayoutAccountData_addPawaPayPayoutAccount_resultBuilder?
              result) =>
      _$this._result = result;

  GaddPawaPayPayoutAccountData_addPawaPayPayoutAccountBuilder() {
    GaddPawaPayPayoutAccountData_addPawaPayPayoutAccount._initializeBuilder(
        this);
  }

  GaddPawaPayPayoutAccountData_addPawaPayPayoutAccountBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _G__typename = $v.G__typename;
      _status = $v.status;
      _errorMessage = $v.errorMessage;
      _result = $v.result?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GaddPawaPayPayoutAccountData_addPawaPayPayoutAccount other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GaddPawaPayPayoutAccountData_addPawaPayPayoutAccount;
  }

  @override
  void update(
      void Function(
              GaddPawaPayPayoutAccountData_addPawaPayPayoutAccountBuilder)?
          updates) {
    if (updates != null) updates(this);
  }

  @override
  GaddPawaPayPayoutAccountData_addPawaPayPayoutAccount build() => _build();

  _$GaddPawaPayPayoutAccountData_addPawaPayPayoutAccount _build() {
    _$GaddPawaPayPayoutAccountData_addPawaPayPayoutAccount _$result;
    try {
      _$result = _$v ??
          new _$GaddPawaPayPayoutAccountData_addPawaPayPayoutAccount._(
              G__typename: BuiltValueNullFieldError.checkNotNull(
                  G__typename,
                  r'GaddPawaPayPayoutAccountData_addPawaPayPayoutAccount',
                  'G__typename'),
              status: status,
              errorMessage: errorMessage,
              result: _result?.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'result';
        _result?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'GaddPawaPayPayoutAccountData_addPawaPayPayoutAccount',
            _$failedField,
            e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

class _$GaddPawaPayPayoutAccountData_addPawaPayPayoutAccount_result
    extends GaddPawaPayPayoutAccountData_addPawaPayPayoutAccount_result {
  @override
  final String G__typename;
  @override
  final int? id;
  @override
  final int? methodId;
  @override
  final String? payEmail;
  @override
  final String? address1;
  @override
  final String? country;
  @override
  final String? currency;
  @override
  final bool? Gdefault;
  @override
  final bool? isVerified;

  factory _$GaddPawaPayPayoutAccountData_addPawaPayPayoutAccount_result(
          [void Function(
                  GaddPawaPayPayoutAccountData_addPawaPayPayoutAccount_resultBuilder)?
              updates]) =>
      (new GaddPawaPayPayoutAccountData_addPawaPayPayoutAccount_resultBuilder()
            ..update(updates))
          ._build();

  _$GaddPawaPayPayoutAccountData_addPawaPayPayoutAccount_result._(
      {required this.G__typename,
      this.id,
      this.methodId,
      this.payEmail,
      this.address1,
      this.country,
      this.currency,
      this.Gdefault,
      this.isVerified})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        G__typename,
        r'GaddPawaPayPayoutAccountData_addPawaPayPayoutAccount_result',
        'G__typename');
  }

  @override
  GaddPawaPayPayoutAccountData_addPawaPayPayoutAccount_result rebuild(
          void Function(
                  GaddPawaPayPayoutAccountData_addPawaPayPayoutAccount_resultBuilder)
              updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GaddPawaPayPayoutAccountData_addPawaPayPayoutAccount_resultBuilder
      toBuilder() =>
          new GaddPawaPayPayoutAccountData_addPawaPayPayoutAccount_resultBuilder()
            ..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other
            is GaddPawaPayPayoutAccountData_addPawaPayPayoutAccount_result &&
        G__typename == other.G__typename &&
        id == other.id &&
        methodId == other.methodId &&
        payEmail == other.payEmail &&
        address1 == other.address1 &&
        country == other.country &&
        currency == other.currency &&
        Gdefault == other.Gdefault &&
        isVerified == other.isVerified;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, G__typename.hashCode);
    _$hash = $jc(_$hash, id.hashCode);
    _$hash = $jc(_$hash, methodId.hashCode);
    _$hash = $jc(_$hash, payEmail.hashCode);
    _$hash = $jc(_$hash, address1.hashCode);
    _$hash = $jc(_$hash, country.hashCode);
    _$hash = $jc(_$hash, currency.hashCode);
    _$hash = $jc(_$hash, Gdefault.hashCode);
    _$hash = $jc(_$hash, isVerified.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(
            r'GaddPawaPayPayoutAccountData_addPawaPayPayoutAccount_result')
          ..add('G__typename', G__typename)
          ..add('id', id)
          ..add('methodId', methodId)
          ..add('payEmail', payEmail)
          ..add('address1', address1)
          ..add('country', country)
          ..add('currency', currency)
          ..add('Gdefault', Gdefault)
          ..add('isVerified', isVerified))
        .toString();
  }
}

class GaddPawaPayPayoutAccountData_addPawaPayPayoutAccount_resultBuilder
    implements
        Builder<GaddPawaPayPayoutAccountData_addPawaPayPayoutAccount_result,
            GaddPawaPayPayoutAccountData_addPawaPayPayoutAccount_resultBuilder> {
  _$GaddPawaPayPayoutAccountData_addPawaPayPayoutAccount_result? _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  int? _id;
  int? get id => _$this._id;
  set id(int? id) => _$this._id = id;

  int? _methodId;
  int? get methodId => _$this._methodId;
  set methodId(int? methodId) => _$this._methodId = methodId;

  String? _payEmail;
  String? get payEmail => _$this._payEmail;
  set payEmail(String? payEmail) => _$this._payEmail = payEmail;

  String? _address1;
  String? get address1 => _$this._address1;
  set address1(String? address1) => _$this._address1 = address1;

  String? _country;
  String? get country => _$this._country;
  set country(String? country) => _$this._country = country;

  String? _currency;
  String? get currency => _$this._currency;
  set currency(String? currency) => _$this._currency = currency;

  bool? _Gdefault;
  bool? get Gdefault => _$this._Gdefault;
  set Gdefault(bool? Gdefault) => _$this._Gdefault = Gdefault;

  bool? _isVerified;
  bool? get isVerified => _$this._isVerified;
  set isVerified(bool? isVerified) => _$this._isVerified = isVerified;

  GaddPawaPayPayoutAccountData_addPawaPayPayoutAccount_resultBuilder() {
    GaddPawaPayPayoutAccountData_addPawaPayPayoutAccount_result
        ._initializeBuilder(this);
  }

  GaddPawaPayPayoutAccountData_addPawaPayPayoutAccount_resultBuilder
      get _$this {
    final $v = _$v;
    if ($v != null) {
      _G__typename = $v.G__typename;
      _id = $v.id;
      _methodId = $v.methodId;
      _payEmail = $v.payEmail;
      _address1 = $v.address1;
      _country = $v.country;
      _currency = $v.currency;
      _Gdefault = $v.Gdefault;
      _isVerified = $v.isVerified;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(
      GaddPawaPayPayoutAccountData_addPawaPayPayoutAccount_result other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v =
        other as _$GaddPawaPayPayoutAccountData_addPawaPayPayoutAccount_result;
  }

  @override
  void update(
      void Function(
              GaddPawaPayPayoutAccountData_addPawaPayPayoutAccount_resultBuilder)?
          updates) {
    if (updates != null) updates(this);
  }

  @override
  GaddPawaPayPayoutAccountData_addPawaPayPayoutAccount_result build() =>
      _build();

  _$GaddPawaPayPayoutAccountData_addPawaPayPayoutAccount_result _build() {
    final _$result = _$v ??
        new _$GaddPawaPayPayoutAccountData_addPawaPayPayoutAccount_result._(
            G__typename: BuiltValueNullFieldError.checkNotNull(
                G__typename,
                r'GaddPawaPayPayoutAccountData_addPawaPayPayoutAccount_result',
                'G__typename'),
            id: id,
            methodId: methodId,
            payEmail: payEmail,
            address1: address1,
            country: country,
            currency: currency,
            Gdefault: Gdefault,
            isVerified: isVerified);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
