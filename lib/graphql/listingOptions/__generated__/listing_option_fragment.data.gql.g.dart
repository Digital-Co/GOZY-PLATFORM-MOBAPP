// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'listing_option_fragment.data.gql.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<GlistingOptionFragmentData> _$glistingOptionFragmentDataSerializer =
    new _$GlistingOptionFragmentDataSerializer();
Serializer<GbookingOptionLineFragmentData>
    _$gbookingOptionLineFragmentDataSerializer =
    new _$GbookingOptionLineFragmentDataSerializer();
Serializer<GreservationOptionSnapshotFragmentData>
    _$greservationOptionSnapshotFragmentDataSerializer =
    new _$GreservationOptionSnapshotFragmentDataSerializer();
Serializer<GlistingOptionsResultFragmentData>
    _$glistingOptionsResultFragmentDataSerializer =
    new _$GlistingOptionsResultFragmentDataSerializer();
Serializer<GlistingOptionsResultFragmentData_results>
    _$glistingOptionsResultFragmentDataResultsSerializer =
    new _$GlistingOptionsResultFragmentData_resultsSerializer();

class _$GlistingOptionFragmentDataSerializer
    implements StructuredSerializer<GlistingOptionFragmentData> {
  @override
  final Iterable<Type> types = const [
    GlistingOptionFragmentData,
    _$GlistingOptionFragmentData
  ];
  @override
  final String wireName = 'GlistingOptionFragmentData';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, GlistingOptionFragmentData object,
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
    value = object.listId;
    if (value != null) {
      result
        ..add('listId')
        ..add(serializers.serialize(value, specifiedType: const FullType(int)));
    }
    value = object.slot;
    if (value != null) {
      result
        ..add('slot')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.code;
    if (value != null) {
      result
        ..add('code')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.isFixed;
    if (value != null) {
      result
        ..add('isFixed')
        ..add(
            serializers.serialize(value, specifiedType: const FullType(bool)));
    }
    value = object.label;
    if (value != null) {
      result
        ..add('label')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.description;
    if (value != null) {
      result
        ..add('description')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.price;
    if (value != null) {
      result
        ..add('price')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(double)));
    }
    value = object.billingMode;
    if (value != null) {
      result
        ..add('billingMode')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.isActive;
    if (value != null) {
      result
        ..add('isActive')
        ..add(
            serializers.serialize(value, specifiedType: const FullType(bool)));
    }
    value = object.adminDisabled;
    if (value != null) {
      result
        ..add('adminDisabled')
        ..add(
            serializers.serialize(value, specifiedType: const FullType(bool)));
    }
    value = object.icon;
    if (value != null) {
      result
        ..add('icon')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.sortOrder;
    if (value != null) {
      result
        ..add('sortOrder')
        ..add(serializers.serialize(value, specifiedType: const FullType(int)));
    }
    return result;
  }

  @override
  GlistingOptionFragmentData deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GlistingOptionFragmentDataBuilder();

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
        case 'listId':
          result.listId = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int?;
          break;
        case 'slot':
          result.slot = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'code':
          result.code = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'isFixed':
          result.isFixed = serializers.deserialize(value,
              specifiedType: const FullType(bool)) as bool?;
          break;
        case 'label':
          result.label = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'description':
          result.description = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'price':
          result.price = serializers.deserialize(value,
              specifiedType: const FullType(double)) as double?;
          break;
        case 'billingMode':
          result.billingMode = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'isActive':
          result.isActive = serializers.deserialize(value,
              specifiedType: const FullType(bool)) as bool?;
          break;
        case 'adminDisabled':
          result.adminDisabled = serializers.deserialize(value,
              specifiedType: const FullType(bool)) as bool?;
          break;
        case 'icon':
          result.icon = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'sortOrder':
          result.sortOrder = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int?;
          break;
      }
    }

    return result.build();
  }
}

class _$GbookingOptionLineFragmentDataSerializer
    implements StructuredSerializer<GbookingOptionLineFragmentData> {
  @override
  final Iterable<Type> types = const [
    GbookingOptionLineFragmentData,
    _$GbookingOptionLineFragmentData
  ];
  @override
  final String wireName = 'GbookingOptionLineFragmentData';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, GbookingOptionLineFragmentData object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      '__typename',
      serializers.serialize(object.G__typename,
          specifiedType: const FullType(String)),
    ];
    Object? value;
    value = object.listingOptionId;
    if (value != null) {
      result
        ..add('listingOptionId')
        ..add(serializers.serialize(value, specifiedType: const FullType(int)));
    }
    value = object.code;
    if (value != null) {
      result
        ..add('code')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.isFixed;
    if (value != null) {
      result
        ..add('isFixed')
        ..add(
            serializers.serialize(value, specifiedType: const FullType(bool)));
    }
    value = object.label;
    if (value != null) {
      result
        ..add('label')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.labelKey;
    if (value != null) {
      result
        ..add('labelKey')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.description;
    if (value != null) {
      result
        ..add('description')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.billingMode;
    if (value != null) {
      result
        ..add('billingMode')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.unitPrice;
    if (value != null) {
      result
        ..add('unitPrice')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(double)));
    }
    value = object.quantity;
    if (value != null) {
      result
        ..add('quantity')
        ..add(serializers.serialize(value, specifiedType: const FullType(int)));
    }
    value = object.amount;
    if (value != null) {
      result
        ..add('amount')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(double)));
    }
    value = object.currency;
    if (value != null) {
      result
        ..add('currency')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.userInput;
    if (value != null) {
      result
        ..add('userInput')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    return result;
  }

  @override
  GbookingOptionLineFragmentData deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GbookingOptionLineFragmentDataBuilder();

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
        case 'listingOptionId':
          result.listingOptionId = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int?;
          break;
        case 'code':
          result.code = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'isFixed':
          result.isFixed = serializers.deserialize(value,
              specifiedType: const FullType(bool)) as bool?;
          break;
        case 'label':
          result.label = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'labelKey':
          result.labelKey = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'description':
          result.description = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'billingMode':
          result.billingMode = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'unitPrice':
          result.unitPrice = serializers.deserialize(value,
              specifiedType: const FullType(double)) as double?;
          break;
        case 'quantity':
          result.quantity = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int?;
          break;
        case 'amount':
          result.amount = serializers.deserialize(value,
              specifiedType: const FullType(double)) as double?;
          break;
        case 'currency':
          result.currency = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'userInput':
          result.userInput = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
      }
    }

    return result.build();
  }
}

