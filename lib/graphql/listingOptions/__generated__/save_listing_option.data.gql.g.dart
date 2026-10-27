// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'save_listing_option.data.gql.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<GsaveListingOptionData> _$gsaveListingOptionDataSerializer =
    new _$GsaveListingOptionDataSerializer();
Serializer<GsaveListingOptionData_saveListingOption>
    _$gsaveListingOptionDataSaveListingOptionSerializer =
    new _$GsaveListingOptionData_saveListingOptionSerializer();
Serializer<GsaveListingOptionData_saveListingOption_results>
    _$gsaveListingOptionDataSaveListingOptionResultsSerializer =
    new _$GsaveListingOptionData_saveListingOption_resultsSerializer();

class _$GsaveListingOptionDataSerializer
    implements StructuredSerializer<GsaveListingOptionData> {
  @override
  final Iterable<Type> types = const [
    GsaveListingOptionData,
    _$GsaveListingOptionData
  ];
  @override
  final String wireName = 'GsaveListingOptionData';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, GsaveListingOptionData object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      '__typename',
      serializers.serialize(object.G__typename,
          specifiedType: const FullType(String)),
    ];
    Object? value;
    value = object.saveListingOption;
    if (value != null) {
      result
        ..add('saveListingOption')
        ..add(serializers.serialize(value,
            specifiedType:
                const FullType(GsaveListingOptionData_saveListingOption)));
    }
    return result;
  }

  @override
  GsaveListingOptionData deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GsaveListingOptionDataBuilder();

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
        case 'saveListingOption':
          result.saveListingOption.replace(serializers.deserialize(value,
                  specifiedType:
                      const FullType(GsaveListingOptionData_saveListingOption))!
              as GsaveListingOptionData_saveListingOption);
          break;
      }
    }

    return result.build();
  }
}

class _$GsaveListingOptionData_saveListingOptionSerializer
    implements StructuredSerializer<GsaveListingOptionData_saveListingOption> {
  @override
  final Iterable<Type> types = const [
    GsaveListingOptionData_saveListingOption,
    _$GsaveListingOptionData_saveListingOption
  ];
  @override
  final String wireName = 'GsaveListingOptionData_saveListingOption';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, GsaveListingOptionData_saveListingOption object,
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
              const FullType.nullable(
                  GsaveListingOptionData_saveListingOption_results)
            ])));
    }
    return result;
  }

  @override
  GsaveListingOptionData_saveListingOption deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GsaveListingOptionData_saveListingOptionBuilder();

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
                    GsaveListingOptionData_saveListingOption_results)
              ]))! as BuiltList<Object?>);
          break;
      }
    }

    return result.build();
  }
}

class _$GsaveListingOptionData_saveListingOption_resultsSerializer
    implements
        StructuredSerializer<GsaveListingOptionData_saveListingOption_results> {
  @override
  final Iterable<Type> types = const [
    GsaveListingOptionData_saveListingOption_results,
    _$GsaveListingOptionData_saveListingOption_results
  ];
  @override
  final String wireName = 'GsaveListingOptionData_saveListingOption_results';

  @override
  Iterable<Object?> serialize(Serializers serializers,
      GsaveListingOptionData_saveListingOption_results object,
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
  GsaveListingOptionData_saveListingOption_results deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result =
        new GsaveListingOptionData_saveListingOption_resultsBuilder();

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

class _$GsaveListingOptionData extends GsaveListingOptionData {
  @override
  final String G__typename;
  @override
  final GsaveListingOptionData_saveListingOption? saveListingOption;

  factory _$GsaveListingOptionData(
          [void Function(GsaveListingOptionDataBuilder)? updates]) =>
      (new GsaveListingOptionDataBuilder()..update(updates))._build();

  _$GsaveListingOptionData._(
      {required this.G__typename, this.saveListingOption})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        G__typename, r'GsaveListingOptionData', 'G__typename');
  }

  @override
  GsaveListingOptionData rebuild(
          void Function(GsaveListingOptionDataBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GsaveListingOptionDataBuilder toBuilder() =>
      new GsaveListingOptionDataBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GsaveListingOptionData &&
        G__typename == other.G__typename &&
        saveListingOption == other.saveListingOption;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, G__typename.hashCode);
    _$hash = $jc(_$hash, saveListingOption.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'GsaveListingOptionData')
          ..add('G__typename', G__typename)
          ..add('saveListingOption', saveListingOption))
        .toString();
  }
}

