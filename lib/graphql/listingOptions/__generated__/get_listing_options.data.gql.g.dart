// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'get_listing_options.data.gql.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<GgetListingOptionsData> _$ggetListingOptionsDataSerializer =
    new _$GgetListingOptionsDataSerializer();
Serializer<GgetListingOptionsData_getListingOptions>
    _$ggetListingOptionsDataGetListingOptionsSerializer =
    new _$GgetListingOptionsData_getListingOptionsSerializer();
Serializer<GgetListingOptionsData_getListingOptions_results>
    _$ggetListingOptionsDataGetListingOptionsResultsSerializer =
    new _$GgetListingOptionsData_getListingOptions_resultsSerializer();

class _$GgetListingOptionsDataSerializer
    implements StructuredSerializer<GgetListingOptionsData> {
  @override
  final Iterable<Type> types = const [
    GgetListingOptionsData,
    _$GgetListingOptionsData
  ];
  @override
  final String wireName = 'GgetListingOptionsData';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, GgetListingOptionsData object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      '__typename',
      serializers.serialize(object.G__typename,
          specifiedType: const FullType(String)),
    ];
    Object? value;
    value = object.getListingOptions;
    if (value != null) {
      result
        ..add('getListingOptions')
        ..add(serializers.serialize(value,
            specifiedType:
                const FullType(GgetListingOptionsData_getListingOptions)));
    }
    return result;
  }

  @override
  GgetListingOptionsData deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GgetListingOptionsDataBuilder();

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
        case 'getListingOptions':
          result.getListingOptions.replace(serializers.deserialize(value,
                  specifiedType:
                      const FullType(GgetListingOptionsData_getListingOptions))!
              as GgetListingOptionsData_getListingOptions);
          break;
      }
    }

    return result.build();
  }
}

class _$GgetListingOptionsData_getListingOptionsSerializer
    implements StructuredSerializer<GgetListingOptionsData_getListingOptions> {
  @override
  final Iterable<Type> types = const [
    GgetListingOptionsData_getListingOptions,
    _$GgetListingOptionsData_getListingOptions
  ];
  @override
  final String wireName = 'GgetListingOptionsData_getListingOptions';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, GgetListingOptionsData_getListingOptions object,
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
                  GgetListingOptionsData_getListingOptions_results)
            ])));
    }
    return result;
  }

  @override
  GgetListingOptionsData_getListingOptions deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GgetListingOptionsData_getListingOptionsBuilder();

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
                    GgetListingOptionsData_getListingOptions_results)
              ]))! as BuiltList<Object?>);
          break;
      }
    }

    return result.build();
  }
}

class _$GgetListingOptionsData_getListingOptions_resultsSerializer
    implements
        StructuredSerializer<GgetListingOptionsData_getListingOptions_results> {
  @override
  final Iterable<Type> types = const [
    GgetListingOptionsData_getListingOptions_results,
    _$GgetListingOptionsData_getListingOptions_results
  ];
  @override
  final String wireName = 'GgetListingOptionsData_getListingOptions_results';

  @override
  Iterable<Object?> serialize(Serializers serializers,
      GgetListingOptionsData_getListingOptions_results object,
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
  GgetListingOptionsData_getListingOptions_results deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result =
        new GgetListingOptionsData_getListingOptions_resultsBuilder();

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

class _$GgetListingOptionsData extends GgetListingOptionsData {
  @override
  final String G__typename;
  @override
  final GgetListingOptionsData_getListingOptions? getListingOptions;

  factory _$GgetListingOptionsData(
          [void Function(GgetListingOptionsDataBuilder)? updates]) =>
      (new GgetListingOptionsDataBuilder()..update(updates))._build();

  _$GgetListingOptionsData._(
      {required this.G__typename, this.getListingOptions})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        G__typename, r'GgetListingOptionsData', 'G__typename');
  }

  @override
  GgetListingOptionsData rebuild(
          void Function(GgetListingOptionsDataBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GgetListingOptionsDataBuilder toBuilder() =>
      new GgetListingOptionsDataBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GgetListingOptionsData &&
        G__typename == other.G__typename &&
        getListingOptions == other.getListingOptions;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, G__typename.hashCode);
    _$hash = $jc(_$hash, getListingOptions.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'GgetListingOptionsData')
          ..add('G__typename', G__typename)
          ..add('getListingOptions', getListingOptions))
        .toString();
  }
}