class _$GreservationOptionSnapshotFragmentDataSerializer
    implements StructuredSerializer<GreservationOptionSnapshotFragmentData> {
  @override
  final Iterable<Type> types = const [
    GreservationOptionSnapshotFragmentData,
    _$GreservationOptionSnapshotFragmentData
  ];
  @override
  final String wireName = 'GreservationOptionSnapshotFragmentData';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, GreservationOptionSnapshotFragmentData object,
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
    value = object.code;
    if (value != null) {
      result
        ..add('code')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.isFixed;
    if (value != null) {
      result
        ..add('isFixed')
        ..add(
            serializers.serialize(value, specifiedType: const FullType(bool)));
    }
    value = object.label;
    if (value != null) {
      result
        ..add('label')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.labelKey;
    if (value != null) {
      result
        ..add('labelKey')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.description;
    if (value != null) {
      result
        ..add('description')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.billingMode;
    if (value != null) {
      result
        ..add('billingMode')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.unitPrice;
    if (value != null) {
      result
        ..add('unitPrice')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(double)));
    }
    value = object.quantity;
    if (value != null) {
      result
        ..add('quantity')
        ..add(serializers.serialize(value, specifiedType: const FullType(int)));
    }
    value = object.amount;
    if (value != null) {
      result
        ..add('amount')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(double)));
    }
    value = object.currency;
    if (value != null) {
      result
        ..add('currency')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.userInput;
    if (value != null) {
      result
        ..add('userInput')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    return result;
  }

  @override
  GreservationOptionSnapshotFragmentData deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GreservationOptionSnapshotFragmentDataBuilder();

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
        case 'code':
          result.code = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'isFixed':
          result.isFixed = serializers.deserialize(value,
              specifiedType: const FullType(bool)) as bool?;
          break;
        case 'label':
          result.label = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'labelKey':
          result.labelKey = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'description':
          result.description = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'billingMode':
          result.billingMode = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'unitPrice':
          result.unitPrice = serializers.deserialize(value,
              specifiedType: const FullType(double)) as double?;
          break;
        case 'quantity':
          result.quantity = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int?;
          break;
        case 'amount':
          result.amount = serializers.deserialize(value,
              specifiedType: const FullType(double)) as double?;
          break;
        case 'currency':
          result.currency = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'userInput':
          result.userInput = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
      }
    }

    return result.build();
  }
}

class _$GlistingOptionsResultFragmentDataSerializer
    implements StructuredSerializer<GlistingOptionsResultFragmentData> {
  @override
  final Iterable<Type> types = const [
    GlistingOptionsResultFragmentData,
    _$GlistingOptionsResultFragmentData
  ];
  @override
  final String wireName = 'GlistingOptionsResultFragmentData';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, GlistingOptionsResultFragmentData object,
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
    value = object.maxCustom;
    if (value != null) {
      result
        ..add('maxCustom')
        ..add(serializers.serialize(value, specifiedType: const FullType(int)));
    }
    value = object.customCount;
    if (value != null) {
      result
        ..add('customCount')
        ..add(serializers.serialize(value, specifiedType: const FullType(int)));
    }
    value = object.results;
    if (value != null) {
      result
        ..add('results')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(BuiltList, const [
              const FullType.nullable(GlistingOptionsResultFragmentData_results)
            ])));
    }
    return result;
  }

  @override
  GlistingOptionsResultFragmentData deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GlistingOptionsResultFragmentDataBuilder();

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
        case 'maxCustom':
          result.maxCustom = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int?;
          break;
        case 'customCount':
          result.customCount = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int?;
          break;
        case 'results':
          result.results.replace(serializers.deserialize(value,
              specifiedType: const FullType(BuiltList, const [
                const FullType.nullable(
                    GlistingOptionsResultFragmentData_results)
              ]))! as BuiltList<Object?>);
          break;
      }
    }

    return result.build();
  }
}

