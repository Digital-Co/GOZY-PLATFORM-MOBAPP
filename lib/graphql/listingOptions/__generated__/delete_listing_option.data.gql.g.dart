// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'delete_listing_option.data.gql.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<GdeleteListingOptionData> _$gdeleteListingOptionDataSerializer =
    new _$GdeleteListingOptionDataSerializer();
Serializer<GdeleteListingOptionData_deleteListingOption>
    _$gdeleteListingOptionDataDeleteListingOptionSerializer =
    new _$GdeleteListingOptionData_deleteListingOptionSerializer();
Serializer<GdeleteListingOptionData_deleteListingOption_results>
    _$gdeleteListingOptionDataDeleteListingOptionResultsSerializer =
    new _$GdeleteListingOptionData_deleteListingOption_resultsSerializer();

class _$GdeleteListingOptionDataSerializer
    implements StructuredSerializer<GdeleteListingOptionData> {
  @override
  final Iterable<Type> types = const [
    GdeleteListingOptionData,
    _$GdeleteListingOptionData
  ];
  @override
  final String wireName = 'GdeleteListingOptionData';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, GdeleteListingOptionData object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      '__typename',
      serializers.serialize(object.G__typename,
          specifiedType: const FullType(String)),
    ];
    Object? value;
    value = object.deleteListingOption;
    if (value != null) {
      result
        ..add('deleteListingOption')
        ..add(serializers.serialize(value,
            specifiedType:
                const FullType(GdeleteListingOptionData_deleteListingOption)));
    }
    return result;
  }

  @override
  GdeleteListingOptionData deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GdeleteListingOptionDataBuilder();

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
        case 'deleteListingOption':
          result.deleteListingOption.replace(serializers.deserialize(value,
                  specifiedType: const FullType(
                      GdeleteListingOptionData_deleteListingOption))!
              as GdeleteListingOptionData_deleteListingOption);
          break;
      }
    }

    return result.build();
  }
}

class _$GdeleteListingOptionData_deleteListingOptionSerializer
    implements
        StructuredSerializer<GdeleteListingOptionData_deleteListingOption> {
  @override
  final Iterable<Type> types = const [
    GdeleteListingOptionData_deleteListingOption,
    _$GdeleteListingOptionData_deleteListingOption
  ];
  @override
  final String wireName = 'GdeleteListingOptionData_deleteListingOption';

  @override
  Iterable<Object?> serialize(Serializers serializers,
      GdeleteListingOptionData_deleteListingOption object,
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
                  GdeleteListingOptionData_deleteListingOption_results)
            ])));
    }
    return result;
  }

  @override
  GdeleteListingOptionData_deleteListingOption deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GdeleteListingOptionData_deleteListingOptionBuilder();

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
                    GdeleteListingOptionData_deleteListingOption_results)
              ]))! as BuiltList<Object?>);
          break;
      }
    }

    return result.build();
  }
}

class _$GdeleteListingOptionData_deleteListingOption_resultsSerializer
    implements
        StructuredSerializer<
            GdeleteListingOptionData_deleteListingOption_results> {
  @override
  final Iterable<Type> types = const [
    GdeleteListingOptionData_deleteListingOption_results,
    _$GdeleteListingOptionData_deleteListingOption_results
  ];
  @override
  final String wireName =
      'GdeleteListingOptionData_deleteListingOption_results';

  @override
  Iterable<Object?> serialize(Serializers serializers,
      GdeleteListingOptionData_deleteListingOption_results object,
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
  GdeleteListingOptionData_deleteListingOption_results deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result =
        new GdeleteListingOptionData_deleteListingOption_resultsBuilder();

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

class _$GdeleteListingOptionData extends GdeleteListingOptionData {
  @override
  final String G__typename;
  @override
  final GdeleteListingOptionData_deleteListingOption? deleteListingOption;

  factory _$GdeleteListingOptionData(
          [void Function(GdeleteListingOptionDataBuilder)? updates]) =>
      (new GdeleteListingOptionDataBuilder()..update(updates))._build();

  _$GdeleteListingOptionData._(
      {required this.G__typename, this.deleteListingOption})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        G__typename, r'GdeleteListingOptionData', 'G__typename');
  }

  @override
  GdeleteListingOptionData rebuild(
          void Function(GdeleteListingOptionDataBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GdeleteListingOptionDataBuilder toBuilder() =>
      new GdeleteListingOptionDataBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GdeleteListingOptionData &&
        G__typename == other.G__typename &&
        deleteListingOption == other.deleteListingOption;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, G__typename.hashCode);
    _$hash = $jc(_$hash, deleteListingOption.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'GdeleteListingOptionData')
          ..add('G__typename', G__typename)
          ..add('deleteListingOption', deleteListingOption))
        .toString();
  }
}

