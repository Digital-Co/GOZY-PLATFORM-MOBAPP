// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'getWhyHostData.data.gql.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<GgetWhyHostDataData> _$ggetWhyHostDataDataSerializer =
    new _$GgetWhyHostDataDataSerializer();
Serializer<GgetWhyHostDataData_getWhyHostData>
    _$ggetWhyHostDataDataGetWhyHostDataSerializer =
    new _$GgetWhyHostDataData_getWhyHostDataSerializer();
Serializer<GgetWhyHostDataData_getWhyHostData_results>
    _$ggetWhyHostDataDataGetWhyHostDataResultsSerializer =
    new _$GgetWhyHostDataData_getWhyHostData_resultsSerializer();

class _$GgetWhyHostDataDataSerializer
    implements StructuredSerializer<GgetWhyHostDataData> {
  @override
  final Iterable<Type> types = const [
    GgetWhyHostDataData,
    _$GgetWhyHostDataData
  ];
  @override
  final String wireName = 'GgetWhyHostDataData';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, GgetWhyHostDataData object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      '__typename',
      serializers.serialize(object.G__typename,
          specifiedType: const FullType(String)),
    ];
    Object? value;
    value = object.getWhyHostData;
    if (value != null) {
      result
        ..add('getWhyHostData')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(GgetWhyHostDataData_getWhyHostData)));
    }
    return result;
  }

  @override
  GgetWhyHostDataData deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GgetWhyHostDataDataBuilder();

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
        case 'getWhyHostData':
          result.getWhyHostData.replace(serializers.deserialize(value,
                  specifiedType:
                      const FullType(GgetWhyHostDataData_getWhyHostData))!
              as GgetWhyHostDataData_getWhyHostData);
          break;
      }
    }

    return result.build();
  }
}

class _$GgetWhyHostDataData_getWhyHostDataSerializer
    implements StructuredSerializer<GgetWhyHostDataData_getWhyHostData> {
  @override
  final Iterable<Type> types = const [
    GgetWhyHostDataData_getWhyHostData,
    _$GgetWhyHostDataData_getWhyHostData
  ];
  @override
  final String wireName = 'GgetWhyHostDataData_getWhyHostData';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, GgetWhyHostDataData_getWhyHostData object,
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
              const FullType.nullable(
                  GgetWhyHostDataData_getWhyHostData_results)
            ])));
    }
    return result;
  }

  @override
  GgetWhyHostDataData_getWhyHostData deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GgetWhyHostDataData_getWhyHostDataBuilder();

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
                const FullType.nullable(
                    GgetWhyHostDataData_getWhyHostData_results)
              ]))! as BuiltList<Object?>);
          break;
      }
    }

    return result.build();
  }
}

class _$GgetWhyHostDataData_getWhyHostData_resultsSerializer
    implements
        StructuredSerializer<GgetWhyHostDataData_getWhyHostData_results> {
  @override
  final Iterable<Type> types = const [
    GgetWhyHostDataData_getWhyHostData_results,
    _$GgetWhyHostDataData_getWhyHostData_results
  ];
  @override
  final String wireName = 'GgetWhyHostDataData_getWhyHostData_results';

  @override
  Iterable<Object?> serialize(Serializers serializers,
      GgetWhyHostDataData_getWhyHostData_results object,
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
    value = object.imageName;
    if (value != null) {
      result
        ..add('imageName')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.title;
    if (value != null) {
      result
        ..add('title')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.buttonLabel;
    if (value != null) {
      result
        ..add('buttonLabel')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    return result;
  }

  @override
  GgetWhyHostDataData_getWhyHostData_results deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GgetWhyHostDataData_getWhyHostData_resultsBuilder();

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
        case 'imageName':
          result.imageName = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'title':
          result.title = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'buttonLabel':
          result.buttonLabel = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
      }
    }

    return result.build();
  }
}

class _$GgetWhyHostDataData extends GgetWhyHostDataData {
  @override
  final String G__typename;
  @override
  final GgetWhyHostDataData_getWhyHostData? getWhyHostData;

  factory _$GgetWhyHostDataData(
          [void Function(GgetWhyHostDataDataBuilder)? updates]) =>
      (new GgetWhyHostDataDataBuilder()..update(updates))._build();

  _$GgetWhyHostDataData._({required this.G__typename, this.getWhyHostData})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        G__typename, r'GgetWhyHostDataData', 'G__typename');
  }

  @override
  GgetWhyHostDataData rebuild(
          void Function(GgetWhyHostDataDataBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GgetWhyHostDataDataBuilder toBuilder() =>
      new GgetWhyHostDataDataBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GgetWhyHostDataData &&
        G__typename == other.G__typename &&
        getWhyHostData == other.getWhyHostData;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, G__typename.hashCode);
    _$hash = $jc(_$hash, getWhyHostData.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'GgetWhyHostDataData')
          ..add('G__typename', G__typename)
          ..add('getWhyHostData', getWhyHostData))
        .toString();
  }
}