class _$GlistingOptionsResultFragmentData_resultsSerializer
    implements StructuredSerializer<GlistingOptionsResultFragmentData_results> {
  @override
  final Iterable<Type> types = const [
    GlistingOptionsResultFragmentData_results,
    _$GlistingOptionsResultFragmentData_results
  ];
  @override
  final String wireName = 'GlistingOptionsResultFragmentData_results';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, GlistingOptionsResultFragmentData_results object,
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
    value = object.listId;
    if (value != null) {
      result
        ..add('listId')
        ..add(serializers.serialize(value, specifiedType: const FullType(int)));
    }
    value = object.slot;
    if (value != null) {
      result
        ..add('slot')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.code;
    if (value != null) {
      result
        ..add('code')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.isFixed;
    if (value != null) {
      result
        ..add('isFixed')
        ..add(
            serializers.serialize(value, specifiedType: const FullType(bool)));
    }
    value = object.label;
    if (value != null) {
      result
        ..add('label')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.description;
    if (value != null) {
      result
        ..add('description')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.price;
    if (value != null) {
      result
        ..add('price')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(double)));
    }
    value = object.billingMode;
    if (value != null) {
      result
        ..add('billingMode')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.isActive;
    if (value != null) {
      result
        ..add('isActive')
        ..add(
            serializers.serialize(value, specifiedType: const FullType(bool)));
    }
    value = object.adminDisabled;
    if (value != null) {
      result
        ..add('adminDisabled')
        ..add(
            serializers.serialize(value, specifiedType: const FullType(bool)));
    }
    value = object.icon;
    if (value != null) {
      result
        ..add('icon')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.sortOrder;
    if (value != null) {
      result
        ..add('sortOrder')
        ..add(serializers.serialize(value, specifiedType: const FullType(int)));
    }
    return result;
  }

  @override
  GlistingOptionsResultFragmentData_results deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GlistingOptionsResultFragmentData_resultsBuilder();

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
        case 'listId':
          result.listId = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int?;
          break;
        case 'slot':
          result.slot = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'code':
          result.code = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'isFixed':
          result.isFixed = serializers.deserialize(value,
              specifiedType: const FullType(bool)) as bool?;
          break;
        case 'label':
          result.label = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'description':
          result.description = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'price':
          result.price = serializers.deserialize(value,
              specifiedType: const FullType(double)) as double?;
          break;
        case 'billingMode':
          result.billingMode = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'isActive':
          result.isActive = serializers.deserialize(value,
              specifiedType: const FullType(bool)) as bool?;
          break;
        case 'adminDisabled':
          result.adminDisabled = serializers.deserialize(value,
              specifiedType: const FullType(bool)) as bool?;
          break;
        case 'icon':
          result.icon = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'sortOrder':
          result.sortOrder = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int?;
          break;
      }
    }

    return result.build();
  }
}

class _$GlistingOptionFragmentData extends GlistingOptionFragmentData {
  @override
  final String G__typename;
  @override
  final int? id;
  @override
  final int? listId;
  @override
  final String? slot;
  @override
  final String? code;
  @override
  final bool? isFixed;
  @override
  final String? label;
  @override
  final String? description;
  @override
  final double? price;
  @override
  final String? billingMode;
  @override
  final bool? isActive;
  @override
  final bool? adminDisabled;
  @override
  final String? icon;
  @override
  final int? sortOrder;

  factory _$GlistingOptionFragmentData(
          [void Function(GlistingOptionFragmentDataBuilder)? updates]) =>
      (new GlistingOptionFragmentDataBuilder()..update(updates))._build();

  _$GlistingOptionFragmentData._(
      {required this.G__typename,
      this.id,
      this.listId,
      this.slot,
      this.code,
      this.isFixed,
      this.label,
      this.description,
      this.price,
      this.billingMode,
      this.isActive,
      this.adminDisabled,
      this.icon,
      this.sortOrder})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        G__typename, r'GlistingOptionFragmentData', 'G__typename');
  }

  @override
  GlistingOptionFragmentData rebuild(
          void Function(GlistingOptionFragmentDataBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GlistingOptionFragmentDataBuilder toBuilder() =>
      new GlistingOptionFragmentDataBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GlistingOptionFragmentData &&
        G__typename == other.G__typename &&
        id == other.id &&
        listId == other.listId &&
        slot == other.slot &&
        code == other.code &&
        isFixed == other.isFixed &&
        label == other.label &&
        description == other.description &&
        price == other.price &&
        billingMode == other.billingMode &&
        isActive == other.isActive &&
        adminDisabled == other.adminDisabled &&
        icon == other.icon &&
        sortOrder == other.sortOrder;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, G__typename.hashCode);
    _$hash = $jc(_$hash, id.hashCode);
    _$hash = $jc(_$hash, listId.hashCode);
    _$hash = $jc(_$hash, slot.hashCode);
    _$hash = $jc(_$hash, code.hashCode);
    _$hash = $jc(_$hash, isFixed.hashCode);
    _$hash = $jc(_$hash, label.hashCode);
    _$hash = $jc(_$hash, description.hashCode);
    _$hash = $jc(_$hash, price.hashCode);
    _$hash = $jc(_$hash, billingMode.hashCode);
    _$hash = $jc(_$hash, isActive.hashCode);
    _$hash = $jc(_$hash, adminDisabled.hashCode);
    _$hash = $jc(_$hash, icon.hashCode);
    _$hash = $jc(_$hash, sortOrder.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'GlistingOptionFragmentData')
          ..add('G__typename', G__typename)
          ..add('id', id)
          ..add('listId', listId)
          ..add('slot', slot)
          ..add('code', code)
          ..add('isFixed', isFixed)
          ..add('label', label)
          ..add('description', description)
          ..add('price', price)
          ..add('billingMode', billingMode)
          ..add('isActive', isActive)
          ..add('adminDisabled', adminDisabled)
          ..add('icon', icon)
          ..add('sortOrder', sortOrder))
        .toString();
  }
}