class GsaveListingOptionDataBuilder
    implements Builder<GsaveListingOptionData, GsaveListingOptionDataBuilder> {
  _$GsaveListingOptionData? _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  GsaveListingOptionData_saveListingOptionBuilder? _saveListingOption;
  GsaveListingOptionData_saveListingOptionBuilder get saveListingOption =>
      _$this._saveListingOption ??=
          new GsaveListingOptionData_saveListingOptionBuilder();
  set saveListingOption(
          GsaveListingOptionData_saveListingOptionBuilder? saveListingOption) =>
      _$this._saveListingOption = saveListingOption;

  GsaveListingOptionDataBuilder() {
    GsaveListingOptionData._initializeBuilder(this);
  }

  GsaveListingOptionDataBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _G__typename = $v.G__typename;
      _saveListingOption = $v.saveListingOption?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GsaveListingOptionData other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GsaveListingOptionData;
  }

  @override
  void update(void Function(GsaveListingOptionDataBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GsaveListingOptionData build() => _build();

  _$GsaveListingOptionData _build() {
    _$GsaveListingOptionData _$result;
    try {
      _$result = _$v ??
          new _$GsaveListingOptionData._(
              G__typename: BuiltValueNullFieldError.checkNotNull(
                  G__typename, r'GsaveListingOptionData', 'G__typename'),
              saveListingOption: _saveListingOption?.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'saveListingOption';
        _saveListingOption?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'GsaveListingOptionData', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

class _$GsaveListingOptionData_saveListingOption
    extends GsaveListingOptionData_saveListingOption {
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
  final BuiltList<GsaveListingOptionData_saveListingOption_results?>? results;

  factory _$GsaveListingOptionData_saveListingOption(
          [void Function(GsaveListingOptionData_saveListingOptionBuilder)?
              updates]) =>
      (new GsaveListingOptionData_saveListingOptionBuilder()..update(updates))
          ._build();

  _$GsaveListingOptionData_saveListingOption._(
      {required this.G__typename,
      this.status,
      this.errorMessage,
      this.maxCustom,
      this.customCount,
      this.results})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(G__typename,
        r'GsaveListingOptionData_saveListingOption', 'G__typename');
  }

  @override
  GsaveListingOptionData_saveListingOption rebuild(
          void Function(GsaveListingOptionData_saveListingOptionBuilder)
              updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GsaveListingOptionData_saveListingOptionBuilder toBuilder() =>
      new GsaveListingOptionData_saveListingOptionBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GsaveListingOptionData_saveListingOption &&
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
    return (newBuiltValueToStringHelper(
            r'GsaveListingOptionData_saveListingOption')
          ..add('G__typename', G__typename)
          ..add('status', status)
          ..add('errorMessage', errorMessage)
          ..add('maxCustom', maxCustom)
          ..add('customCount', customCount)
          ..add('results', results))
        .toString();
  }
}

class GsaveListingOptionData_saveListingOptionBuilder
    implements
        Builder<GsaveListingOptionData_saveListingOption,
            GsaveListingOptionData_saveListingOptionBuilder> {
  _$GsaveListingOptionData_saveListingOption? _$v;

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

  ListBuilder<GsaveListingOptionData_saveListingOption_results?>? _results;
  ListBuilder<GsaveListingOptionData_saveListingOption_results?> get results =>
      _$this._results ??=
          new ListBuilder<GsaveListingOptionData_saveListingOption_results?>();
  set results(
          ListBuilder<GsaveListingOptionData_saveListingOption_results?>?
              results) =>
      _$this._results = results;

  GsaveListingOptionData_saveListingOptionBuilder() {
    GsaveListingOptionData_saveListingOption._initializeBuilder(this);
  }

  GsaveListingOptionData_saveListingOptionBuilder get _$this {
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
  void replace(GsaveListingOptionData_saveListingOption other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GsaveListingOptionData_saveListingOption;
  }

  @override
  void update(
      void Function(GsaveListingOptionData_saveListingOptionBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GsaveListingOptionData_saveListingOption build() => _build();

  _$GsaveListingOptionData_saveListingOption _build() {
    _$GsaveListingOptionData_saveListingOption _$result;
    try {
      _$result = _$v ??
          new _$GsaveListingOptionData_saveListingOption._(
              G__typename: BuiltValueNullFieldError.checkNotNull(G__typename,
                  r'GsaveListingOptionData_saveListingOption', 'G__typename'),
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
            r'GsaveListingOptionData_saveListingOption',
            _$failedField,
            e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

class _$GsaveListingOptionData_saveListingOption_results
    extends GsaveListingOptionData_saveListingOption_results {
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

  factory _$GsaveListingOptionData_saveListingOption_results(
          [void Function(
                  GsaveListingOptionData_saveListingOption_resultsBuilder)?
              updates]) =>
      (new GsaveListingOptionData_saveListingOption_resultsBuilder()
            ..update(updates))
          ._build();

  _$GsaveListingOptionData_saveListingOption_results._(
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
        r'GsaveListingOptionData_saveListingOption_results', 'G__typename');
  }

  @override
  GsaveListingOptionData_saveListingOption_results rebuild(
          void Function(GsaveListingOptionData_saveListingOption_resultsBuilder)
              updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GsaveListingOptionData_saveListingOption_resultsBuilder toBuilder() =>
      new GsaveListingOptionData_saveListingOption_resultsBuilder()
        ..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GsaveListingOptionData_saveListingOption_results &&
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
            r'GsaveListingOptionData_saveListingOption_results')
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

class GsaveListingOptionData_saveListingOption_resultsBuilder
    implements
        Builder<GsaveListingOptionData_saveListingOption_results,
            GsaveListingOptionData_saveListingOption_resultsBuilder> {
  _$GsaveListingOptionData_saveListingOption_results? _$v;

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

  GsaveListingOptionData_saveListingOption_resultsBuilder() {
    GsaveListingOptionData_saveListingOption_results._initializeBuilder(this);
  }

  GsaveListingOptionData_saveListingOption_resultsBuilder get _$this {
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
  void replace(GsaveListingOptionData_saveListingOption_results other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GsaveListingOptionData_saveListingOption_results;
  }

  @override
  void update(
      void Function(GsaveListingOptionData_saveListingOption_resultsBuilder)?
          updates) {
    if (updates != null) updates(this);
  }

  @override
  GsaveListingOptionData_saveListingOption_results build() => _build();

  _$GsaveListingOptionData_saveListingOption_results _build() {
    final _$result = _$v ??
        new _$GsaveListingOptionData_saveListingOption_results._(
            G__typename: BuiltValueNullFieldError.checkNotNull(
                G__typename,
                r'GsaveListingOptionData_saveListingOption_results',
                'G__typename'),
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