class GgetWhyHostDataDataBuilder
    implements Builder<GgetWhyHostDataData, GgetWhyHostDataDataBuilder> {
  _$GgetWhyHostDataData? _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  GgetWhyHostDataData_getWhyHostDataBuilder? _getWhyHostData;
  GgetWhyHostDataData_getWhyHostDataBuilder get getWhyHostData =>
      _$this._getWhyHostData ??=
          new GgetWhyHostDataData_getWhyHostDataBuilder();
  set getWhyHostData(
          GgetWhyHostDataData_getWhyHostDataBuilder? getWhyHostData) =>
      _$this._getWhyHostData = getWhyHostData;

  GgetWhyHostDataDataBuilder() {
    GgetWhyHostDataData._initializeBuilder(this);
  }

  GgetWhyHostDataDataBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _G__typename = $v.G__typename;
      _getWhyHostData = $v.getWhyHostData?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GgetWhyHostDataData other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GgetWhyHostDataData;
  }

  @override
  void update(void Function(GgetWhyHostDataDataBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GgetWhyHostDataData build() => _build();

  _$GgetWhyHostDataData _build() {
    _$GgetWhyHostDataData _$result;
    try {
      _$result = _$v ??
          new _$GgetWhyHostDataData._(
              G__typename: BuiltValueNullFieldError.checkNotNull(
                  G__typename, r'GgetWhyHostDataData', 'G__typename'),
              getWhyHostData: _getWhyHostData?.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'getWhyHostData';
        _getWhyHostData?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'GgetWhyHostDataData', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

class _$GgetWhyHostDataData_getWhyHostData
    extends GgetWhyHostDataData_getWhyHostData {
  @override
  final String G__typename;
  @override
  final int? status;
  @override
  final String? errorMessage;
  @override
  final BuiltList<GgetWhyHostDataData_getWhyHostData_results?>? results;

  factory _$GgetWhyHostDataData_getWhyHostData(
          [void Function(GgetWhyHostDataData_getWhyHostDataBuilder)?
              updates]) =>
      (new GgetWhyHostDataData_getWhyHostDataBuilder()..update(updates))
          ._build();

  _$GgetWhyHostDataData_getWhyHostData._(
      {required this.G__typename, this.status, this.errorMessage, this.results})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        G__typename, r'GgetWhyHostDataData_getWhyHostData', 'G__typename');
  }

  @override
  GgetWhyHostDataData_getWhyHostData rebuild(
          void Function(GgetWhyHostDataData_getWhyHostDataBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GgetWhyHostDataData_getWhyHostDataBuilder toBuilder() =>
      new GgetWhyHostDataData_getWhyHostDataBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GgetWhyHostDataData_getWhyHostData &&
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
    return (newBuiltValueToStringHelper(r'GgetWhyHostDataData_getWhyHostData')
          ..add('G__typename', G__typename)
          ..add('status', status)
          ..add('errorMessage', errorMessage)
          ..add('results', results))
        .toString();
  }
}

class GgetWhyHostDataData_getWhyHostDataBuilder
    implements
        Builder<GgetWhyHostDataData_getWhyHostData,
            GgetWhyHostDataData_getWhyHostDataBuilder> {
  _$GgetWhyHostDataData_getWhyHostData? _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  int? _status;
  int? get status => _$this._status;
  set status(int? status) => _$this._status = status;

  String? _errorMessage;
  String? get errorMessage => _$this._errorMessage;
  set errorMessage(String? errorMessage) => _$this._errorMessage = errorMessage;

  ListBuilder<GgetWhyHostDataData_getWhyHostData_results?>? _results;
  ListBuilder<GgetWhyHostDataData_getWhyHostData_results?> get results =>
      _$this._results ??=
          new ListBuilder<GgetWhyHostDataData_getWhyHostData_results?>();
  set results(
          ListBuilder<GgetWhyHostDataData_getWhyHostData_results?>? results) =>
      _$this._results = results;

  GgetWhyHostDataData_getWhyHostDataBuilder() {
    GgetWhyHostDataData_getWhyHostData._initializeBuilder(this);
  }

  GgetWhyHostDataData_getWhyHostDataBuilder get _$this {
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
  void replace(GgetWhyHostDataData_getWhyHostData other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GgetWhyHostDataData_getWhyHostData;
  }

  @override
  void update(
      void Function(GgetWhyHostDataData_getWhyHostDataBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GgetWhyHostDataData_getWhyHostData build() => _build();

  _$GgetWhyHostDataData_getWhyHostData _build() {
    _$GgetWhyHostDataData_getWhyHostData _$result;
    try {
      _$result = _$v ??
          new _$GgetWhyHostDataData_getWhyHostData._(
              G__typename: BuiltValueNullFieldError.checkNotNull(G__typename,
                  r'GgetWhyHostDataData_getWhyHostData', 'G__typename'),
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
            r'GgetWhyHostDataData_getWhyHostData', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

class _$GgetWhyHostDataData_getWhyHostData_results
    extends GgetWhyHostDataData_getWhyHostData_results {
  @override
  final String G__typename;
  @override
  final int? id;
  @override
  final String? imageName;
  @override
  final String? title;
  @override
  final String? buttonLabel;

  factory _$GgetWhyHostDataData_getWhyHostData_results(
          [void Function(GgetWhyHostDataData_getWhyHostData_resultsBuilder)?
              updates]) =>
      (new GgetWhyHostDataData_getWhyHostData_resultsBuilder()..update(updates))
          ._build();

  _$GgetWhyHostDataData_getWhyHostData_results._(
      {required this.G__typename,
      this.id,
      this.imageName,
      this.title,
      this.buttonLabel})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(G__typename,
        r'GgetWhyHostDataData_getWhyHostData_results', 'G__typename');
  }

  @override
  GgetWhyHostDataData_getWhyHostData_results rebuild(
          void Function(GgetWhyHostDataData_getWhyHostData_resultsBuilder)
              updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GgetWhyHostDataData_getWhyHostData_resultsBuilder toBuilder() =>
      new GgetWhyHostDataData_getWhyHostData_resultsBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GgetWhyHostDataData_getWhyHostData_results &&
        G__typename == other.G__typename &&
        id == other.id &&
        imageName == other.imageName &&
        title == other.title &&
        buttonLabel == other.buttonLabel;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, G__typename.hashCode);
    _$hash = $jc(_$hash, id.hashCode);
    _$hash = $jc(_$hash, imageName.hashCode);
    _$hash = $jc(_$hash, title.hashCode);
    _$hash = $jc(_$hash, buttonLabel.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(
            r'GgetWhyHostDataData_getWhyHostData_results')
          ..add('G__typename', G__typename)
          ..add('id', id)
          ..add('imageName', imageName)
          ..add('title', title)
          ..add('buttonLabel', buttonLabel))
        .toString();
  }
}

class GgetWhyHostDataData_getWhyHostData_resultsBuilder
    implements
        Builder<GgetWhyHostDataData_getWhyHostData_results,
            GgetWhyHostDataData_getWhyHostData_resultsBuilder> {
  _$GgetWhyHostDataData_getWhyHostData_results? _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  int? _id;
  int? get id => _$this._id;
  set id(int? id) => _$this._id = id;

  String? _imageName;
  String? get imageName => _$this._imageName;
  set imageName(String? imageName) => _$this._imageName = imageName;

  String? _title;
  String? get title => _$this._title;
  set title(String? title) => _$this._title = title;

  String? _buttonLabel;
  String? get buttonLabel => _$this._buttonLabel;
  set buttonLabel(String? buttonLabel) => _$this._buttonLabel = buttonLabel;

  GgetWhyHostDataData_getWhyHostData_resultsBuilder() {
    GgetWhyHostDataData_getWhyHostData_results._initializeBuilder(this);
  }

  GgetWhyHostDataData_getWhyHostData_resultsBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _G__typename = $v.G__typename;
      _id = $v.id;
      _imageName = $v.imageName;
      _title = $v.title;
      _buttonLabel = $v.buttonLabel;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GgetWhyHostDataData_getWhyHostData_results other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GgetWhyHostDataData_getWhyHostData_results;
  }

  @override
  void update(
      void Function(GgetWhyHostDataData_getWhyHostData_resultsBuilder)?
          updates) {
    if (updates != null) updates(this);
  }

  @override
  GgetWhyHostDataData_getWhyHostData_results build() => _build();

  _$GgetWhyHostDataData_getWhyHostData_results _build() {
    final _$result = _$v ??
        new _$GgetWhyHostDataData_getWhyHostData_results._(
            G__typename: BuiltValueNullFieldError.checkNotNull(G__typename,
                r'GgetWhyHostDataData_getWhyHostData_results', 'G__typename'),
            id: id,
            imageName: imageName,
            title: title,
            buttonLabel: buttonLabel);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