class GlistingOptionFragmentDataBuilder
    implements
        Builder<GlistingOptionFragmentData, GlistingOptionFragmentDataBuilder> {
  _$GlistingOptionFragmentData? _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  int? _id;
  int? get id => _$this._id;
  set id(int? id) => _$this._id = id;

  int? _listId;
  int? get listId => _$this._listId;
  set listId(int? listId) => _$this._listId = listId;

  String? _slot;
  String? get slot => _$this._slot;
  set slot(String? slot) => _$this._slot = slot;

  String? _code;
  String? get code => _$this._code;
  set code(String? code) => _$this._code = code;

  bool? _isFixed;
  bool? get isFixed => _$this._isFixed;
  set isFixed(bool? isFixed) => _$this._isFixed = isFixed;

  String? _label;
  String? get label => _$this._label;
  set label(String? label) => _$this._label = label;

  String? _description;
  String? get description => _$this._description;
  set description(String? description) => _$this._description = description;

  double? _price;
  double? get price => _$this._price;
  set price(double? price) => _$this._price = price;

  String? _billingMode;
  String? get billingMode => _$this._billingMode;
  set billingMode(String? billingMode) => _$this._billingMode = billingMode;

  bool? _isActive;
  bool? get isActive => _$this._isActive;
  set isActive(bool? isActive) => _$this._isActive = isActive;

  bool? _adminDisabled;
  bool? get adminDisabled => _$this._adminDisabled;
  set adminDisabled(bool? adminDisabled) =>
      _$this._adminDisabled = adminDisabled;

  String? _icon;
  String? get icon => _$this._icon;
  set icon(String? icon) => _$this._icon = icon;

  int? _sortOrder;
  int? get sortOrder => _$this._sortOrder;
  set sortOrder(int? sortOrder) => _$this._sortOrder = sortOrder;

  GlistingOptionFragmentDataBuilder() {
    GlistingOptionFragmentData._initializeBuilder(this);
  }

  GlistingOptionFragmentDataBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _G__typename = $v.G__typename;
      _id = $v.id;
      _listId = $v.listId;
      _slot = $v.slot;
      _code = $v.code;
      _isFixed = $v.isFixed;
      _label = $v.label;
      _description = $v.description;
      _price = $v.price;
      _billingMode = $v.billingMode;
      _isActive = $v.isActive;
      _adminDisabled = $v.adminDisabled;
      _icon = $v.icon;
      _sortOrder = $v.sortOrder;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GlistingOptionFragmentData other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GlistingOptionFragmentData;
  }

  @override
  void update(void Function(GlistingOptionFragmentDataBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GlistingOptionFragmentData build() => _build();

  _$GlistingOptionFragmentData _build() {
    final _$result = _$v ??
        new _$GlistingOptionFragmentData._(
            G__typename: BuiltValueNullFieldError.checkNotNull(
                G__typename, r'GlistingOptionFragmentData', 'G__typename'),
            id: id,
            listId: listId,
            slot: slot,
            code: code,
            isFixed: isFixed,
            label: label,
            description: description,
            price: price,
            billingMode: billingMode,
            isActive: isActive,
            adminDisabled: adminDisabled,
            icon: icon,
            sortOrder: sortOrder);
    replace(_$result);
    return _$result;
  }
}

class _$GbookingOptionLineFragmentData extends GbookingOptionLineFragmentData {
  @override
  final String G__typename;
  @override
  final int? listingOptionId;
  @override
  final String? code;
  @override
  final bool? isFixed;
  @override
  final String? label;
  @override
  final String? labelKey;
  @override
  final String? description;
  @override
  final String? billingMode;
  @override
  final double? unitPrice;
  @override
  final int? quantity;
  @override
  final double? amount;
  @override
  final String? currency;
  @override
  final String? userInput;

  factory _$GbookingOptionLineFragmentData(
          [void Function(GbookingOptionLineFragmentDataBuilder)? updates]) =>
      (new GbookingOptionLineFragmentDataBuilder()..update(updates))._build();

  _$GbookingOptionLineFragmentData._(
      {required this.G__typename,
      this.listingOptionId,
      this.code,
      this.isFixed,
      this.label,
      this.labelKey,
      this.description,
      this.billingMode,
      this.unitPrice,
      this.quantity,
      this.amount,
      this.currency,
      this.userInput})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        G__typename, r'GbookingOptionLineFragmentData', 'G__typename');
  }

  @override
  GbookingOptionLineFragmentData rebuild(
          void Function(GbookingOptionLineFragmentDataBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GbookingOptionLineFragmentDataBuilder toBuilder() =>
      new GbookingOptionLineFragmentDataBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GbookingOptionLineFragmentData &&
        G__typename == other.G__typename &&
        listingOptionId == other.listingOptionId &&
        code == other.code &&
        isFixed == other.isFixed &&
        label == other.label &&
        labelKey == other.labelKey &&
        description == other.description &&
        billingMode == other.billingMode &&
        unitPrice == other.unitPrice &&
        quantity == other.quantity &&
        amount == other.amount &&
        currency == other.currency &&
        userInput == other.userInput;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, G__typename.hashCode);
    _$hash = $jc(_$hash, listingOptionId.hashCode);
    _$hash = $jc(_$hash, code.hashCode);
    _$hash = $jc(_$hash, isFixed.hashCode);
    _$hash = $jc(_$hash, label.hashCode);
    _$hash = $jc(_$hash, labelKey.hashCode);
    _$hash = $jc(_$hash, description.hashCode);
    _$hash = $jc(_$hash, billingMode.hashCode);
    _$hash = $jc(_$hash, unitPrice.hashCode);
    _$hash = $jc(_$hash, quantity.hashCode);
    _$hash = $jc(_$hash, amount.hashCode);
    _$hash = $jc(_$hash, currency.hashCode);
    _$hash = $jc(_$hash, userInput.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'GbookingOptionLineFragmentData')
          ..add('G__typename', G__typename)
          ..add('listingOptionId', listingOptionId)
          ..add('code', code)
          ..add('isFixed', isFixed)
          ..add('label', label)
          ..add('labelKey', labelKey)
          ..add('description', description)
          ..add('billingMode', billingMode)
          ..add('unitPrice', unitPrice)
          ..add('quantity', quantity)
          ..add('amount', amount)
          ..add('currency', currency)
          ..add('userInput', userInput))
        .toString();
  }
}

