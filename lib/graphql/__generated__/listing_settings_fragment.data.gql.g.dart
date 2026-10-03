// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'listing_settings_fragment.data.gql.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<GlistingSettingsFragmentData>
    _$glistingSettingsFragmentDataSerializer =
    new _$GlistingSettingsFragmentDataSerializer();
Serializer<GlistingSettingsFragmentData_dynamicItemName>
    _$glistingSettingsFragmentDataDynamicItemNameSerializer =
    new _$GlistingSettingsFragmentData_dynamicItemNameSerializer();
Serializer<GcancellationFragmentData> _$gcancellationFragmentDataSerializer =
    new _$GcancellationFragmentDataSerializer();
Serializer<GavailabilityFragmentData> _$gavailabilityFragmentDataSerializer =
    new _$GavailabilityFragmentDataSerializer();
Serializer<GlistingSettingsTypesFragmentData>
    _$glistingSettingsTypesFragmentDataSerializer =
    new _$GlistingSettingsTypesFragmentDataSerializer();
Serializer<GlistingSettingsTypesFragmentData_listSettings>
    _$glistingSettingsTypesFragmentDataListSettingsSerializer =
    new _$GlistingSettingsTypesFragmentData_listSettingsSerializer();
Serializer<GlistingSettingsTypesFragmentData_listSettings_dynamicItemName>
    _$glistingSettingsTypesFragmentDataListSettingsDynamicItemNameSerializer =
    new _$GlistingSettingsTypesFragmentData_listSettings_dynamicItemNameSerializer();

class _$GlistingSettingsFragmentDataSerializer
    implements StructuredSerializer<GlistingSettingsFragmentData> {
  @override
  final Iterable<Type> types = const [
    GlistingSettingsFragmentData,
    _$GlistingSettingsFragmentData
  ];
  @override
  final String wireName = 'GlistingSettingsFragmentData';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, GlistingSettingsFragmentData object,
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
    value = object.typeId;
    if (value != null) {
      result
        ..add('typeId')
        ..add(serializers.serialize(value, specifiedType: const FullType(int)));
    }
    value = object.itemName;
    if (value != null) {
      result
        ..add('itemName')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.otherItemName;
    if (value != null) {
      result
        ..add('otherItemName')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.maximum;
    if (value != null) {
      result
        ..add('maximum')
        ..add(serializers.serialize(value, specifiedType: const FullType(int)));
    }
    value = object.minimum;
    if (value != null) {
      result
        ..add('minimum')
        ..add(serializers.serialize(value, specifiedType: const FullType(int)));
    }
    value = object.startValue;
    if (value != null) {
      result
        ..add('startValue')
        ..add(serializers.serialize(value, specifiedType: const FullType(int)));
    }
    value = object.endValue;
    if (value != null) {
      result
        ..add('endValue')
        ..add(serializers.serialize(value, specifiedType: const FullType(int)));
    }
    value = object.isEnable;
    if (value != null) {
      result
        ..add('isEnable')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.makeType;
    if (value != null) {
      result
        ..add('makeType')
        ..add(serializers.serialize(value, specifiedType: const FullType(int)));
    }
    value = object.dynamicItemName;
    if (value != null) {
      result
        ..add('dynamicItemName')
        ..add(serializers.serialize(value,
            specifiedType:
                const FullType(GlistingSettingsFragmentData_dynamicItemName)));
    }
    return result;
  }

  @override
  GlistingSettingsFragmentData deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GlistingSettingsFragmentDataBuilder();

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
        case 'typeId':
          result.typeId = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int?;
          break;
        case 'itemName':
          result.itemName = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'otherItemName':
          result.otherItemName = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'maximum':
          result.maximum = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int?;
          break;
        case 'minimum':
          result.minimum = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int?;
          break;
        case 'startValue':
          result.startValue = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int?;
          break;
        case 'endValue':
          result.endValue = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int?;
          break;
        case 'isEnable':
          result.isEnable = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'makeType':
          result.makeType = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int?;
          break;
        case 'dynamicItemName':
          result.dynamicItemName.replace(serializers.deserialize(value,
                  specifiedType: const FullType(
                      GlistingSettingsFragmentData_dynamicItemName))!
              as GlistingSettingsFragmentData_dynamicItemName);
          break;
      }
    }

    return result.build();
  }
}

class _$GlistingSettingsFragmentData_dynamicItemNameSerializer
    implements
        StructuredSerializer<GlistingSettingsFragmentData_dynamicItemName> {
  @override
  final Iterable<Type> types = const [
    GlistingSettingsFragmentData_dynamicItemName,
    _$GlistingSettingsFragmentData_dynamicItemName
  ];
  @override
  final String wireName = 'GlistingSettingsFragmentData_dynamicItemName';

  @override
  Iterable<Object?> serialize(Serializers serializers,
      GlistingSettingsFragmentData_dynamicItemName object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      '__typename',
      serializers.serialize(object.G__typename,
          specifiedType: const FullType(String)),
    ];
    Object? value;
    value = object.ar;
    if (value != null) {
      result
        ..add('ar')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.en;
    if (value != null) {
      result
        ..add('en')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.es;
    if (value != null) {
      result
        ..add('es')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.fr;
    if (value != null) {
      result
        ..add('fr')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.it;
    if (value != null) {
      result
        ..add('it')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.pt;
    if (value != null) {
      result
        ..add('pt')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    return result;
  }

  @override
  GlistingSettingsFragmentData_dynamicItemName deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GlistingSettingsFragmentData_dynamicItemNameBuilder();

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
        case 'ar':
          result.ar = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'en':
          result.en = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'es':
          result.es = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'fr':
          result.fr = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'it':
          result.it = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'pt':
          result.pt = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
      }
    }

    return result.build();
  }
}

class _$GcancellationFragmentDataSerializer
    implements StructuredSerializer<GcancellationFragmentData> {
  @override
  final Iterable<Type> types = const [
    GcancellationFragmentData,
    _$GcancellationFragmentData
  ];
  @override
  final String wireName = 'GcancellationFragmentData';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, GcancellationFragmentData object,
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
    value = object.policyName;
    if (value != null) {
      result
        ..add('policyName')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.policyContent;
    if (value != null) {
      result
        ..add('policyContent')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.priorDays;
    if (value != null) {
      result
        ..add('priorDays')
        ..add(serializers.serialize(value, specifiedType: const FullType(int)));
    }
    value = object.accommodationPriorCheckIn;
    if (value != null) {
      result
        ..add('accommodationPriorCheckIn')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(double)));
    }
    value = object.accommodationBeforeCheckIn;
    if (value != null) {
      result
        ..add('accommodationBeforeCheckIn')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(double)));
    }
    value = object.accommodationDuringCheckIn;
    if (value != null) {
      result
        ..add('accommodationDuringCheckIn')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(double)));
    }
    value = object.guestFeePriorCheckIn;
    if (value != null) {
      result
        ..add('guestFeePriorCheckIn')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(double)));
    }
    value = object.guestFeeBeforeCheckIn;
    if (value != null) {
      result
        ..add('guestFeeBeforeCheckIn')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(double)));
    }
    value = object.guestFeeDuringCheckIn;
    if (value != null) {
      result
        ..add('guestFeeDuringCheckIn')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(double)));
    }
    value = object.hostFeePriorCheckIn;
    if (value != null) {
      result
        ..add('hostFeePriorCheckIn')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(double)));
    }
    value = object.hostFeeBeforeCheckIn;
    if (value != null) {
      result
        ..add('hostFeeBeforeCheckIn')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(double)));
    }
    value = object.hostFeeDuringCheckIn;
    if (value != null) {
      result
        ..add('hostFeeDuringCheckIn')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(double)));
    }
    value = object.isEnable;
    if (value != null) {
      result
        ..add('isEnable')
        ..add(
            serializers.serialize(value, specifiedType: const FullType(bool)));
    }
    value = object.status;
    if (value != null) {
      result
        ..add('status')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    return result;
  }

  @override
  GcancellationFragmentData deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GcancellationFragmentDataBuilder();

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
        case 'policyName':
          result.policyName = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'policyContent':
          result.policyContent = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'priorDays':
          result.priorDays = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int?;
          break;
        case 'accommodationPriorCheckIn':
          result.accommodationPriorCheckIn = serializers.deserialize(value,
              specifiedType: const FullType(double)) as double?;
          break;
        case 'accommodationBeforeCheckIn':
          result.accommodationBeforeCheckIn = serializers.deserialize(value,
              specifiedType: const FullType(double)) as double?;
          break;
        case 'accommodationDuringCheckIn':
          result.accommodationDuringCheckIn = serializers.deserialize(value,
              specifiedType: const FullType(double)) as double?;
          break;
        case 'guestFeePriorCheckIn':
          result.guestFeePriorCheckIn = serializers.deserialize(value,
              specifiedType: const FullType(double)) as double?;
          break;
        case 'guestFeeBeforeCheckIn':
          result.guestFeeBeforeCheckIn = serializers.deserialize(value,
              specifiedType: const FullType(double)) as double?;
          break;
        case 'guestFeeDuringCheckIn':
          result.guestFeeDuringCheckIn = serializers.deserialize(value,
              specifiedType: const FullType(double)) as double?;
          break;
        case 'hostFeePriorCheckIn':
          result.hostFeePriorCheckIn = serializers.deserialize(value,
              specifiedType: const FullType(double)) as double?;
          break;
        case 'hostFeeBeforeCheckIn':
          result.hostFeeBeforeCheckIn = serializers.deserialize(value,
              specifiedType: const FullType(double)) as double?;
          break;
        case 'hostFeeDuringCheckIn':
          result.hostFeeDuringCheckIn = serializers.deserialize(value,
              specifiedType: const FullType(double)) as double?;
          break;
        case 'isEnable':
          result.isEnable = serializers.deserialize(value,
              specifiedType: const FullType(bool)) as bool?;
          break;
        case 'status':
          result.status = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
      }
    }

    return result.build();
  }
}