class GdeleteListingOptionDataBuilder
    implements
        Builder<GdeleteListingOptionData, GdeleteListingOptionDataBuilder> {
  _$GdeleteListingOptionData? _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  GdeleteListingOptionData_deleteListingOptionBuilder? _deleteListingOption;
  GdeleteListingOptionData_deleteListingOptionBuilder get deleteListingOption =>
      _$this._deleteListingOption ??=
          new GdeleteListingOptionData_deleteListingOptionBuilder();
  set deleteListingOption(
          GdeleteListingOptionData_deleteListingOptionBuilder?
              deleteListingOption) =>
      _$this._deleteListingOption = deleteListingOption;

  GdeleteListingOptionDataBuilder() {
    GdeleteListingOptionData._initializeBuilder(this);
  }

  GdeleteListingOptionDataBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _G__typename = $v.G__typename;
      _deleteListingOption = $v.deleteListingOption?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GdeleteListingOptionData other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GdeleteListingOptionData;
  }

  @override
  void update(void Function(GdeleteListingOptionDataBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GdeleteListingOptionData build() => _build();

  _$GdeleteListingOptionData _build() {
    _$GdeleteListingOptionData _$result;
    try {
      _$result = _$v ??
          new _$GdeleteListingOptionData._(
              G__typename: BuiltValueNullFieldError.checkNotNull(
                  G__typename, r'GdeleteListingOptionData', 'G__typename'),
              deleteListingOption: _deleteListingOption?.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'deleteListingOption';
        _deleteListingOption?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'GdeleteListingOptionData', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

class _$GdeleteListingOptionData_deleteListingOption
    extends GdeleteListingOptionData_deleteListingOption {
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
  final BuiltList<GdeleteListingOptionData_deleteListingOption_results?>?
      results;

  factory _$GdeleteListingOptionData_deleteListingOption(
          [void Function(GdeleteListingOptionData_deleteListingOptionBuilder)?
              updates]) =>
      (new GdeleteListingOptionData_deleteListingOptionBuilder()
            ..update(updates))
          ._build();

  _$GdeleteListingOptionData_deleteListingOption._(
      {required this.G__typename,
      this.status,
      this.errorMessage,
      this.maxCustom,
      this.customCount,
      this.results})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(G__typename,
        r'GdeleteListingOptionData_deleteListingOption', 'G__typename');
  }

  @override
  GdeleteListingOptionData_deleteListingOption rebuild(
          void Function(GdeleteListingOptionData_deleteListingOptionBuilder)
              updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GdeleteListingOptionData_deleteListingOptionBuilder toBuilder() =>
      new GdeleteListingOptionData_deleteListingOptionBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GdeleteListingOptionData_deleteListingOption &&
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
            r'GdeleteListingOptionData_deleteListingOption')
          ..add('G__typename', G__typename)
          ..add('status', status)
          ..add('errorMessage', errorMessage)
          ..add('maxCustom', maxCustom)
          ..add('customCount', customCount)
          ..add('results', results))
        .toString();
  }
}

class GdeleteListingOptionData_deleteListingOptionBuilder
    implements
        Builder<GdeleteListingOptionData_deleteListingOption,
            GdeleteListingOptionData_deleteListingOptionBuilder> {
  _$GdeleteListingOptionData_deleteListingOption? _$v;

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

  ListBuilder<GdeleteListingOptionData_deleteListingOption_results?>? _results;
  ListBuilder<GdeleteListingOptionData_deleteListingOption_results?>
      get results => _$this._results ??= new ListBuilder<
          GdeleteListingOptionData_deleteListingOption_results?>();
  set results(
          ListBuilder<GdeleteListingOptionData_deleteListingOption_results?>?
              results) =>
      _$this._results = results;

  GdeleteListingOptionData_deleteListingOptionBuilder() {
    GdeleteListingOptionData_deleteListingOption._initializeBuilder(this);
  }

  GdeleteListingOptionData_deleteListingOptionBuilder get _$this {
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
  void replace(GdeleteListingOptionData_deleteListingOption other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GdeleteListingOptionData_deleteListingOption;
  }

  @override
  void update(
      void Function(GdeleteListingOptionData_deleteListingOptionBuilder)?
          updates) {
    if (updates != null) updates(this);
  }

  @override
  GdeleteListingOptionData_deleteListingOption build() => _build();

  _$GdeleteListingOptionData_deleteListingOption _build() {
    _$GdeleteListingOptionData_deleteListingOption _$result;
    try {
      _$result = _$v ??
          new _$GdeleteListingOptionData_deleteListingOption._(
              G__typename: BuiltValueNullFieldError.checkNotNull(
                  G__typename,
                  r'GdeleteListingOptionData_deleteListingOption',
                  'G__typename'),
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
            r'GdeleteListingOptionData_deleteListingOption',
            _$failedField,
            e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

class _$GdeleteListingOptionData_deleteListingOption_results
    extends GdeleteListingOptionData_deleteListingOption_results {
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

  factory _$GdeleteListingOptionData_deleteListingOption_results(
          [void Function(
                  GdeleteListingOptionData_deleteListingOption_resultsBuilder)?
              updates]) =>
      (new GdeleteListingOptionData_deleteListingOption_resultsBuilder()
            ..update(updates))
          ._build();

  _$GdeleteListingOptionData_deleteListingOption_results._(
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
        r'GdeleteListingOptionData_deleteListingOption_results', 'G__typename');
  }

  @override
  GdeleteListingOptionData_deleteListingOption_results rebuild(
          void Function(
                  GdeleteListingOptionData_deleteListingOption_resultsBuilder)
              updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GdeleteListingOptionData_deleteListingOption_resultsBuilder toBuilder() =>
      new GdeleteListingOptionData_deleteListingOption_resultsBuilder()
        ..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GdeleteListingOptionData_deleteListingOption_results &&
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
            r'GdeleteListingOptionData_deleteListingOption_results')
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

class GdeleteListingOptionData_deleteListingOption_resultsBuilder
    implements
        Builder<GdeleteListingOptionData_deleteListingOption_results,
            GdeleteListingOptionData_deleteListingOption_resultsBuilder> {
  _$GdeleteListingOptionData_deleteListingOption_results? _$v;

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

  GdeleteListingOptionData_deleteListingOption_resultsBuilder() {
    GdeleteListingOptionData_deleteListingOption_results._initializeBuilder(
        this);
  }

  GdeleteListingOptionData_deleteListingOption_resultsBuilder get _$this {
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
  void replace(GdeleteListingOptionData_deleteListingOption_results other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GdeleteListingOptionData_deleteListingOption_results;
  }

  @override
  void update(
      void Function(
              GdeleteListingOptionData_deleteListingOption_resultsBuilder)?
          updates) {
    if (updates != null) updates(this);
  }

  @override
  GdeleteListingOptionData_deleteListingOption_results build() => _build();

  _$GdeleteListingOptionData_deleteListingOption_results _build() {
    final _$result = _$v ??
        new _$GdeleteListingOptionData_deleteListingOption_results._(
            G__typename: BuiltValueNullFieldError.checkNotNull(
                G__typename,
                r'GdeleteListingOptionData_deleteListingOption_results',
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
