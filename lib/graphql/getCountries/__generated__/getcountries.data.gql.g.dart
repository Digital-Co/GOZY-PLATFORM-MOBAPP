// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'getcountries.data.gql.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<GgetCountriesData> _$ggetCountriesDataSerializer =
    new _$GgetCountriesDataSerializer();
Serializer<GgetCountriesData_getCountries>
    _$ggetCountriesDataGetCountriesSerializer =
    new _$GgetCountriesData_getCountriesSerializer();
Serializer<GgetCountriesData_getCountries_results>
    _$ggetCountriesDataGetCountriesResultsSerializer =
    new _$GgetCountriesData_getCountries_resultsSerializer();

class _$GgetCountriesDataSerializer
    implements StructuredSerializer<GgetCountriesData> {
  @override
  final Iterable<Type> types = const [GgetCountriesData, _$GgetCountriesData];
  @override
  final String wireName = 'GgetCountriesData';

  @override
  Iterable<Object?> serialize(Serializers serializers, GgetCountriesData object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      '__typename',
      serializers.serialize(object.G__typename,
          specifiedType: const FullType(String)),
    ];
    Object? value;
    value = object.getCountries;
    if (value != null) {
      result
        ..add('getCountries')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(GgetCountriesData_getCountries)));
    }
    return result;
  }

  @override
  GgetCountriesData deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GgetCountriesDataBuilder();

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
        case 'getCountries':
          result.getCountries.replace(serializers.deserialize(value,
                  specifiedType:
                      const FullType(GgetCountriesData_getCountries))!
              as GgetCountriesData_getCountries);
          break;
      }
    }

    return result.build();
  }
}

class _$GgetCountriesData_getCountriesSerializer
    implements StructuredSerializer<GgetCountriesData_getCountries> {
  @override
  final Iterable<Type> types = const [
    GgetCountriesData_getCountries,
    _$GgetCountriesData_getCountries
  ];
  @override
  final String wireName = 'GgetCountriesData_getCountries';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, GgetCountriesData_getCountries object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      '__typename',
      serializers.serialize(object.G__typename,
          specifiedType: const FullType(String)),
    ];
    Object? value;
    value = object.errorMessage;
    if (value != null) {
      result
        ..add('errorMessage')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.status;
    if (value != null) {
      result
        ..add('status')
        ..add(serializers.serialize(value, specifiedType: const FullType(int)));
    }
    value = object.results;
    if (value != null) {
      result
        ..add('results')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(BuiltList, const [
              const FullType.nullable(GgetCountriesData_getCountries_results)
            ])));
    }
    return result;
  }

  @override
  GgetCountriesData_getCountries deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GgetCountriesData_getCountriesBuilder();

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
        case 'errorMessage':
          result.errorMessage = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'status':
          result.status = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int?;
          break;
        case 'results':
          result.results.replace(serializers.deserialize(value,
              specifiedType: const FullType(BuiltList, const [
                const FullType.nullable(GgetCountriesData_getCountries_results)
              ]))! as BuiltList<Object?>);
          break;
      }
    }

    return result.build();
  }
}

class _$GgetCountriesData_getCountries_resultsSerializer
    implements StructuredSerializer<GgetCountriesData_getCountries_results> {
  @override
  final Iterable<Type> types = const [
    GgetCountriesData_getCountries_results,
    _$GgetCountriesData_getCountries_results
  ];
  @override
  final String wireName = 'GgetCountriesData_getCountries_results';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, GgetCountriesData_getCountries_results object,
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
    value = object.isEnable;
    if (value != null) {
      result
        ..add('isEnable')
        ..add(
            serializers.serialize(value, specifiedType: const FullType(bool)));
    }
    value = object.countryCode;
    if (value != null) {
      result
        ..add('countryCode')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.countryName;
    if (value != null) {
      result
        ..add('countryName')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.dialCode;
    if (value != null) {
      result
        ..add('dialCode')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    return result;
  }

  @override
  GgetCountriesData_getCountries_results deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GgetCountriesData_getCountries_resultsBuilder();

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
        case 'isEnable':
          result.isEnable = serializers.deserialize(value,
              specifiedType: const FullType(bool)) as bool?;
          break;
        case 'countryCode':
          result.countryCode = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'countryName':
          result.countryName = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'dialCode':
          result.dialCode = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
      }
    }

    return result.build();
  }
}

class _$GgetCountriesData extends GgetCountriesData {
  @override
  final String G__typename;
  @override
  final GgetCountriesData_getCountries? getCountries;

  factory _$GgetCountriesData(
          [void Function(GgetCountriesDataBuilder)? updates]) =>
      (new GgetCountriesDataBuilder()..update(updates))._build();