class _$GavailabilityFragmentDataSerializer
    implements StructuredSerializer<GavailabilityFragmentData> {
  @override
  final Iterable<Type> types = const [
    GavailabilityFragmentData,
    _$GavailabilityFragmentData
  ];
  @override
  final String wireName = 'GavailabilityFragmentData';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, GavailabilityFragmentData object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      '__typename',
      serializers.serialize(object.G__typename,
          specifiedType: const FullType(String)),
    ];
    Object? value;
    value = object.itemValue;
    if (value != null) {
      result
        ..add('itemValue')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.itemName;
    if (value != null) {
      result
        ..add('itemName')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    return result;
  }

  @override
  GavailabilityFragmentData deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GavailabilityFragmentDataBuilder();

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
        case 'itemValue':
          result.itemValue = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'itemName':
          result.itemName = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
      }
    }

    return result.build();
  }
}

class _$GlistingSettingsTypesFragmentDataSerializer
    implements StructuredSerializer<GlistingSettingsTypesFragmentData> {
  @override
  final Iterable<Type> types = const [
    GlistingSettingsTypesFragmentData,
    _$GlistingSettingsTypesFragmentData
  ];
  @override
  final String wireName = 'GlistingSettingsTypesFragmentData';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, GlistingSettingsTypesFragmentData object,
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
    value = object.typeName;
    if (value != null) {
      result
        ..add('typeName')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.typeLabel;
    if (value != null) {
      result
        ..add('typeLabel')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.step;
    if (value != null) {
      result
        ..add('step')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.fieldType;
    if (value != null) {
      result
        ..add('fieldType')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.isMultiValue;
    if (value != null) {
      result
        ..add('isMultiValue')
        ..add(
            serializers.serialize(value, specifiedType: const FullType(bool)));
    }
    value = object.isEnable;
    if (value != null) {
      result
        ..add('isEnable')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.status;
    if (value != null) {
      result
        ..add('status')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.listSettings;
    if (value != null) {
      result
        ..add('listSettings')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(BuiltList, const [
              const FullType.nullable(
                  GlistingSettingsTypesFragmentData_listSettings)
            ])));
    }
    return result;
  }

  @override
  GlistingSettingsTypesFragmentData deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GlistingSettingsTypesFragmentDataBuilder();

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
        case 'typeName':
          result.typeName = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'typeLabel':
          result.typeLabel = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'step':
          result.step = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'fieldType':
          result.fieldType = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'isMultiValue':
          result.isMultiValue = serializers.deserialize(value,
              specifiedType: const FullType(bool)) as bool?;
          break;
        case 'isEnable':
          result.isEnable = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'status':
          result.status = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'listSettings':
          result.listSettings.replace(serializers.deserialize(value,
              specifiedType: const FullType(BuiltList, const [
                const FullType.nullable(
                    GlistingSettingsTypesFragmentData_listSettings)
              ]))! as BuiltList<Object?>);
          break;
      }
    }

    return result.build();
  }
}

class _$GlistingSettingsTypesFragmentData_listSettingsSerializer
    implements
        StructuredSerializer<GlistingSettingsTypesFragmentData_listSettings> {
  @override
  final Iterable<Type> types = const [
    GlistingSettingsTypesFragmentData_listSettings,
    _$GlistingSettingsTypesFragmentData_listSettings
  ];
  @override
  final String wireName = 'GlistingSettingsTypesFragmentData_listSettings';

  @override
  Iterable<Object?> serialize(Serializers serializers,
      GlistingSettingsTypesFragmentData_listSettings object,
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
    value = object.typeId;
    if (value != null) {
      result
        ..add('typeId')
        ..add(serializers.serialize(value, specifiedType: const FullType(int)));
    }
    value = object.itemName;
    if (value != null) {
      result
        ..add('itemName')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.otherItemName;
    if (value != null) {
      result
        ..add('otherItemName')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.maximum;
    if (value != null) {
      result
        ..add('maximum')
        ..add(serializers.serialize(value, specifiedType: const FullType(int)));
    }
    value = object.minimum;
    if (value != null) {
      result
        ..add('minimum')
        ..add(serializers.serialize(value, specifiedType: const FullType(int)));
    }
    value = object.startValue;
    if (value != null) {
      result
        ..add('startValue')
        ..add(serializers.serialize(value, specifiedType: const FullType(int)));
    }
    value = object.endValue;
    if (value != null) {
      result
        ..add('endValue')
        ..add(serializers.serialize(value, specifiedType: const FullType(int)));
    }
    value = object.isEnable;
    if (value != null) {
      result
        ..add('isEnable')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.makeType;
    if (value != null) {
      result
        ..add('makeType')
        ..add(serializers.serialize(value, specifiedType: const FullType(int)));
    }
    value = object.dynamicItemName;
    if (value != null) {
      result
        ..add('dynamicItemName')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(
                GlistingSettingsTypesFragmentData_listSettings_dynamicItemName)));
    }
    return result;
  }

  @override
  GlistingSettingsTypesFragmentData_listSettings deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GlistingSettingsTypesFragmentData_listSettingsBuilder();

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
        case 'typeId':
          result.typeId = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int?;
          break;
        case 'itemName':
          result.itemName = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'otherItemName':
          result.otherItemName = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'maximum':
          result.maximum = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int?;
          break;
        case 'minimum':
          result.minimum = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int?;
          break;
        case 'startValue':
          result.startValue = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int?;
          break;
        case 'endValue':
          result.endValue = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int?;
          break;
        case 'isEnable':
          result.isEnable = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'makeType':
          result.makeType = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int?;
          break;
        case 'dynamicItemName':
          result.dynamicItemName.replace(serializers.deserialize(value,
                  specifiedType: const FullType(
                      GlistingSettingsTypesFragmentData_listSettings_dynamicItemName))!
              as GlistingSettingsTypesFragmentData_listSettings_dynamicItemName);
          break;
      }
    }

    return result.build();
  }
}

