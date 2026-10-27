// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'save_listing_option.var.gql.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<GsaveListingOptionVars> _$gsaveListingOptionVarsSerializer =
    new _$GsaveListingOptionVarsSerializer();

class _$GsaveListingOptionVarsSerializer
    implements StructuredSerializer<GsaveListingOptionVars> {
  @override
  final Iterable<Type> types = const [
    GsaveListingOptionVars,
    _$GsaveListingOptionVars
  ];
  @override
  final String wireName = 'GsaveListingOptionVars';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, GsaveListingOptionVars object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      'listId',
      serializers.serialize(object.listId, specifiedType: const FullType(int)),
      'price',
      serializers.serialize(object.price,
          specifiedType: const FullType(double)),
    ];
    Object? value;
    value = object.slot;
    if (value != null) {
      result
        ..add('slot')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
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
    value = object.billingMode;
    if (value != null) {
      result
        ..add('billingMode')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.icon;
    if (value != null) {
      result
        ..add('icon')
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
    return result;
  }

  @override
  GsaveListingOptionVars deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GsaveListingOptionVarsBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'listId':
          result.listId = serializers.deserialize(value,
              specifiedType: const FullType(int))! as int;
          break;
        case 'slot':
          result.slot = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
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
              specifiedType: const FullType(double))! as double;
          break;
        case 'billingMode':
          result.billingMode = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'icon':
          result.icon = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'isActive':
          result.isActive = serializers.deserialize(value,
              specifiedType: const FullType(bool)) as bool?;
          break;
      }
    }

    return result.build();
  }
}

class _$GsaveListingOptionVars extends GsaveListingOptionVars {
  @override
  final int listId;
  @override
  final String? slot;
  @override
  final String? label;
  @override
  final String? description;
  @override
  final double price;
  @override
  final String? billingMode;
  @override
  final String? icon;
  @override
  final bool? isActive;

  factory _$GsaveListingOptionVars(
          [void Function(GsaveListingOptionVarsBuilder)? updates]) =>
      (new GsaveListingOptionVarsBuilder()..update(updates))._build();

  _$GsaveListingOptionVars._(
      {required this.listId,
      this.slot,
      this.label,
      this.description,
      required this.price,
      this.billingMode,
      this.icon,
      this.isActive})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        listId, r'GsaveListingOptionVars', 'listId');
    BuiltValueNullFieldError.checkNotNull(
        price, r'GsaveListingOptionVars', 'price');
  }

  @override
  GsaveListingOptionVars rebuild(
          void Function(GsaveListingOptionVarsBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GsaveListingOptionVarsBuilder toBuilder() =>
      new GsaveListingOptionVarsBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GsaveListingOptionVars &&
        listId == other.listId &&
        slot == other.slot &&
        label == other.label &&
        description == other.description &&
        price == other.price &&
        billingMode == other.billingMode &&
        icon == other.icon &&
        isActive == other.isActive;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, listId.hashCode);
    _$hash = $jc(_$hash, slot.hashCode);
    _$hash = $jc(_$hash, label.hashCode);
    _$hash = $jc(_$hash, description.hashCode);
    _$hash = $jc(_$hash, price.hashCode);
    _$hash = $jc(_$hash, billingMode.hashCode);
    _$hash = $jc(_$hash, icon.hashCode);
    _$hash = $jc(_$hash, isActive.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'GsaveListingOptionVars')
          ..add('listId', listId)
          ..add('slot', slot)
          ..add('label', label)
          ..add('description', description)
          ..add('price', price)
          ..add('billingMode', billingMode)
          ..add('icon', icon)
          ..add('isActive', isActive))
        .toString();
  }
}

class GsaveListingOptionVarsBuilder
    implements Builder<GsaveListingOptionVars, GsaveListingOptionVarsBuilder> {
  _$GsaveListingOptionVars? _$v;

  int? _listId;
  int? get listId => _$this._listId;
  set listId(int? listId) => _$this._listId = listId;

  String? _slot;
  String? get slot => _$this._slot;
  set slot(String? slot) => _$this._slot = slot;

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

  String? _icon;
  String? get icon => _$this._icon;
  set icon(String? icon) => _$this._icon = icon;

  bool? _isActive;
  bool? get isActive => _$this._isActive;
  set isActive(bool? isActive) => _$this._isActive = isActive;

  GsaveListingOptionVarsBuilder();

  GsaveListingOptionVarsBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _listId = $v.listId;
      _slot = $v.slot;
      _label = $v.label;
      _description = $v.description;
      _price = $v.price;
      _billingMode = $v.billingMode;
      _icon = $v.icon;
      _isActive = $v.isActive;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GsaveListingOptionVars other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GsaveListingOptionVars;
  }

  @override
  void update(void Function(GsaveListingOptionVarsBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GsaveListingOptionVars build() => _build();

  _$GsaveListingOptionVars _build() {
    final _$result = _$v ??
        new _$GsaveListingOptionVars._(
            listId: BuiltValueNullFieldError.checkNotNull(
                listId, r'GsaveListingOptionVars', 'listId'),
            slot: slot,
            label: label,
            description: description,
            price: BuiltValueNullFieldError.checkNotNull(
                price, r'GsaveListingOptionVars', 'price'),
            billingMode: billingMode,
            icon: icon,
            isActive: isActive);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
