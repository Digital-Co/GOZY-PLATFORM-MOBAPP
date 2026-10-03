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
      this.paymentType})
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
        paymentType == other.paymentType;
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
          ..add('paymentType', paymentType))
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
            paymentType: paymentType);
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

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