class _$GlistingSettingsTypesFragmentData_listSettings_dynamicItemNameSerializer
    implements
        StructuredSerializer<
            GlistingSettingsTypesFragmentData_listSettings_dynamicItemName> {
  @override
  final Iterable<Type> types = const [
    GlistingSettingsTypesFragmentData_listSettings_dynamicItemName,
    _$GlistingSettingsTypesFragmentData_listSettings_dynamicItemName
  ];
  @override
  final String wireName =
      'GlistingSettingsTypesFragmentData_listSettings_dynamicItemName';

  @override
  Iterable<Object?> serialize(Serializers serializers,
      GlistingSettingsTypesFragmentData_listSettings_dynamicItemName object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      '__typename',
      serializers.serialize(object.G__typename,
          specifiedType: const FullType(String)),
    ];
    Object? value;
    value = object.ar;
    if (value != null) {
      result
        ..add('ar')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.en;
    if (value != null) {
      result
        ..add('en')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.es;
    if (value != null) {
      result
        ..add('es')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.fr;
    if (value != null) {
      result
        ..add('fr')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.it;
    if (value != null) {
      result
        ..add('it')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.pt;
    if (value != null) {
      result
        ..add('pt')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    return result;
  }

  @override
  GlistingSettingsTypesFragmentData_listSettings_dynamicItemName deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result =
        new GlistingSettingsTypesFragmentData_listSettings_dynamicItemNameBuilder();

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
        case 'ar':
          result.ar = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'en':
          result.en = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'es':
          result.es = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'fr':
          result.fr = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'it':
          result.it = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'pt':
          result.pt = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
      }
    }

    return result.build();
  }
}

class _$GlistingSettingsFragmentData extends GlistingSettingsFragmentData {
  @override
  final String G__typename;
  @override
  final int? id;
  @override
  final int? typeId;
  @override
  final String? itemName;
  @override
  final String? otherItemName;
  @override
  final int? maximum;
  @override
  final int? minimum;
  @override
  final int? startValue;
  @override
  final int? endValue;
  @override
  final String? isEnable;
  @override
  final int? makeType;
  @override
  final GlistingSettingsFragmentData_dynamicItemName? dynamicItemName;

  factory _$GlistingSettingsFragmentData(
          [void Function(GlistingSettingsFragmentDataBuilder)? updates]) =>
      (new GlistingSettingsFragmentDataBuilder()..update(updates))._build();

  _$GlistingSettingsFragmentData._(
      {required this.G__typename,
      this.id,
      this.typeId,
      this.itemName,
      this.otherItemName,
      this.maximum,
      this.minimum,
      this.startValue,
      this.endValue,
      this.isEnable,
      this.makeType,
      this.dynamicItemName})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        G__typename, r'GlistingSettingsFragmentData', 'G__typename');
  }

  @override
  GlistingSettingsFragmentData rebuild(
          void Function(GlistingSettingsFragmentDataBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GlistingSettingsFragmentDataBuilder toBuilder() =>
      new GlistingSettingsFragmentDataBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GlistingSettingsFragmentData &&
        G__typename == other.G__typename &&
        id == other.id &&
        typeId == other.typeId &&
        itemName == other.itemName &&
        otherItemName == other.otherItemName &&
        maximum == other.maximum &&
        minimum == other.minimum &&
        startValue == other.startValue &&
        endValue == other.endValue &&
        isEnable == other.isEnable &&
        makeType == other.makeType &&
        dynamicItemName == other.dynamicItemName;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, G__typename.hashCode);
    _$hash = $jc(_$hash, id.hashCode);
    _$hash = $jc(_$hash, typeId.hashCode);
    _$hash = $jc(_$hash, itemName.hashCode);
    _$hash = $jc(_$hash, otherItemName.hashCode);
    _$hash = $jc(_$hash, maximum.hashCode);
    _$hash = $jc(_$hash, minimum.hashCode);
    _$hash = $jc(_$hash, startValue.hashCode);
    _$hash = $jc(_$hash, endValue.hashCode);
    _$hash = $jc(_$hash, isEnable.hashCode);
    _$hash = $jc(_$hash, makeType.hashCode);
    _$hash = $jc(_$hash, dynamicItemName.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'GlistingSettingsFragmentData')
          ..add('G__typename', G__typename)
          ..add('id', id)
          ..add('typeId', typeId)
          ..add('itemName', itemName)
          ..add('otherItemName', otherItemName)
          ..add('maximum', maximum)
          ..add('minimum', minimum)
          ..add('startValue', startValue)
          ..add('endValue', endValue)
          ..add('isEnable', isEnable)
          ..add('makeType', makeType)
          ..add('dynamicItemName', dynamicItemName))
        .toString();
  }
}