class GbookingOptionLineFragmentDataBuilder
    implements
        Builder<GbookingOptionLineFragmentData,
            GbookingOptionLineFragmentDataBuilder> {
  _$GbookingOptionLineFragmentData? _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  int? _listingOptionId;
  int? get listingOptionId => _$this._listingOptionId;
  set listingOptionId(int? listingOptionId) =>
      _$this._listingOptionId = listingOptionId;

  String? _code;
  String? get code => _$this._code;
  set code(String? code) => _$this._code = code;

  bool? _isFixed;
  bool? get isFixed => _$this._isFixed;
  set isFixed(bool? isFixed) => _$this._isFixed = isFixed;

  String? _label;
  String? get label => _$this._label;
  set label(String? label) => _$this._label = label;

  String? _labelKey;
  String? get labelKey => _$this._labelKey;
  set labelKey(String? labelKey) => _$this._labelKey = labelKey;

  String? _description;
  String? get description => _$this._description;
  set description(String? description) => _$this._description = description;

  String? _billingMode;
  String? get billingMode => _$this._billingMode;
  set billingMode(String? billingMode) => _$this._billingMode = billingMode;

  double? _unitPrice;
  double? get unitPrice => _$this._unitPrice;
  set unitPrice(double? unitPrice) => _$this._unitPrice = unitPrice;

  int? _quantity;
  int? get quantity => _$this._quantity;
  set quantity(int? quantity) => _$this._quantity = quantity;

  double? _amount;
  double? get amount => _$this._amount;
  set amount(double? amount) => _$this._amount = amount;

  String? _currency;
  String? get currency => _$this._currency;
  set currency(String? currency) => _$this._currency = currency;

  String? _userInput;
  String? get userInput => _$this._userInput;
  set userInput(String? userInput) => _$this._userInput = userInput;

  GbookingOptionLineFragmentDataBuilder() {
    GbookingOptionLineFragmentData._initializeBuilder(this);
  }

  GbookingOptionLineFragmentDataBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _G__typename = $v.G__typename;
      _listingOptionId = $v.listingOptionId;
      _code = $v.code;
      _isFixed = $v.isFixed;
      _label = $v.label;
      _labelKey = $v.labelKey;
      _description = $v.description;
      _billingMode = $v.billingMode;
      _unitPrice = $v.unitPrice;
      _quantity = $v.quantity;
      _amount = $v.amount;
      _currency = $v.currency;
      _userInput = $v.userInput;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GbookingOptionLineFragmentData other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GbookingOptionLineFragmentData;
  }

  @override
  void update(void Function(GbookingOptionLineFragmentDataBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GbookingOptionLineFragmentData build() => _build();

  _$GbookingOptionLineFragmentData _build() {
    final _$result = _$v ??
        new _$GbookingOptionLineFragmentData._(
            G__typename: BuiltValueNullFieldError.checkNotNull(
                G__typename, r'GbookingOptionLineFragmentData', 'G__typename'),
            listingOptionId: listingOptionId,
            code: code,
            isFixed: isFixed,
            label: label,
            labelKey: labelKey,
            description: description,
            billingMode: billingMode,
            unitPrice: unitPrice,
            quantity: quantity,
            amount: amount,
            currency: currency,
            userInput: userInput);
    replace(_$result);
    return _$result;
  }
}

class _$GreservationOptionSnapshotFragmentData
    extends GreservationOptionSnapshotFragmentData {
  @override
  final String G__typename;
  @override
  final int? id;
  @override
  final String? code;
  @override
  final bool? isFixed;
  @override
  final String? label;
  @override
  final String? labelKey;
  @override
  final String? description;
  @override
  final String? billingMode;
  @override
  final double? unitPrice;
  @override
  final int? quantity;
  @override
  final double? amount;
  @override
  final String? currency;
  @override
  final String? userInput;

  factory _$GreservationOptionSnapshotFragmentData(
          [void Function(GreservationOptionSnapshotFragmentDataBuilder)?
              updates]) =>
      (new GreservationOptionSnapshotFragmentDataBuilder()..update(updates))
          ._build();

  _$GreservationOptionSnapshotFragmentData._(
      {required this.G__typename,
      this.id,
      this.code,
      this.isFixed,
      this.label,
      this.labelKey,
      this.description,
      this.billingMode,
      this.unitPrice,
      this.quantity,
      this.amount,
      this.currency,
      this.userInput})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        G__typename, r'GreservationOptionSnapshotFragmentData', 'G__typename');
  }

  @override
  GreservationOptionSnapshotFragmentData rebuild(
          void Function(GreservationOptionSnapshotFragmentDataBuilder)
              updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GreservationOptionSnapshotFragmentDataBuilder toBuilder() =>
      new GreservationOptionSnapshotFragmentDataBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GreservationOptionSnapshotFragmentData &&
        G__typename == other.G__typename &&
        id == other.id &&
        code == other.code &&
        isFixed == other.isFixed &&
        label == other.label &&
        labelKey == other.labelKey &&
        description == other.description &&
        billingMode == other.billingMode &&
        unitPrice == other.unitPrice &&
        quantity == other.quantity &&
        amount == other.amount &&
        currency == other.currency &&
        userInput == other.userInput;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, G__typename.hashCode);
    _$hash = $jc(_$hash, id.hashCode);
    _$hash = $jc(_$hash, code.hashCode);
    _$hash = $jc(_$hash, isFixed.hashCode);
    _$hash = $jc(_$hash, label.hashCode);
    _$hash = $jc(_$hash, labelKey.hashCode);
    _$hash = $jc(_$hash, description.hashCode);
    _$hash = $jc(_$hash, billingMode.hashCode);
    _$hash = $jc(_$hash, unitPrice.hashCode);
    _$hash = $jc(_$hash, quantity.hashCode);
    _$hash = $jc(_$hash, amount.hashCode);
    _$hash = $jc(_$hash, currency.hashCode);
    _$hash = $jc(_$hash, userInput.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(
            r'GreservationOptionSnapshotFragmentData')
          ..add('G__typename', G__typename)
          ..add('id', id)
          ..add('code', code)
          ..add('isFixed', isFixed)
          ..add('label', label)
          ..add('labelKey', labelKey)
          ..add('description', description)
          ..add('billingMode', billingMode)
          ..add('unitPrice', unitPrice)
          ..add('quantity', quantity)
          ..add('amount', amount)
          ..add('currency', currency)
          ..add('userInput', userInput))
        .toString();
  }
}