class GgetListingOptionsDataBuilder
    implements Builder<GgetListingOptionsData, GgetListingOptionsDataBuilder> {
  _$GgetListingOptionsData? _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  GgetListingOptionsData_getListingOptionsBuilder? _getListingOptions;
  GgetListingOptionsData_getListingOptionsBuilder get getListingOptions =>
      _$this._getListingOptions ??=
          new GgetListingOptionsData_getListingOptionsBuilder();
  set getListingOptions(
          GgetListingOptionsData_getListingOptionsBuilder? getListingOptions) =>
      _$this._getListingOptions = getListingOptions;

  GgetListingOptionsDataBuilder() {
    GgetListingOptionsData._initializeBuilder(this);
  }

  GgetListingOptionsDataBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _G__typename = $v.G__typename;
      _getListingOptions = $v.getListingOptions?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GgetListingOptionsData other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GgetListingOptionsData;
  }

  @override
  void update(void Function(GgetListingOptionsDataBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GgetListingOptionsData build() => _build();

  _$GgetListingOptionsData _build() {
    _$GgetListingOptionsData _$result;
    try {
      _$result = _$v ??
          new _$GgetListingOptionsData._(
              G__typename: BuiltValueNullFieldError.checkNotNull(
                  G__typename, r'GgetListingOptionsData', 'G__typename'),
              getListingOptions: _getListingOptions?.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'getListingOptions';
        _getListingOptions?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'GgetListingOptionsData', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

class _$GgetListingOptionsData_getListingOptions
    extends GgetListingOptionsData_getListingOptions {
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
  final BuiltList<GgetListingOptionsData_getListingOptions_results?>? results;

  factory _$GgetListingOptionsData_getListingOptions(
          [void Function(GgetListingOptionsData_getListingOptionsBuilder)?
              updates]) =>
      (new GgetListingOptionsData_getListingOptionsBuilder()..update(updates))
          ._build();

  _$GgetListingOptionsData_getListingOptions._(
      {required this.G__typename,
      this.status,
      this.errorMessage,
      this.maxCustom,
      this.customCount,
      this.results})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(G__typename,
        r'GgetListingOptionsData_getListingOptions', 'G__typename');
  }

  @override
  GgetListingOptionsData_getListingOptions rebuild(
          void Function(GgetListingOptionsData_getListingOptionsBuilder)
              updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GgetListingOptionsData_getListingOptionsBuilder toBuilder() =>
      new GgetListingOptionsData_getListingOptionsBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GgetListingOptionsData_getListingOptions &&
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
            r'GgetListingOptionsData_getListingOptions')
          ..add('G__typename', G__typename)
          ..add('status', status)
          ..add('errorMessage', errorMessage)
          ..add('maxCustom', maxCustom)
          ..add('customCount', customCount)
          ..add('results', results))
        .toString();
  }
}

class GgetListingOptionsData_getListingOptionsBuilder
    implements
        Builder<GgetListingOptionsData_getListingOptions,
            GgetListingOptionsData_getListingOptionsBuilder> {
  _$GgetListingOptionsData_getListingOptions? _$v;

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

  ListBuilder<GgetListingOptionsData_getListingOptions_results?>? _results;
  ListBuilder<GgetListingOptionsData_getListingOptions_results?> get results =>
      _$this._results ??=
          new ListBuilder<GgetListingOptionsData_getListingOptions_results?>();
  set results(
          ListBuilder<GgetListingOptionsData_getListingOptions_results?>?
              results) =>
      _$this._results = results;

  GgetListingOptionsData_getListingOptionsBuilder() {
    GgetListingOptionsData_getListingOptions._initializeBuilder(this);
  }

  GgetListingOptionsData_getListingOptionsBuilder get _$this {
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
  void replace(GgetListingOptionsData_getListingOptions other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GgetListingOptionsData_getListingOptions;
  }

  @override
  void update(
      void Function(GgetListingOptionsData_getListingOptionsBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GgetListingOptionsData_getListingOptions build() => _build();

  _$GgetListingOptionsData_getListingOptions _build() {
    _$GgetListingOptionsData_getListingOptions _$result;
    try {
      _$result = _$v ??
          new _$GgetListingOptionsData_getListingOptions._(
              G__typename: BuiltValueNullFieldError.checkNotNull(G__typename,
                  r'GgetListingOptionsData_getListingOptions', 'G__typename'),
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
            r'GgetListingOptionsData_getListingOptions',
            _$failedField,
            e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

class _$GgetListingOptionsData_getListingOptions_results
    extends GgetListingOptionsData_getListingOptions_results {
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

  factory _$GgetListingOptionsData_getListingOptions_results(
          [void Function(
                  GgetListingOptionsData_getListingOptions_resultsBuilder)?
              updates]) =>
      (new GgetListingOptionsData_getListingOptions_resultsBuilder()
            ..update(updates))
          ._build();

  _$GgetListingOptionsData_getListingOptions_results._(
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
        r'GgetListingOptionsData_getListingOptions_results', 'G__typename');
  }

  @override
  GgetListingOptionsData_getListingOptions_results rebuild(
          void Function(GgetListingOptionsData_getListingOptions_resultsBuilder)
              updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GgetListingOptionsData_getListingOptions_resultsBuilder toBuilder() =>
      new GgetListingOptionsData_getListingOptions_resultsBuilder()
        ..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GgetListingOptionsData_getListingOptions_results &&
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
            r'GgetListingOptionsData_getListingOptions_results')
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

class GgetListingOptionsData_getListingOptions_resultsBuilder
    implements
        Builder<GgetListingOptionsData_getListingOptions_results,
            GgetListingOptionsData_getListingOptions_resultsBuilder> {
  _$GgetListingOptionsData_getListingOptions_results? _$v;

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

  GgetListingOptionsData_getListingOptions_resultsBuilder() {
    GgetListingOptionsData_getListingOptions_results._initializeBuilder(this);
  }

  GgetListingOptionsData_getListingOptions_resultsBuilder get _$this {
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
  void replace(GgetListingOptionsData_getListingOptions_results other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GgetListingOptionsData_getListingOptions_results;
  }

  @override
  void update(
      void Function(GgetListingOptionsData_getListingOptions_resultsBuilder)?
          updates) {
    if (updates != null) updates(this);
  }

  @override
  GgetListingOptionsData_getListingOptions_results build() => _build();

  _$GgetListingOptionsData_getListingOptions_results _build() {
    final _$result = _$v ??
        new _$GgetListingOptionsData_getListingOptions_results._(
            G__typename: BuiltValueNullFieldError.checkNotNull(
                G__typename,
                r'GgetListingOptionsData_getListingOptions_results',
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