class GlistingSettingsFragmentDataBuilder
    implements
        Builder<GlistingSettingsFragmentData,
            GlistingSettingsFragmentDataBuilder> {
  _$GlistingSettingsFragmentData? _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  int? _id;
  int? get id => _$this._id;
  set id(int? id) => _$this._id = id;

  int? _typeId;
  int? get typeId => _$this._typeId;
  set typeId(int? typeId) => _$this._typeId = typeId;

  String? _itemName;
  String? get itemName => _$this._itemName;
  set itemName(String? itemName) => _$this._itemName = itemName;

  String? _otherItemName;
  String? get otherItemName => _$this._otherItemName;
  set otherItemName(String? otherItemName) =>
      _$this._otherItemName = otherItemName;

  int? _maximum;
  int? get maximum => _$this._maximum;
  set maximum(int? maximum) => _$this._maximum = maximum;

  int? _minimum;
  int? get minimum => _$this._minimum;
  set minimum(int? minimum) => _$this._minimum = minimum;

  int? _startValue;
  int? get startValue => _$this._startValue;
  set startValue(int? startValue) => _$this._startValue = startValue;

  int? _endValue;
  int? get endValue => _$this._endValue;
  set endValue(int? endValue) => _$this._endValue = endValue;

  String? _isEnable;
  String? get isEnable => _$this._isEnable;
  set isEnable(String? isEnable) => _$this._isEnable = isEnable;

  int? _makeType;
  int? get makeType => _$this._makeType;
  set makeType(int? makeType) => _$this._makeType = makeType;

  GlistingSettingsFragmentData_dynamicItemNameBuilder? _dynamicItemName;
  GlistingSettingsFragmentData_dynamicItemNameBuilder get dynamicItemName =>
      _$this._dynamicItemName ??=
          new GlistingSettingsFragmentData_dynamicItemNameBuilder();
  set dynamicItemName(
          GlistingSettingsFragmentData_dynamicItemNameBuilder?
              dynamicItemName) =>
      _$this._dynamicItemName = dynamicItemName;

  GlistingSettingsFragmentDataBuilder() {
    GlistingSettingsFragmentData._initializeBuilder(this);
  }

  GlistingSettingsFragmentDataBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _G__typename = $v.G__typename;
      _id = $v.id;
      _typeId = $v.typeId;
      _itemName = $v.itemName;
      _otherItemName = $v.otherItemName;
      _maximum = $v.maximum;
      _minimum = $v.minimum;
      _startValue = $v.startValue;
      _endValue = $v.endValue;
      _isEnable = $v.isEnable;
      _makeType = $v.makeType;
      _dynamicItemName = $v.dynamicItemName?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GlistingSettingsFragmentData other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GlistingSettingsFragmentData;
  }

  @override
  void update(void Function(GlistingSettingsFragmentDataBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GlistingSettingsFragmentData build() => _build();

  _$GlistingSettingsFragmentData _build() {
    _$GlistingSettingsFragmentData _$result;
    try {
      _$result = _$v ??
          new _$GlistingSettingsFragmentData._(
              G__typename: BuiltValueNullFieldError.checkNotNull(
                  G__typename, r'GlistingSettingsFragmentData', 'G__typename'),
              id: id,
              typeId: typeId,
              itemName: itemName,
              otherItemName: otherItemName,
              maximum: maximum,
              minimum: minimum,
              startValue: startValue,
              endValue: endValue,
              isEnable: isEnable,
              makeType: makeType,
              dynamicItemName: _dynamicItemName?.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'dynamicItemName';
        _dynamicItemName?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'GlistingSettingsFragmentData', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

class _$GlistingSettingsFragmentData_dynamicItemName
    extends GlistingSettingsFragmentData_dynamicItemName {
  @override
  final String G__typename;
  @override
  final String? ar;
  @override
  final String? en;
  @override
  final String? es;
  @override
  final String? fr;
  @override
  final String? it;
  @override
  final String? pt;

  factory _$GlistingSettingsFragmentData_dynamicItemName(
          [void Function(GlistingSettingsFragmentData_dynamicItemNameBuilder)?
              updates]) =>
      (new GlistingSettingsFragmentData_dynamicItemNameBuilder()
            ..update(updates))
          ._build();

  _$GlistingSettingsFragmentData_dynamicItemName._(
      {required this.G__typename,
      this.ar,
      this.en,
      this.es,
      this.fr,
      this.it,
      this.pt})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(G__typename,
        r'GlistingSettingsFragmentData_dynamicItemName', 'G__typename');
  }

  @override
  GlistingSettingsFragmentData_dynamicItemName rebuild(
          void Function(GlistingSettingsFragmentData_dynamicItemNameBuilder)
              updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GlistingSettingsFragmentData_dynamicItemNameBuilder toBuilder() =>
      new GlistingSettingsFragmentData_dynamicItemNameBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GlistingSettingsFragmentData_dynamicItemName &&
        G__typename == other.G__typename &&
        ar == other.ar &&
        en == other.en &&
        es == other.es &&
        fr == other.fr &&
        it == other.it &&
        pt == other.pt;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, G__typename.hashCode);
    _$hash = $jc(_$hash, ar.hashCode);
    _$hash = $jc(_$hash, en.hashCode);
    _$hash = $jc(_$hash, es.hashCode);
    _$hash = $jc(_$hash, fr.hashCode);
    _$hash = $jc(_$hash, it.hashCode);
    _$hash = $jc(_$hash, pt.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(
            r'GlistingSettingsFragmentData_dynamicItemName')
          ..add('G__typename', G__typename)
          ..add('ar', ar)
          ..add('en', en)
          ..add('es', es)
          ..add('fr', fr)
          ..add('it', it)
          ..add('pt', pt))
        .toString();
  }
}

class GlistingSettingsFragmentData_dynamicItemNameBuilder
    implements
        Builder<GlistingSettingsFragmentData_dynamicItemName,
            GlistingSettingsFragmentData_dynamicItemNameBuilder> {
  _$GlistingSettingsFragmentData_dynamicItemName? _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  String? _ar;
  String? get ar => _$this._ar;
  set ar(String? ar) => _$this._ar = ar;

  String? _en;
  String? get en => _$this._en;
  set en(String? en) => _$this._en = en;

  String? _es;
  String? get es => _$this._es;
  set es(String? es) => _$this._es = es;

  String? _fr;
  String? get fr => _$this._fr;
  set fr(String? fr) => _$this._fr = fr;

  String? _it;
  String? get it => _$this._it;
  set it(String? it) => _$this._it = it;

  String? _pt;
  String? get pt => _$this._pt;
  set pt(String? pt) => _$this._pt = pt;

  GlistingSettingsFragmentData_dynamicItemNameBuilder() {
    GlistingSettingsFragmentData_dynamicItemName._initializeBuilder(this);
  }

  GlistingSettingsFragmentData_dynamicItemNameBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _G__typename = $v.G__typename;
      _ar = $v.ar;
      _en = $v.en;
      _es = $v.es;
      _fr = $v.fr;
      _it = $v.it;
      _pt = $v.pt;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GlistingSettingsFragmentData_dynamicItemName other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GlistingSettingsFragmentData_dynamicItemName;
  }

  @override
  void update(
      void Function(GlistingSettingsFragmentData_dynamicItemNameBuilder)?
          updates) {
    if (updates != null) updates(this);
  }

  @override
  GlistingSettingsFragmentData_dynamicItemName build() => _build();

  _$GlistingSettingsFragmentData_dynamicItemName _build() {
    final _$result = _$v ??
        new _$GlistingSettingsFragmentData_dynamicItemName._(
            G__typename: BuiltValueNullFieldError.checkNotNull(G__typename,
                r'GlistingSettingsFragmentData_dynamicItemName', 'G__typename'),
            ar: ar,
            en: en,
            es: es,
            fr: fr,
            it: it,
            pt: pt);
    replace(_$result);
    return _$result;
  }
}

class _$GcancellationFragmentData extends GcancellationFragmentData {
  @override
  final String G__typename;
  @override
  final int? id;
  @override
  final String? policyName;
  @override
  final String? policyContent;
  @override
  final int? priorDays;
  @override
  final double? accommodationPriorCheckIn;
  @override
  final double? accommodationBeforeCheckIn;
  @override
  final double? accommodationDuringCheckIn;
  @override
  final double? guestFeePriorCheckIn;
  @override
  final double? guestFeeBeforeCheckIn;
  @override
  final double? guestFeeDuringCheckIn;
  @override
  final double? hostFeePriorCheckIn;
  @override
  final double? hostFeeBeforeCheckIn;
  @override
  final double? hostFeeDuringCheckIn;
  @override
  final bool? isEnable;
  @override
  final String? status;

  factory _$GcancellationFragmentData(
          [void Function(GcancellationFragmentDataBuilder)? updates]) =>
      (new GcancellationFragmentDataBuilder()..update(updates))._build();

  _$GcancellationFragmentData._(
      {required this.G__typename,
      this.id,
      this.policyName,
      this.policyContent,
      this.priorDays,
      this.accommodationPriorCheckIn,
      this.accommodationBeforeCheckIn,
      this.accommodationDuringCheckIn,
      this.guestFeePriorCheckIn,
      this.guestFeeBeforeCheckIn,
      this.guestFeeDuringCheckIn,
      this.hostFeePriorCheckIn,
      this.hostFeeBeforeCheckIn,
      this.hostFeeDuringCheckIn,
      this.isEnable,
      this.status})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        G__typename, r'GcancellationFragmentData', 'G__typename');
  }

  @override
  GcancellationFragmentData rebuild(
          void Function(GcancellationFragmentDataBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GcancellationFragmentDataBuilder toBuilder() =>
      new GcancellationFragmentDataBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GcancellationFragmentData &&
        G__typename == other.G__typename &&
        id == other.id &&
        policyName == other.policyName &&
        policyContent == other.policyContent &&
        priorDays == other.priorDays &&
        accommodationPriorCheckIn == other.accommodationPriorCheckIn &&
        accommodationBeforeCheckIn == other.accommodationBeforeCheckIn &&
        accommodationDuringCheckIn == other.accommodationDuringCheckIn &&
        guestFeePriorCheckIn == other.guestFeePriorCheckIn &&
        guestFeeBeforeCheckIn == other.guestFeeBeforeCheckIn &&
        guestFeeDuringCheckIn == other.guestFeeDuringCheckIn &&
        hostFeePriorCheckIn == other.hostFeePriorCheckIn &&
        hostFeeBeforeCheckIn == other.hostFeeBeforeCheckIn &&
        hostFeeDuringCheckIn == other.hostFeeDuringCheckIn &&
        isEnable == other.isEnable &&
        status == other.status;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, G__typename.hashCode);
    _$hash = $jc(_$hash, id.hashCode);
    _$hash = $jc(_$hash, policyName.hashCode);
    _$hash = $jc(_$hash, policyContent.hashCode);
    _$hash = $jc(_$hash, priorDays.hashCode);
    _$hash = $jc(_$hash, accommodationPriorCheckIn.hashCode);
    _$hash = $jc(_$hash, accommodationBeforeCheckIn.hashCode);
    _$hash = $jc(_$hash, accommodationDuringCheckIn.hashCode);
    _$hash = $jc(_$hash, guestFeePriorCheckIn.hashCode);
    _$hash = $jc(_$hash, guestFeeBeforeCheckIn.hashCode);
    _$hash = $jc(_$hash, guestFeeDuringCheckIn.hashCode);
    _$hash = $jc(_$hash, hostFeePriorCheckIn.hashCode);
    _$hash = $jc(_$hash, hostFeeBeforeCheckIn.hashCode);
    _$hash = $jc(_$hash, hostFeeDuringCheckIn.hashCode);
    _$hash = $jc(_$hash, isEnable.hashCode);
    _$hash = $jc(_$hash, status.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'GcancellationFragmentData')
          ..add('G__typename', G__typename)
          ..add('id', id)
          ..add('policyName', policyName)
          ..add('policyContent', policyContent)
          ..add('priorDays', priorDays)
          ..add('accommodationPriorCheckIn', accommodationPriorCheckIn)
          ..add('accommodationBeforeCheckIn', accommodationBeforeCheckIn)
          ..add('accommodationDuringCheckIn', accommodationDuringCheckIn)
          ..add('guestFeePriorCheckIn', guestFeePriorCheckIn)
          ..add('guestFeeBeforeCheckIn', guestFeeBeforeCheckIn)
          ..add('guestFeeDuringCheckIn', guestFeeDuringCheckIn)
          ..add('hostFeePriorCheckIn', hostFeePriorCheckIn)
          ..add('hostFeeBeforeCheckIn', hostFeeBeforeCheckIn)
          ..add('hostFeeDuringCheckIn', hostFeeDuringCheckIn)
          ..add('isEnable', isEnable)
          ..add('status', status))
        .toString();
  }
}