class GreservationOptionSnapshotFragmentDataBuilder
    implements
        Builder<GreservationOptionSnapshotFragmentData,
            GreservationOptionSnapshotFragmentDataBuilder> {
  _$GreservationOptionSnapshotFragmentData? _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  int? _id;
  int? get id => _$this._id;
  set id(int? id) => _$this._id = id;

  String? _code;
  String? get code => _$this._code;
  set code(String? code) => _$this._code = code;

  bool? _isFixed;
  bool? get isFixed => _$this._isFixed;
  set isFixed(bool? isFixed) => _$this._isFixed = isFixed;

  String? _label;
  String? get label => _$this._label;
  set label(String? label) => _$this._label = label;

  String? _labelKey;
  String? get labelKey => _$this._labelKey;
  set labelKey(String? labelKey) => _$this._labelKey = labelKey;

  String? _description;
  String? get description => _$this._description;
  set description(String? description) => _$this._description = description;

  String? _billingMode;
  String? get billingMode => _$this._billingMode;
  set billingMode(String? billingMode) => _$this._billingMode = billingMode;

  double? _unitPrice;
  double? get unitPrice => _$this._unitPrice;
  set unitPrice(double? unitPrice) => _$this._unitPrice = unitPrice;

  int? _quantity;
  int? get quantity => _$this._quantity;
  set quantity(int? quantity) => _$this._quantity = quantity;

  double? _amount;
  double? get amount => _$this._amount;
  set amount(double? amount) => _$this._amount = amount;

  String? _currency;
  String? get currency => _$this._currency;
  set currency(String? currency) => _$this._currency = currency;

  String? _userInput;
  String? get userInput => _$this._userInput;
  set userInput(String? userInput) => _$this._userInput = userInput;

  GreservationOptionSnapshotFragmentDataBuilder() {
    GreservationOptionSnapshotFragmentData._initializeBuilder(this);
  }

  GreservationOptionSnapshotFragmentDataBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _G__typename = $v.G__typename;
      _id = $v.id;
      _code = $v.code;
      _isFixed = $v.isFixed;
      _label = $v.label;
      _labelKey = $v.labelKey;
      _description = $v.description;
      _billingMode = $v.billingMode;
      _unitPrice = $v.unitPrice;
      _quantity = $v.quantity;
      _amount = $v.amount;
      _currency = $v.currency;
      _userInput = $v.userInput;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GreservationOptionSnapshotFragmentData other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GreservationOptionSnapshotFragmentData;
  }

  @override
  void update(
      void Function(GreservationOptionSnapshotFragmentDataBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GreservationOptionSnapshotFragmentData build() => _build();

  _$GreservationOptionSnapshotFragmentData _build() {
    final _$result = _$v ??
        new _$GreservationOptionSnapshotFragmentData._(
            G__typename: BuiltValueNullFieldError.checkNotNull(G__typename,
                r'GreservationOptionSnapshotFragmentData', 'G__typename'),
            id: id,
            code: code,
            isFixed: isFixed,
            label: label,
            labelKey: labelKey,
            description: description,
            billingMode: billingMode,
            unitPrice: unitPrice,
            quantity: quantity,
            amount: amount,
            currency: currency,
            userInput: userInput);
    replace(_$result);
    return _$result;
  }
}

class _$GlistingOptionsResultFragmentData
    extends GlistingOptionsResultFragmentData {
  @override
  final String G__typename;
  @override
  final int? status;
  @override
  final String? errorMessage;
  @override
  final int? maxCustom;
  @override
  final int? customCount;
  @override
  final BuiltList<GlistingOptionsResultFragmentData_results?>? results;

  factory _$GlistingOptionsResultFragmentData(
          [void Function(GlistingOptionsResultFragmentDataBuilder)? updates]) =>
      (new GlistingOptionsResultFragmentDataBuilder()..update(updates))
          ._build();

  _$GlistingOptionsResultFragmentData._(
      {required this.G__typename,
      this.status,
      this.errorMessage,
      this.maxCustom,
      this.customCount,
      this.results})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        G__typename, r'GlistingOptionsResultFragmentData', 'G__typename');
  }

  @override
  GlistingOptionsResultFragmentData rebuild(
          void Function(GlistingOptionsResultFragmentDataBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GlistingOptionsResultFragmentDataBuilder toBuilder() =>
      new GlistingOptionsResultFragmentDataBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GlistingOptionsResultFragmentData &&
        G__typename == other.G__typename &&
        status == other.status &&
        errorMessage == other.errorMessage &&
        maxCustom == other.maxCustom &&
        customCount == other.customCount &&
        results == other.results;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, G__typename.hashCode);
    _$hash = $jc(_$hash, status.hashCode);
    _$hash = $jc(_$hash, errorMessage.hashCode);
    _$hash = $jc(_$hash, maxCustom.hashCode);
    _$hash = $jc(_$hash, customCount.hashCode);
    _$hash = $jc(_$hash, results.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'GlistingOptionsResultFragmentData')
          ..add('G__typename', G__typename)
          ..add('status', status)
          ..add('errorMessage', errorMessage)
          ..add('maxCustom', maxCustom)
          ..add('customCount', customCount)
          ..add('results', results))
        .toString();
  }
}

