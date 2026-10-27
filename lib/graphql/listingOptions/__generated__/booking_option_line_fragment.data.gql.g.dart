// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'booking_option_line_fragment.data.gql.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<GbookingOptionLineFragmentData>
    _$gbookingOptionLineFragmentDataSerializer =
    new _$GbookingOptionLineFragmentDataSerializer();

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

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