class GcancellationFragmentDataBuilder
    implements
        Builder<GcancellationFragmentData, GcancellationFragmentDataBuilder> {
  _$GcancellationFragmentData? _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  int? _id;
  int? get id => _$this._id;
  set id(int? id) => _$this._id = id;

  String? _policyName;
  String? get policyName => _$this._policyName;
  set policyName(String? policyName) => _$this._policyName = policyName;

  String? _policyContent;
  String? get policyContent => _$this._policyContent;
  set policyContent(String? policyContent) =>
      _$this._policyContent = policyContent;

  int? _priorDays;
  int? get priorDays => _$this._priorDays;
  set priorDays(int? priorDays) => _$this._priorDays = priorDays;

  double? _accommodationPriorCheckIn;
  double? get accommodationPriorCheckIn => _$this._accommodationPriorCheckIn;
  set accommodationPriorCheckIn(double? accommodationPriorCheckIn) =>
      _$this._accommodationPriorCheckIn = accommodationPriorCheckIn;

  double? _accommodationBeforeCheckIn;
  double? get accommodationBeforeCheckIn => _$this._accommodationBeforeCheckIn;
  set accommodationBeforeCheckIn(double? accommodationBeforeCheckIn) =>
      _$this._accommodationBeforeCheckIn = accommodationBeforeCheckIn;

  double? _accommodationDuringCheckIn;
  double? get accommodationDuringCheckIn => _$this._accommodationDuringCheckIn;
  set accommodationDuringCheckIn(double? accommodationDuringCheckIn) =>
      _$this._accommodationDuringCheckIn = accommodationDuringCheckIn;

  double? _guestFeePriorCheckIn;
  double? get guestFeePriorCheckIn => _$this._guestFeePriorCheckIn;
  set guestFeePriorCheckIn(double? guestFeePriorCheckIn) =>
      _$this._guestFeePriorCheckIn = guestFeePriorCheckIn;

  double? _guestFeeBeforeCheckIn;
  double? get guestFeeBeforeCheckIn => _$this._guestFeeBeforeCheckIn;
  set guestFeeBeforeCheckIn(double? guestFeeBeforeCheckIn) =>
      _$this._guestFeeBeforeCheckIn = guestFeeBeforeCheckIn;

  double? _guestFeeDuringCheckIn;
  double? get guestFeeDuringCheckIn => _$this._guestFeeDuringCheckIn;
  set guestFeeDuringCheckIn(double? guestFeeDuringCheckIn) =>
      _$this._guestFeeDuringCheckIn = guestFeeDuringCheckIn;

  double? _hostFeePriorCheckIn;
  double? get hostFeePriorCheckIn => _$this._hostFeePriorCheckIn;
  set hostFeePriorCheckIn(double? hostFeePriorCheckIn) =>
      _$this._hostFeePriorCheckIn = hostFeePriorCheckIn;

  double? _hostFeeBeforeCheckIn;
  double? get hostFeeBeforeCheckIn => _$this._hostFeeBeforeCheckIn;
  set hostFeeBeforeCheckIn(double? hostFeeBeforeCheckIn) =>
      _$this._hostFeeBeforeCheckIn = hostFeeBeforeCheckIn;

  double? _hostFeeDuringCheckIn;
  double? get hostFeeDuringCheckIn => _$this._hostFeeDuringCheckIn;
  set hostFeeDuringCheckIn(double? hostFeeDuringCheckIn) =>
      _$this._hostFeeDuringCheckIn = hostFeeDuringCheckIn;

  bool? _isEnable;
  bool? get isEnable => _$this._isEnable;
  set isEnable(bool? isEnable) => _$this._isEnable = isEnable;

  String? _status;
  String? get status => _$this._status;
  set status(String? status) => _$this._status = status;

  GcancellationFragmentDataBuilder() {
    GcancellationFragmentData._initializeBuilder(this);
  }

  GcancellationFragmentDataBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _G__typename = $v.G__typename;
      _id = $v.id;
      _policyName = $v.policyName;
      _policyContent = $v.policyContent;
      _priorDays = $v.priorDays;
      _accommodationPriorCheckIn = $v.accommodationPriorCheckIn;
      _accommodationBeforeCheckIn = $v.accommodationBeforeCheckIn;
      _accommodationDuringCheckIn = $v.accommodationDuringCheckIn;
      _guestFeePriorCheckIn = $v.guestFeePriorCheckIn;
      _guestFeeBeforeCheckIn = $v.guestFeeBeforeCheckIn;
      _guestFeeDuringCheckIn = $v.guestFeeDuringCheckIn;
      _hostFeePriorCheckIn = $v.hostFeePriorCheckIn;
      _hostFeeBeforeCheckIn = $v.hostFeeBeforeCheckIn;
      _hostFeeDuringCheckIn = $v.hostFeeDuringCheckIn;
      _isEnable = $v.isEnable;
      _status = $v.status;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GcancellationFragmentData other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GcancellationFragmentData;
  }

  @override
  void update(void Function(GcancellationFragmentDataBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GcancellationFragmentData build() => _build();

  _$GcancellationFragmentData _build() {
    final _$result = _$v ??
        new _$GcancellationFragmentData._(
            G__typename: BuiltValueNullFieldError.checkNotNull(
                G__typename, r'GcancellationFragmentData', 'G__typename'),
            id: id,
            policyName: policyName,
            policyContent: policyContent,
            priorDays: priorDays,
            accommodationPriorCheckIn: accommodationPriorCheckIn,
            accommodationBeforeCheckIn: accommodationBeforeCheckIn,
            accommodationDuringCheckIn: accommodationDuringCheckIn,
            guestFeePriorCheckIn: guestFeePriorCheckIn,
            guestFeeBeforeCheckIn: guestFeeBeforeCheckIn,
            guestFeeDuringCheckIn: guestFeeDuringCheckIn,
            hostFeePriorCheckIn: hostFeePriorCheckIn,
            hostFeeBeforeCheckIn: hostFeeBeforeCheckIn,
            hostFeeDuringCheckIn: hostFeeDuringCheckIn,
            isEnable: isEnable,
            status: status);
    replace(_$result);
    return _$result;
  }
}

class _$GavailabilityFragmentData extends GavailabilityFragmentData {
  @override
  final String G__typename;
  @override
  final String? itemValue;
  @override
  final String? itemName;

  factory _$GavailabilityFragmentData(
          [void Function(GavailabilityFragmentDataBuilder)? updates]) =>
      (new GavailabilityFragmentDataBuilder()..update(updates))._build();

  _$GavailabilityFragmentData._(
      {required this.G__typename, this.itemValue, this.itemName})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        G__typename, r'GavailabilityFragmentData', 'G__typename');
  }

  @override
  GavailabilityFragmentData rebuild(
          void Function(GavailabilityFragmentDataBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GavailabilityFragmentDataBuilder toBuilder() =>
      new GavailabilityFragmentDataBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GavailabilityFragmentData &&
        G__typename == other.G__typename &&
        itemValue == other.itemValue &&
        itemName == other.itemName;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, G__typename.hashCode);
    _$hash = $jc(_$hash, itemValue.hashCode);
    _$hash = $jc(_$hash, itemName.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'GavailabilityFragmentData')
          ..add('G__typename', G__typename)
          ..add('itemValue', itemValue)
          ..add('itemName', itemName))
        .toString();
  }
}