  _$GgetCountriesData._({required this.G__typename, this.getCountries})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        G__typename, r'GgetCountriesData', 'G__typename');
  }

  @override
  GgetCountriesData rebuild(void Function(GgetCountriesDataBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GgetCountriesDataBuilder toBuilder() =>
      new GgetCountriesDataBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GgetCountriesData &&
        G__typename == other.G__typename &&
        getCountries == other.getCountries;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, G__typename.hashCode);
    _$hash = $jc(_$hash, getCountries.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'GgetCountriesData')
          ..add('G__typename', G__typename)
          ..add('getCountries', getCountries))
        .toString();
  }
}

class GgetCountriesDataBuilder
    implements Builder<GgetCountriesData, GgetCountriesDataBuilder> {
  _$GgetCountriesData? _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  GgetCountriesData_getCountriesBuilder? _getCountries;
  GgetCountriesData_getCountriesBuilder get getCountries =>
      _$this._getCountries ??= new GgetCountriesData_getCountriesBuilder();
  set getCountries(GgetCountriesData_getCountriesBuilder? getCountries) =>
      _$this._getCountries = getCountries;

  GgetCountriesDataBuilder() {
    GgetCountriesData._initializeBuilder(this);
  }

  GgetCountriesDataBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _G__typename = $v.G__typename;
      _getCountries = $v.getCountries?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GgetCountriesData other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GgetCountriesData;
  }

  @override
  void update(void Function(GgetCountriesDataBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GgetCountriesData build() => _build();

  _$GgetCountriesData _build() {
    _$GgetCountriesData _$result;
    try {
      _$result = _$v ??
          new _$GgetCountriesData._(
              G__typename: BuiltValueNullFieldError.checkNotNull(
                  G__typename, r'GgetCountriesData', 'G__typename'),
              getCountries: _getCountries?.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'getCountries';
        _getCountries?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'GgetCountriesData', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

class _$GgetCountriesData_getCountries extends GgetCountriesData_getCountries {
  @override
  final String G__typename;
  @override
  final String? errorMessage;
  @override
  final int? status;
  @override
  final BuiltList<GgetCountriesData_getCountries_results?>? results;

  factory _$GgetCountriesData_getCountries(
          [void Function(GgetCountriesData_getCountriesBuilder)? updates]) =>
      (new GgetCountriesData_getCountriesBuilder()..update(updates))._build();

  _$GgetCountriesData_getCountries._(
      {required this.G__typename, this.errorMessage, this.status, this.results})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        G__typename, r'GgetCountriesData_getCountries', 'G__typename');
  }

  @override
  GgetCountriesData_getCountries rebuild(
          void Function(GgetCountriesData_getCountriesBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GgetCountriesData_getCountriesBuilder toBuilder() =>
      new GgetCountriesData_getCountriesBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GgetCountriesData_getCountries &&
        G__typename == other.G__typename &&
        errorMessage == other.errorMessage &&
        status == other.status &&
        results == other.results;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, G__typename.hashCode);
    _$hash = $jc(_$hash, errorMessage.hashCode);
    _$hash = $jc(_$hash, status.hashCode);
    _$hash = $jc(_$hash, results.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'GgetCountriesData_getCountries')
          ..add('G__typename', G__typename)
          ..add('errorMessage', errorMessage)
          ..add('status', status)
          ..add('results', results))
        .toString();
  }
}

class GgetCountriesData_getCountriesBuilder
    implements
        Builder<GgetCountriesData_getCountries,
            GgetCountriesData_getCountriesBuilder> {
  _$GgetCountriesData_getCountries? _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  String? _errorMessage;
  String? get errorMessage => _$this._errorMessage;
  set errorMessage(String? errorMessage) => _$this._errorMessage = errorMessage;

  int? _status;
  int? get status => _$this._status;
  set status(int? status) => _$this._status = status;

  ListBuilder<GgetCountriesData_getCountries_results?>? _results;
  ListBuilder<GgetCountriesData_getCountries_results?> get results =>
      _$this._results ??=
          new ListBuilder<GgetCountriesData_getCountries_results?>();
  set results(ListBuilder<GgetCountriesData_getCountries_results?>? results) =>
      _$this._results = results;

  GgetCountriesData_getCountriesBuilder() {
    GgetCountriesData_getCountries._initializeBuilder(this);
  }

  GgetCountriesData_getCountriesBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _G__typename = $v.G__typename;
      _errorMessage = $v.errorMessage;
      _status = $v.status;
      _results = $v.results?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GgetCountriesData_getCountries other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GgetCountriesData_getCountries;
  }

  @override
  void update(void Function(GgetCountriesData_getCountriesBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GgetCountriesData_getCountries build() => _build();

  _$GgetCountriesData_getCountries _build() {
    _$GgetCountriesData_getCountries _$result;
    try {
      _$result = _$v ??
          new _$GgetCountriesData_getCountries._(
              G__typename: BuiltValueNullFieldError.checkNotNull(G__typename,
                  r'GgetCountriesData_getCountries', 'G__typename'),
              errorMessage: errorMessage,
              status: status,
              results: _results?.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'results';
        _results?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'GgetCountriesData_getCountries', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

class _$GgetCountriesData_getCountries_results
    extends GgetCountriesData_getCountries_results {
  @override
  final String G__typename;
  @override
  final int? id;
  @override
  final bool? isEnable;
  @override
  final String? countryCode;
  @override
  final String? countryName;
  @override
  final String? dialCode;

  factory _$GgetCountriesData_getCountries_results(
          [void Function(GgetCountriesData_getCountries_resultsBuilder)?
              updates]) =>
      (new GgetCountriesData_getCountries_resultsBuilder()..update(updates))
          ._build();

  _$GgetCountriesData_getCountries_results._(
      {required this.G__typename,
      this.id,
      this.isEnable,
      this.countryCode,
      this.countryName,
      this.dialCode})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        G__typename, r'GgetCountriesData_getCountries_results', 'G__typename');
  }

  @override
  GgetCountriesData_getCountries_results rebuild(
          void Function(GgetCountriesData_getCountries_resultsBuilder)
              updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GgetCountriesData_getCountries_resultsBuilder toBuilder() =>
      new GgetCountriesData_getCountries_resultsBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GgetCountriesData_getCountries_results &&
        G__typename == other.G__typename &&
        id == other.id &&
        isEnable == other.isEnable &&
        countryCode == other.countryCode &&
        countryName == other.countryName &&
        dialCode == other.dialCode;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, G__typename.hashCode);
    _$hash = $jc(_$hash, id.hashCode);
    _$hash = $jc(_$hash, isEnable.hashCode);
    _$hash = $jc(_$hash, countryCode.hashCode);
    _$hash = $jc(_$hash, countryName.hashCode);
    _$hash = $jc(_$hash, dialCode.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(
            r'GgetCountriesData_getCountries_results')
          ..add('G__typename', G__typename)
          ..add('id', id)
          ..add('isEnable', isEnable)
          ..add('countryCode', countryCode)
          ..add('countryName', countryName)
          ..add('dialCode', dialCode))
        .toString();
  }
}

class GgetCountriesData_getCountries_resultsBuilder
    implements
        Builder<GgetCountriesData_getCountries_results,
            GgetCountriesData_getCountries_resultsBuilder> {
  _$GgetCountriesData_getCountries_results? _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  int? _id;
  int? get id => _$this._id;
  set id(int? id) => _$this._id = id;

  bool? _isEnable;
  bool? get isEnable => _$this._isEnable;
  set isEnable(bool? isEnable) => _$this._isEnable = isEnable;

  String? _countryCode;
  String? get countryCode => _$this._countryCode;
  set countryCode(String? countryCode) => _$this._countryCode = countryCode;

  String? _countryName;
  String? get countryName => _$this._countryName;
  set countryName(String? countryName) => _$this._countryName = countryName;

  String? _dialCode;
  String? get dialCode => _$this._dialCode;
  set dialCode(String? dialCode) => _$this._dialCode = dialCode;

  GgetCountriesData_getCountries_resultsBuilder() {
    GgetCountriesData_getCountries_results._initializeBuilder(this);
  }

  GgetCountriesData_getCountries_resultsBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _G__typename = $v.G__typename;
      _id = $v.id;
      _isEnable = $v.isEnable;
      _countryCode = $v.countryCode;
      _countryName = $v.countryName;
      _dialCode = $v.dialCode;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GgetCountriesData_getCountries_results other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GgetCountriesData_getCountries_results;
  }

  @override
  void update(
      void Function(GgetCountriesData_getCountries_resultsBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GgetCountriesData_getCountries_results build() => _build();

  _$GgetCountriesData_getCountries_results _build() {
    final _$result = _$v ??
        new _$GgetCountriesData_getCountries_results._(
            G__typename: BuiltValueNullFieldError.checkNotNull(G__typename,
                r'GgetCountriesData_getCountries_results', 'G__typename'),
            id: id,
            isEnable: isEnable,
            countryCode: countryCode,
            countryName: countryName,
            dialCode: dialCode);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
