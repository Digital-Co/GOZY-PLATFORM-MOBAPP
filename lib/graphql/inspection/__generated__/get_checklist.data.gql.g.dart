// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'get_checklist.data.gql.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<GgetChecklistData> _$ggetChecklistDataSerializer =
    new _$GgetChecklistDataSerializer();
Serializer<GgetChecklistData_getChecklist>
    _$ggetChecklistDataGetChecklistSerializer =
    new _$GgetChecklistData_getChecklistSerializer();
Serializer<GgetChecklistData_getChecklist_results>
    _$ggetChecklistDataGetChecklistResultsSerializer =
    new _$GgetChecklistData_getChecklist_resultsSerializer();

class _$GgetChecklistDataSerializer
    implements StructuredSerializer<GgetChecklistData> {
  @override
  final Iterable<Type> types = const [GgetChecklistData, _$GgetChecklistData];
  @override
  final String wireName = 'GgetChecklistData';

  @override
  Iterable<Object?> serialize(Serializers serializers, GgetChecklistData object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      '__typename',
      serializers.serialize(object.G__typename,
          specifiedType: const FullType(String)),
    ];
    Object? value;
    value = object.getChecklist;
    if (value != null) {
      result
        ..add('getChecklist')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(GgetChecklistData_getChecklist)));
    }
    return result;
  }

  @override
  GgetChecklistData deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GgetChecklistDataBuilder();

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
        case 'getChecklist':
          result.getChecklist.replace(serializers.deserialize(value,
                  specifiedType:
                      const FullType(GgetChecklistData_getChecklist))!
              as GgetChecklistData_getChecklist);
          break;
      }
    }

    return result.build();
  }
}

class _$GgetChecklistData_getChecklistSerializer
    implements StructuredSerializer<GgetChecklistData_getChecklist> {
  @override
  final Iterable<Type> types = const [
    GgetChecklistData_getChecklist,
    _$GgetChecklistData_getChecklist
  ];
  @override
  final String wireName = 'GgetChecklistData_getChecklist';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, GgetChecklistData_getChecklist object,
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
    value = object.results;
    if (value != null) {
      result
        ..add('results')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(BuiltList, const [
              const FullType.nullable(GgetChecklistData_getChecklist_results)
            ])));
    }
    return result;
  }

  @override
  GgetChecklistData_getChecklist deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GgetChecklistData_getChecklistBuilder();

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
        case 'results':
          result.results.replace(serializers.deserialize(value,
              specifiedType: const FullType(BuiltList, const [
                const FullType.nullable(GgetChecklistData_getChecklist_results)
              ]))! as BuiltList<Object?>);
          break;
      }
    }

    return result.build();
  }
}

class _$GgetChecklistData_getChecklist_resultsSerializer
    implements StructuredSerializer<GgetChecklistData_getChecklist_results> {
  @override
  final Iterable<Type> types = const [
    GgetChecklistData_getChecklist_results,
    _$GgetChecklistData_getChecklist_results
  ];
  @override
  final String wireName = 'GgetChecklistData_getChecklist_results';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, GgetChecklistData_getChecklist_results object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      '__typename',
      serializers.serialize(object.G__typename,
          specifiedType: const FullType(String)),
    ];
    Object? value;
    value = object.key;
    if (value != null) {
      result
        ..add('key')
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
    value = object.required;
    if (value != null) {
      result
        ..add('required')
        ..add(
            serializers.serialize(value, specifiedType: const FullType(bool)));
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
  GgetChecklistData_getChecklist_results deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GgetChecklistData_getChecklist_resultsBuilder();

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
        case 'key':
          result.key = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'labelKey':
          result.labelKey = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'required':
          result.required = serializers.deserialize(value,
              specifiedType: const FullType(bool)) as bool?;
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

class _$GgetChecklistData extends GgetChecklistData {
  @override
  final String G__typename;
  @override
  final GgetChecklistData_getChecklist? getChecklist;

  factory _$GgetChecklistData(
          [void Function(GgetChecklistDataBuilder)? updates]) =>
      (new GgetChecklistDataBuilder()..update(updates))._build();

  _$GgetChecklistData._({required this.G__typename, this.getChecklist})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        G__typename, r'GgetChecklistData', 'G__typename');
  }

  @override
  GgetChecklistData rebuild(void Function(GgetChecklistDataBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GgetChecklistDataBuilder toBuilder() =>
      new GgetChecklistDataBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GgetChecklistData &&
        G__typename == other.G__typename &&
        getChecklist == other.getChecklist;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, G__typename.hashCode);
    _$hash = $jc(_$hash, getChecklist.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'GgetChecklistData')
          ..add('G__typename', G__typename)
          ..add('getChecklist', getChecklist))
        .toString();
  }
}