class GavailabilityFragmentDataBuilder
    implements
        Builder<GavailabilityFragmentData, GavailabilityFragmentDataBuilder> {
  _$GavailabilityFragmentData? _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  String? _itemValue;
  String? get itemValue => _$this._itemValue;
  set itemValue(String? itemValue) => _$this._itemValue = itemValue;

  String? _itemName;
  String? get itemName => _$this._itemName;
  set itemName(String? itemName) => _$this._itemName = itemName;

  GavailabilityFragmentDataBuilder() {
    GavailabilityFragmentData._initializeBuilder(this);
  }

  GavailabilityFragmentDataBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _G__typename = $v.G__typename;
      _itemValue = $v.itemValue;
      _itemName = $v.itemName;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GavailabilityFragmentData other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GavailabilityFragmentData;
  }

  @override
  void update(void Function(GavailabilityFragmentDataBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GavailabilityFragmentData build() => _build();

  _$GavailabilityFragmentData _build() {
    final _$result = _$v ??
        new _$GavailabilityFragmentData._(
            G__typename: BuiltValueNullFieldError.checkNotNull(
                G__typename, r'GavailabilityFragmentData', 'G__typename'),
            itemValue: itemValue,
            itemName: itemName);
    replace(_$result);
    return _$result;
  }
}

class _$GlistingSettingsTypesFragmentData
    extends GlistingSettingsTypesFragmentData {
  @override
  final String G__typename;
  @override
  final int? id;
  @override
  final String? typeName;
  @override
  final String? typeLabel;
  @override
  final String? step;
  @override
  final String? fieldType;
  @override
  final bool? isMultiValue;
  @override
  final String? isEnable;
  @override
  final String? status;
  @override
  final BuiltList<GlistingSettingsTypesFragmentData_listSettings?>?
      listSettings;

  factory _$GlistingSettingsTypesFragmentData(
          [void Function(GlistingSettingsTypesFragmentDataBuilder)? updates]) =>
      (new GlistingSettingsTypesFragmentDataBuilder()..update(updates))
          ._build();

  _$GlistingSettingsTypesFragmentData._(
      {required this.G__typename,
      this.id,
      this.typeName,
      this.typeLabel,
      this.step,
      this.fieldType,
      this.isMultiValue,
      this.isEnable,
      this.status,
      this.listSettings})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        G__typename, r'GlistingSettingsTypesFragmentData', 'G__typename');
  }

  @override
  GlistingSettingsTypesFragmentData rebuild(
          void Function(GlistingSettingsTypesFragmentDataBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GlistingSettingsTypesFragmentDataBuilder toBuilder() =>
      new GlistingSettingsTypesFragmentDataBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GlistingSettingsTypesFragmentData &&
        G__typename == other.G__typename &&
        id == other.id &&
        typeName == other.typeName &&
        typeLabel == other.typeLabel &&
        step == other.step &&
        fieldType == other.fieldType &&
        isMultiValue == other.isMultiValue &&
        isEnable == other.isEnable &&
        status == other.status &&
        listSettings == other.listSettings;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, G__typename.hashCode);
    _$hash = $jc(_$hash, id.hashCode);
    _$hash = $jc(_$hash, typeName.hashCode);
    _$hash = $jc(_$hash, typeLabel.hashCode);
    _$hash = $jc(_$hash, step.hashCode);
    _$hash = $jc(_$hash, fieldType.hashCode);
    _$hash = $jc(_$hash, isMultiValue.hashCode);
    _$hash = $jc(_$hash, isEnable.hashCode);
    _$hash = $jc(_$hash, status.hashCode);
    _$hash = $jc(_$hash, listSettings.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'GlistingSettingsTypesFragmentData')
          ..add('G__typename', G__typename)
          ..add('id', id)
          ..add('typeName', typeName)
          ..add('typeLabel', typeLabel)
          ..add('step', step)
          ..add('fieldType', fieldType)
          ..add('isMultiValue', isMultiValue)
          ..add('isEnable', isEnable)
          ..add('status', status)
          ..add('listSettings', listSettings))
        .toString();
  }
}