class GlistingOptionsResultFragmentDataBuilder
    implements
        Builder<GlistingOptionsResultFragmentData,
            GlistingOptionsResultFragmentDataBuilder> {
  _$GlistingOptionsResultFragmentData? _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  int? _status;
  int? get status => _$this._status;
  set status(int? status) => _$this._status = status;

  String? _errorMessage;
  String? get errorMessage => _$this._errorMessage;
  set errorMessage(String? errorMessage) => _$this._errorMessage = errorMessage;

  int? _maxCustom;
  int? get maxCustom => _$this._maxCustom;
  set maxCustom(int? maxCustom) => _$this._maxCustom = maxCustom;

  int? _customCount;
  int? get customCount => _$this._customCount;
  set customCount(int? customCount) => _$this._customCount = customCount;

  ListBuilder<GlistingOptionsResultFragmentData_results?>? _results;
  ListBuilder<GlistingOptionsResultFragmentData_results?> get results =>
      _$this._results ??=
          new ListBuilder<GlistingOptionsResultFragmentData_results?>();
  set results(
          ListBuilder<GlistingOptionsResultFragmentData_results?>? results) =>
      _$this._results = results;

  GlistingOptionsResultFragmentDataBuilder() {
    GlistingOptionsResultFragmentData._initializeBuilder(this);
  }

  GlistingOptionsResultFragmentDataBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _G__typename = $v.G__typename;
      _status = $v.status;
      _errorMessage = $v.errorMessage;
      _maxCustom = $v.maxCustom;
      _customCount = $v.customCount;
      _results = $v.results?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GlistingOptionsResultFragmentData other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GlistingOptionsResultFragmentData;
  }

  @override
  void update(
      void Function(GlistingOptionsResultFragmentDataBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GlistingOptionsResultFragmentData build() => _build();

  _$GlistingOptionsResultFragmentData _build() {
    _$GlistingOptionsResultFragmentData _$result;
    try {
      _$result = _$v ??
          new _$GlistingOptionsResultFragmentData._(
              G__typename: BuiltValueNullFieldError.checkNotNull(G__typename,
                  r'GlistingOptionsResultFragmentData', 'G__typename'),
              status: status,
              errorMessage: errorMessage,
              maxCustom: maxCustom,
              customCount: customCount,
              results: _results?.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'results';
        _results?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'GlistingOptionsResultFragmentData', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

class _$GlistingOptionsResultFragmentData_results
    extends GlistingOptionsResultFragmentData_results {
  @override
  final String G__typename;
  @override
  final int? id;
  @override
  final int? listId;
  @override
  final String? slot;
  @override
  final String? code;
  @override
  final bool? isFixed;
  @override
  final String? label;
  @override
  final String? description;
  @override
  final double? price;
  @override
  final String? billingMode;
  @override
  final bool? isActive;
  @override
  final bool? adminDisabled;
  @override
  final String? icon;
  @override
  final int? sortOrder;

  factory _$GlistingOptionsResultFragmentData_results(
          [void Function(GlistingOptionsResultFragmentData_resultsBuilder)?
              updates]) =>
      (new GlistingOptionsResultFragmentData_resultsBuilder()..update(updates))
          ._build();

  _$GlistingOptionsResultFragmentData_results._(
      {required this.G__typename,
      this.id,
      this.listId,
      this.slot,
      this.code,
      this.isFixed,
      this.label,
      this.description,
      this.price,
      this.billingMode,
      this.isActive,
      this.adminDisabled,
      this.icon,
      this.sortOrder})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(G__typename,
        r'GlistingOptionsResultFragmentData_results', 'G__typename');
  }

  @override
  GlistingOptionsResultFragmentData_results rebuild(
          void Function(GlistingOptionsResultFragmentData_resultsBuilder)
              updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GlistingOptionsResultFragmentData_resultsBuilder toBuilder() =>
      new GlistingOptionsResultFragmentData_resultsBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GlistingOptionsResultFragmentData_results &&
        G__typename == other.G__typename &&
        id == other.id &&
        listId == other.listId &&
        slot == other.slot &&
        code == other.code &&
        isFixed == other.isFixed &&
        label == other.label &&
        description == other.description &&
        price == other.price &&
        billingMode == other.billingMode &&
        isActive == other.isActive &&
        adminDisabled == other.adminDisabled &&
        icon == other.icon &&
        sortOrder == other.sortOrder;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, G__typename.hashCode);
    _$hash = $jc(_$hash, id.hashCode);
    _$hash = $jc(_$hash, listId.hashCode);
    _$hash = $jc(_$hash, slot.hashCode);
    _$hash = $jc(_$hash, code.hashCode);
    _$hash = $jc(_$hash, isFixed.hashCode);
    _$hash = $jc(_$hash, label.hashCode);
    _$hash = $jc(_$hash, description.hashCode);
    _$hash = $jc(_$hash, price.hashCode);
    _$hash = $jc(_$hash, billingMode.hashCode);
    _$hash = $jc(_$hash, isActive.hashCode);
    _$hash = $jc(_$hash, adminDisabled.hashCode);
    _$hash = $jc(_$hash, icon.hashCode);
    _$hash = $jc(_$hash, sortOrder.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(
            r'GlistingOptionsResultFragmentData_results')
          ..add('G__typename', G__typename)
          ..add('id', id)
          ..add('listId', listId)
          ..add('slot', slot)
          ..add('code', code)
          ..add('isFixed', isFixed)
          ..add('label', label)
          ..add('description', description)
          ..add('price', price)
          ..add('billingMode', billingMode)
          ..add('isActive', isActive)
          ..add('adminDisabled', adminDisabled)
          ..add('icon', icon)
          ..add('sortOrder', sortOrder))
        .toString();
  }
}

class GlistingOptionsResultFragmentData_resultsBuilder
    implements
        Builder<GlistingOptionsResultFragmentData_results,
            GlistingOptionsResultFragmentData_resultsBuilder> {
  _$GlistingOptionsResultFragmentData_results? _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  int? _id;
  int? get id => _$this._id;
  set id(int? id) => _$this._id = id;

  int? _listId;
  int? get listId => _$this._listId;
  set listId(int? listId) => _$this._listId = listId;

  String? _slot;
  String? get slot => _$this._slot;
  set slot(String? slot) => _$this._slot = slot;

  String? _code;
  String? get code => _$this._code;
  set code(String? code) => _$this._code = code;

  bool? _isFixed;
  bool? get isFixed => _$this._isFixed;
  set isFixed(bool? isFixed) => _$this._isFixed = isFixed;

  String? _label;
  String? get label => _$this._label;
  set label(String? label) => _$this._label = label;

  String? _description;
  String? get description => _$this._description;
  set description(String? description) => _$this._description = description;

  double? _price;
  double? get price => _$this._price;
  set price(double? price) => _$this._price = price;

  String? _billingMode;
  String? get billingMode => _$this._billingMode;
  set billingMode(String? billingMode) => _$this._billingMode = billingMode;

  bool? _isActive;
  bool? get isActive => _$this._isActive;
  set isActive(bool? isActive) => _$this._isActive = isActive;

  bool? _adminDisabled;
  bool? get adminDisabled => _$this._adminDisabled;
  set adminDisabled(bool? adminDisabled) =>
      _$this._adminDisabled = adminDisabled;

  String? _icon;
  String? get icon => _$this._icon;
  set icon(String? icon) => _$this._icon = icon;

  int? _sortOrder;
  int? get sortOrder => _$this._sortOrder;
  set sortOrder(int? sortOrder) => _$this._sortOrder = sortOrder;

  GlistingOptionsResultFragmentData_resultsBuilder() {
    GlistingOptionsResultFragmentData_results._initializeBuilder(this);
  }

  GlistingOptionsResultFragmentData_resultsBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _G__typename = $v.G__typename;
      _id = $v.id;
      _listId = $v.listId;
      _slot = $v.slot;
      _code = $v.code;
      _isFixed = $v.isFixed;
      _label = $v.label;
      _description = $v.description;
      _price = $v.price;
      _billingMode = $v.billingMode;
      _isActive = $v.isActive;
      _adminDisabled = $v.adminDisabled;
      _icon = $v.icon;
      _sortOrder = $v.sortOrder;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GlistingOptionsResultFragmentData_results other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GlistingOptionsResultFragmentData_results;
  }

  @override
  void update(
      void Function(GlistingOptionsResultFragmentData_resultsBuilder)?
          updates) {
    if (updates != null) updates(this);
  }

  @override
  GlistingOptionsResultFragmentData_results build() => _build();

  _$GlistingOptionsResultFragmentData_results _build() {
    final _$result = _$v ??
        new _$GlistingOptionsResultFragmentData_results._(
            G__typename: BuiltValueNullFieldError.checkNotNull(G__typename,
                r'GlistingOptionsResultFragmentData_results', 'G__typename'),
            id: id,
            listId: listId,
            slot: slot,
            code: code,
            isFixed: isFixed,
            label: label,
            description: description,
            price: price,
            billingMode: billingMode,
            isActive: isActive,
            adminDisabled: adminDisabled,
            icon: icon,
            sortOrder: sortOrder);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