class GgetChecklistDataBuilder
    implements Builder<GgetChecklistData, GgetChecklistDataBuilder> {
  _$GgetChecklistData? _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  GgetChecklistData_getChecklistBuilder? _getChecklist;
  GgetChecklistData_getChecklistBuilder get getChecklist =>
      _$this._getChecklist ??= new GgetChecklistData_getChecklistBuilder();
  set getChecklist(GgetChecklistData_getChecklistBuilder? getChecklist) =>
      _$this._getChecklist = getChecklist;

  GgetChecklistDataBuilder() {
    GgetChecklistData._initializeBuilder(this);
  }

  GgetChecklistDataBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _G__typename = $v.G__typename;
      _getChecklist = $v.getChecklist?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GgetChecklistData other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GgetChecklistData;
  }

  @override
  void update(void Function(GgetChecklistDataBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GgetChecklistData build() => _build();

  _$GgetChecklistData _build() {
    _$GgetChecklistData _$result;
    try {
      _$result = _$v ??
          new _$GgetChecklistData._(
              G__typename: BuiltValueNullFieldError.checkNotNull(
                  G__typename, r'GgetChecklistData', 'G__typename'),
              getChecklist: _getChecklist?.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'getChecklist';
        _getChecklist?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'GgetChecklistData', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

class _$GgetChecklistData_getChecklist extends GgetChecklistData_getChecklist {
  @override
  final String G__typename;
  @override
  final int? status;
  @override
  final String? errorMessage;
  @override
  final BuiltList<GgetChecklistData_getChecklist_results?>? results;

  factory _$GgetChecklistData_getChecklist(
          [void Function(GgetChecklistData_getChecklistBuilder)? updates]) =>
      (new GgetChecklistData_getChecklistBuilder()..update(updates))._build();

  _$GgetChecklistData_getChecklist._(
      {required this.G__typename, this.status, this.errorMessage, this.results})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        G__typename, r'GgetChecklistData_getChecklist', 'G__typename');
  }

  @override
  GgetChecklistData_getChecklist rebuild(
          void Function(GgetChecklistData_getChecklistBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GgetChecklistData_getChecklistBuilder toBuilder() =>
      new GgetChecklistData_getChecklistBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GgetChecklistData_getChecklist &&
        G__typename == other.G__typename &&
        status == other.status &&
        errorMessage == other.errorMessage &&
        results == other.results;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, G__typename.hashCode);
    _$hash = $jc(_$hash, status.hashCode);
    _$hash = $jc(_$hash, errorMessage.hashCode);
    _$hash = $jc(_$hash, results.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'GgetChecklistData_getChecklist')
          ..add('G__typename', G__typename)
          ..add('status', status)
          ..add('errorMessage', errorMessage)
          ..add('results', results))
        .toString();
  }
}

class GgetChecklistData_getChecklistBuilder
    implements
        Builder<GgetChecklistData_getChecklist,
            GgetChecklistData_getChecklistBuilder> {
  _$GgetChecklistData_getChecklist? _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  int? _status;
  int? get status => _$this._status;
  set status(int? status) => _$this._status = status;

  String? _errorMessage;
  String? get errorMessage => _$this._errorMessage;
  set errorMessage(String? errorMessage) => _$this._errorMessage = errorMessage;

  ListBuilder<GgetChecklistData_getChecklist_results?>? _results;
  ListBuilder<GgetChecklistData_getChecklist_results?> get results =>
      _$this._results ??=
          new ListBuilder<GgetChecklistData_getChecklist_results?>();
  set results(ListBuilder<GgetChecklistData_getChecklist_results?>? results) =>
      _$this._results = results;

  GgetChecklistData_getChecklistBuilder() {
    GgetChecklistData_getChecklist._initializeBuilder(this);
  }

  GgetChecklistData_getChecklistBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _G__typename = $v.G__typename;
      _status = $v.status;
      _errorMessage = $v.errorMessage;
      _results = $v.results?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GgetChecklistData_getChecklist other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GgetChecklistData_getChecklist;
  }

  @override
  void update(void Function(GgetChecklistData_getChecklistBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GgetChecklistData_getChecklist build() => _build();

  _$GgetChecklistData_getChecklist _build() {
    _$GgetChecklistData_getChecklist _$result;
    try {
      _$result = _$v ??
          new _$GgetChecklistData_getChecklist._(
              G__typename: BuiltValueNullFieldError.checkNotNull(G__typename,
                  r'GgetChecklistData_getChecklist', 'G__typename'),
              status: status,
              errorMessage: errorMessage,
              results: _results?.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'results';
        _results?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'GgetChecklistData_getChecklist', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

class _$GgetChecklistData_getChecklist_results
    extends GgetChecklistData_getChecklist_results {
  @override
  final String G__typename;
  @override
  final String? key;
  @override
  final String? labelKey;
  @override
  final bool? required;
  @override
  final int? sortOrder;

  factory _$GgetChecklistData_getChecklist_results(
          [void Function(GgetChecklistData_getChecklist_resultsBuilder)?
              updates]) =>
      (new GgetChecklistData_getChecklist_resultsBuilder()..update(updates))
          ._build();

  _$GgetChecklistData_getChecklist_results._(
      {required this.G__typename,
      this.key,
      this.labelKey,
      this.required,
      this.sortOrder})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        G__typename, r'GgetChecklistData_getChecklist_results', 'G__typename');
  }

  @override
  GgetChecklistData_getChecklist_results rebuild(
          void Function(GgetChecklistData_getChecklist_resultsBuilder)
              updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GgetChecklistData_getChecklist_resultsBuilder toBuilder() =>
      new GgetChecklistData_getChecklist_resultsBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GgetChecklistData_getChecklist_results &&
        G__typename == other.G__typename &&
        key == other.key &&
        labelKey == other.labelKey &&
        required == other.required &&
        sortOrder == other.sortOrder;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, G__typename.hashCode);
    _$hash = $jc(_$hash, key.hashCode);
    _$hash = $jc(_$hash, labelKey.hashCode);
    _$hash = $jc(_$hash, required.hashCode);
    _$hash = $jc(_$hash, sortOrder.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(
            r'GgetChecklistData_getChecklist_results')
          ..add('G__typename', G__typename)
          ..add('key', key)
          ..add('labelKey', labelKey)
          ..add('required', required)
          ..add('sortOrder', sortOrder))
        .toString();
  }
}

class GgetChecklistData_getChecklist_resultsBuilder
    implements
        Builder<GgetChecklistData_getChecklist_results,
            GgetChecklistData_getChecklist_resultsBuilder> {
  _$GgetChecklistData_getChecklist_results? _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  String? _key;
  String? get key => _$this._key;
  set key(String? key) => _$this._key = key;

  String? _labelKey;
  String? get labelKey => _$this._labelKey;
  set labelKey(String? labelKey) => _$this._labelKey = labelKey;

  bool? _required;
  bool? get required => _$this._required;
  set required(bool? required) => _$this._required = required;

  int? _sortOrder;
  int? get sortOrder => _$this._sortOrder;
  set sortOrder(int? sortOrder) => _$this._sortOrder = sortOrder;

  GgetChecklistData_getChecklist_resultsBuilder() {
    GgetChecklistData_getChecklist_results._initializeBuilder(this);
  }

  GgetChecklistData_getChecklist_resultsBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _G__typename = $v.G__typename;
      _key = $v.key;
      _labelKey = $v.labelKey;
      _required = $v.required;
      _sortOrder = $v.sortOrder;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GgetChecklistData_getChecklist_results other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GgetChecklistData_getChecklist_results;
  }

  @override
  void update(
      void Function(GgetChecklistData_getChecklist_resultsBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GgetChecklistData_getChecklist_results build() => _build();

  _$GgetChecklistData_getChecklist_results _build() {
    final _$result = _$v ??
        new _$GgetChecklistData_getChecklist_results._(
            G__typename: BuiltValueNullFieldError.checkNotNull(G__typename,
                r'GgetChecklistData_getChecklist_results', 'G__typename'),
            key: key,
            labelKey: labelKey,
            required: required,
            sortOrder: sortOrder);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