class GlistingSettingsTypesFragmentDataBuilder
    implements
        Builder<GlistingSettingsTypesFragmentData,
            GlistingSettingsTypesFragmentDataBuilder> {
  _$GlistingSettingsTypesFragmentData? _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  int? _id;
  int? get id => _$this._id;
  set id(int? id) => _$this._id = id;

  String? _typeName;
  String? get typeName => _$this._typeName;
  set typeName(String? typeName) => _$this._typeName = typeName;

  String? _typeLabel;
  String? get typeLabel => _$this._typeLabel;
  set typeLabel(String? typeLabel) => _$this._typeLabel = typeLabel;

  String? _step;
  String? get step => _$this._step;
  set step(String? step) => _$this._step = step;

  String? _fieldType;
  String? get fieldType => _$this._fieldType;
  set fieldType(String? fieldType) => _$this._fieldType = fieldType;

  bool? _isMultiValue;
  bool? get isMultiValue => _$this._isMultiValue;
  set isMultiValue(bool? isMultiValue) => _$this._isMultiValue = isMultiValue;

  String? _isEnable;
  String? get isEnable => _$this._isEnable;
  set isEnable(String? isEnable) => _$this._isEnable = isEnable;

  String? _status;
  String? get status => _$this._status;
  set status(String? status) => _$this._status = status;

  ListBuilder<GlistingSettingsTypesFragmentData_listSettings?>? _listSettings;
  ListBuilder<GlistingSettingsTypesFragmentData_listSettings?>
      get listSettings => _$this._listSettings ??=
          new ListBuilder<GlistingSettingsTypesFragmentData_listSettings?>();
  set listSettings(
          ListBuilder<GlistingSettingsTypesFragmentData_listSettings?>?
              listSettings) =>
      _$this._listSettings = listSettings;

  GlistingSettingsTypesFragmentDataBuilder() {
    GlistingSettingsTypesFragmentData._initializeBuilder(this);
  }

  GlistingSettingsTypesFragmentDataBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _G__typename = $v.G__typename;
      _id = $v.id;
      _typeName = $v.typeName;
      _typeLabel = $v.typeLabel;
      _step = $v.step;
      _fieldType = $v.fieldType;
      _isMultiValue = $v.isMultiValue;
      _isEnable = $v.isEnable;
      _status = $v.status;
      _listSettings = $v.listSettings?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GlistingSettingsTypesFragmentData other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GlistingSettingsTypesFragmentData;
  }

  @override
  void update(
      void Function(GlistingSettingsTypesFragmentDataBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GlistingSettingsTypesFragmentData build() => _build();

  _$GlistingSettingsTypesFragmentData _build() {
    _$GlistingSettingsTypesFragmentData _$result;
    try {
      _$result = _$v ??
          new _$GlistingSettingsTypesFragmentData._(
              G__typename: BuiltValueNullFieldError.checkNotNull(G__typename,
                  r'GlistingSettingsTypesFragmentData', 'G__typename'),
              id: id,
              typeName: typeName,
              typeLabel: typeLabel,
              step: step,
              fieldType: fieldType,
              isMultiValue: isMultiValue,
              isEnable: isEnable,
              status: status,
              listSettings: _listSettings?.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'listSettings';
        _listSettings?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'GlistingSettingsTypesFragmentData', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

class _$GlistingSettingsTypesFragmentData_listSettings
    extends GlistingSettingsTypesFragmentData_listSettings {
  @override
  final String G__typename;
  @override
  final int? id;
  @override
  final int? typeId;
  @override
  final String? itemName;
  @override
  final String? otherItemName;
  @override
  final int? maximum;
  @override
  final int? minimum;
  @override
  final int? startValue;
  @override
  final int? endValue;
  @override
  final String? isEnable;
  @override
  final int? makeType;
  @override
  final GlistingSettingsTypesFragmentData_listSettings_dynamicItemName?
      dynamicItemName;

  factory _$GlistingSettingsTypesFragmentData_listSettings(
          [void Function(GlistingSettingsTypesFragmentData_listSettingsBuilder)?
              updates]) =>
      (new GlistingSettingsTypesFragmentData_listSettingsBuilder()
            ..update(updates))
          ._build();

  _$GlistingSettingsTypesFragmentData_listSettings._(
      {required this.G__typename,
      this.id,
      this.typeId,
      this.itemName,
      this.otherItemName,
      this.maximum,
      this.minimum,
      this.startValue,
      this.endValue,
      this.isEnable,
      this.makeType,
      this.dynamicItemName})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(G__typename,
        r'GlistingSettingsTypesFragmentData_listSettings', 'G__typename');
  }

  @override
  GlistingSettingsTypesFragmentData_listSettings rebuild(
          void Function(GlistingSettingsTypesFragmentData_listSettingsBuilder)
              updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GlistingSettingsTypesFragmentData_listSettingsBuilder toBuilder() =>
      new GlistingSettingsTypesFragmentData_listSettingsBuilder()
        ..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GlistingSettingsTypesFragmentData_listSettings &&
        G__typename == other.G__typename &&
        id == other.id &&
        typeId == other.typeId &&
        itemName == other.itemName &&
        otherItemName == other.otherItemName &&
        maximum == other.maximum &&
        minimum == other.minimum &&
        startValue == other.startValue &&
        endValue == other.endValue &&
        isEnable == other.isEnable &&
        makeType == other.makeType &&
        dynamicItemName == other.dynamicItemName;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, G__typename.hashCode);
    _$hash = $jc(_$hash, id.hashCode);
    _$hash = $jc(_$hash, typeId.hashCode);
    _$hash = $jc(_$hash, itemName.hashCode);
    _$hash = $jc(_$hash, otherItemName.hashCode);
    _$hash = $jc(_$hash, maximum.hashCode);
    _$hash = $jc(_$hash, minimum.hashCode);
    _$hash = $jc(_$hash, startValue.hashCode);
    _$hash = $jc(_$hash, endValue.hashCode);
    _$hash = $jc(_$hash, isEnable.hashCode);
    _$hash = $jc(_$hash, makeType.hashCode);
    _$hash = $jc(_$hash, dynamicItemName.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(
            r'GlistingSettingsTypesFragmentData_listSettings')
          ..add('G__typename', G__typename)
          ..add('id', id)
          ..add('typeId', typeId)
          ..add('itemName', itemName)
          ..add('otherItemName', otherItemName)
          ..add('maximum', maximum)
          ..add('minimum', minimum)
          ..add('startValue', startValue)
          ..add('endValue', endValue)
          ..add('isEnable', isEnable)
          ..add('makeType', makeType)
          ..add('dynamicItemName', dynamicItemName))
        .toString();
  }
}

class GlistingSettingsTypesFragmentData_listSettingsBuilder
    implements
        Builder<GlistingSettingsTypesFragmentData_listSettings,
            GlistingSettingsTypesFragmentData_listSettingsBuilder> {
  _$GlistingSettingsTypesFragmentData_listSettings? _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  int? _id;
  int? get id => _$this._id;
  set id(int? id) => _$this._id = id;

  int? _typeId;
  int? get typeId => _$this._typeId;
  set typeId(int? typeId) => _$this._typeId = typeId;

  String? _itemName;
  String? get itemName => _$this._itemName;
  set itemName(String? itemName) => _$this._itemName = itemName;

  String? _otherItemName;
  String? get otherItemName => _$this._otherItemName;
  set otherItemName(String? otherItemName) =>
      _$this._otherItemName = otherItemName;

  int? _maximum;
  int? get maximum => _$this._maximum;
  set maximum(int? maximum) => _$this._maximum = maximum;

  int? _minimum;
  int? get minimum => _$this._minimum;
  set minimum(int? minimum) => _$this._minimum = minimum;

  int? _startValue;
  int? get startValue => _$this._startValue;
  set startValue(int? startValue) => _$this._startValue = startValue;

  int? _endValue;
  int? get endValue => _$this._endValue;
  set endValue(int? endValue) => _$this._endValue = endValue;

  String? _isEnable;
  String? get isEnable => _$this._isEnable;
  set isEnable(String? isEnable) => _$this._isEnable = isEnable;

  int? _makeType;
  int? get makeType => _$this._makeType;
  set makeType(int? makeType) => _$this._makeType = makeType;

  GlistingSettingsTypesFragmentData_listSettings_dynamicItemNameBuilder?
      _dynamicItemName;
  GlistingSettingsTypesFragmentData_listSettings_dynamicItemNameBuilder
      get dynamicItemName => _$this._dynamicItemName ??=
          new GlistingSettingsTypesFragmentData_listSettings_dynamicItemNameBuilder();
  set dynamicItemName(
          GlistingSettingsTypesFragmentData_listSettings_dynamicItemNameBuilder?
              dynamicItemName) =>
      _$this._dynamicItemName = dynamicItemName;

  GlistingSettingsTypesFragmentData_listSettingsBuilder() {
    GlistingSettingsTypesFragmentData_listSettings._initializeBuilder(this);
  }

  GlistingSettingsTypesFragmentData_listSettingsBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _G__typename = $v.G__typename;
      _id = $v.id;
      _typeId = $v.typeId;
      _itemName = $v.itemName;
      _otherItemName = $v.otherItemName;
      _maximum = $v.maximum;
      _minimum = $v.minimum;
      _startValue = $v.startValue;
      _endValue = $v.endValue;
      _isEnable = $v.isEnable;
      _makeType = $v.makeType;
      _dynamicItemName = $v.dynamicItemName?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GlistingSettingsTypesFragmentData_listSettings other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GlistingSettingsTypesFragmentData_listSettings;
  }

  @override
  void update(
      void Function(GlistingSettingsTypesFragmentData_listSettingsBuilder)?
          updates) {
    if (updates != null) updates(this);
  }

  @override
  GlistingSettingsTypesFragmentData_listSettings build() => _build();

  _$GlistingSettingsTypesFragmentData_listSettings _build() {
    _$GlistingSettingsTypesFragmentData_listSettings _$result;
    try {
      _$result = _$v ??
          new _$GlistingSettingsTypesFragmentData_listSettings._(
              G__typename: BuiltValueNullFieldError.checkNotNull(
                  G__typename,
                  r'GlistingSettingsTypesFragmentData_listSettings',
                  'G__typename'),
              id: id,
              typeId: typeId,
              itemName: itemName,
              otherItemName: otherItemName,
              maximum: maximum,
              minimum: minimum,
              startValue: startValue,
              endValue: endValue,
              isEnable: isEnable,
              makeType: makeType,
              dynamicItemName: _dynamicItemName?.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'dynamicItemName';
        _dynamicItemName?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'GlistingSettingsTypesFragmentData_listSettings',
            _$failedField,
            e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

class _$GlistingSettingsTypesFragmentData_listSettings_dynamicItemName
    extends GlistingSettingsTypesFragmentData_listSettings_dynamicItemName {
  @override
  final String G__typename;
  @override
  final String? ar;
  @override
  final String? en;
  @override
  final String? es;
  @override
  final String? fr;
  @override
  final String? it;
  @override
  final String? pt;

  factory _$GlistingSettingsTypesFragmentData_listSettings_dynamicItemName(
          [void Function(
                  GlistingSettingsTypesFragmentData_listSettings_dynamicItemNameBuilder)?
              updates]) =>
      (new GlistingSettingsTypesFragmentData_listSettings_dynamicItemNameBuilder()
            ..update(updates))
          ._build();

  _$GlistingSettingsTypesFragmentData_listSettings_dynamicItemName._(
      {required this.G__typename,
      this.ar,
      this.en,
      this.es,
      this.fr,
      this.it,
      this.pt})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        G__typename,
        r'GlistingSettingsTypesFragmentData_listSettings_dynamicItemName',
        'G__typename');
  }

  @override
  GlistingSettingsTypesFragmentData_listSettings_dynamicItemName rebuild(
          void Function(
                  GlistingSettingsTypesFragmentData_listSettings_dynamicItemNameBuilder)
              updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GlistingSettingsTypesFragmentData_listSettings_dynamicItemNameBuilder
      toBuilder() =>
          new GlistingSettingsTypesFragmentData_listSettings_dynamicItemNameBuilder()
            ..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other
            is GlistingSettingsTypesFragmentData_listSettings_dynamicItemName &&
        G__typename == other.G__typename &&
        ar == other.ar &&
        en == other.en &&
        es == other.es &&
        fr == other.fr &&
        it == other.it &&
        pt == other.pt;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, G__typename.hashCode);
    _$hash = $jc(_$hash, ar.hashCode);
    _$hash = $jc(_$hash, en.hashCode);
    _$hash = $jc(_$hash, es.hashCode);
    _$hash = $jc(_$hash, fr.hashCode);
    _$hash = $jc(_$hash, it.hashCode);
    _$hash = $jc(_$hash, pt.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(
            r'GlistingSettingsTypesFragmentData_listSettings_dynamicItemName')
          ..add('G__typename', G__typename)
          ..add('ar', ar)
          ..add('en', en)
          ..add('es', es)
          ..add('fr', fr)
          ..add('it', it)
          ..add('pt', pt))
        .toString();
  }
}

class GlistingSettingsTypesFragmentData_listSettings_dynamicItemNameBuilder
    implements
        Builder<GlistingSettingsTypesFragmentData_listSettings_dynamicItemName,
            GlistingSettingsTypesFragmentData_listSettings_dynamicItemNameBuilder> {
  _$GlistingSettingsTypesFragmentData_listSettings_dynamicItemName? _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  String? _ar;
  String? get ar => _$this._ar;
  set ar(String? ar) => _$this._ar = ar;

  String? _en;
  String? get en => _$this._en;
  set en(String? en) => _$this._en = en;

  String? _es;
  String? get es => _$this._es;
  set es(String? es) => _$this._es = es;

  String? _fr;
  String? get fr => _$this._fr;
  set fr(String? fr) => _$this._fr = fr;

  String? _it;
  String? get it => _$this._it;
  set it(String? it) => _$this._it = it;

  String? _pt;
  String? get pt => _$this._pt;
  set pt(String? pt) => _$this._pt = pt;

  GlistingSettingsTypesFragmentData_listSettings_dynamicItemNameBuilder() {
    GlistingSettingsTypesFragmentData_listSettings_dynamicItemName
        ._initializeBuilder(this);
  }

  GlistingSettingsTypesFragmentData_listSettings_dynamicItemNameBuilder
      get _$this {
    final $v = _$v;
    if ($v != null) {
      _G__typename = $v.G__typename;
      _ar = $v.ar;
      _en = $v.en;
      _es = $v.es;
      _fr = $v.fr;
      _it = $v.it;
      _pt = $v.pt;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(
      GlistingSettingsTypesFragmentData_listSettings_dynamicItemName other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other
        as _$GlistingSettingsTypesFragmentData_listSettings_dynamicItemName;
  }

  @override
  void update(
      void Function(
              GlistingSettingsTypesFragmentData_listSettings_dynamicItemNameBuilder)?
          updates) {
    if (updates != null) updates(this);
  }

  @override
  GlistingSettingsTypesFragmentData_listSettings_dynamicItemName build() =>
      _build();

  _$GlistingSettingsTypesFragmentData_listSettings_dynamicItemName _build() {
    final _$result = _$v ??
        new _$GlistingSettingsTypesFragmentData_listSettings_dynamicItemName._(
            G__typename: BuiltValueNullFieldError.checkNotNull(
                G__typename,
                r'GlistingSettingsTypesFragmentData_listSettings_dynamicItemName',
                'G__typename'),
            ar: ar,
            en: en,
            es: es,
            fr: fr,
            it: it,
            pt: pt);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
