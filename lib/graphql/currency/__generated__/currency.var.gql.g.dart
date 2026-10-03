// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'currency.var.gql.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<GpriceSettingsVars> _$gpriceSettingsVarsSerializer =
    new _$GpriceSettingsVarsSerializer();
Serializer<GgetCurrenciesListVars> _$ggetCurrenciesListVarsSerializer =
    new _$GgetCurrenciesListVarsSerializer();
Serializer<GgetCurrencyVars> _$ggetCurrencyVarsSerializer =
    new _$GgetCurrencyVarsSerializer();
Serializer<GgetVersionVars> _$ggetVersionVarsSerializer =
    new _$GgetVersionVarsSerializer();

class _$GpriceSettingsVarsSerializer
    implements StructuredSerializer<GpriceSettingsVars> {
  @override
  final Iterable<Type> types = const [GpriceSettingsVars, _$GpriceSettingsVars];
  @override
  final String wireName = 'GpriceSettingsVars';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, GpriceSettingsVars object,
      {FullType specifiedType = FullType.unspecified}) {
    return <Object?>[];
  }

  @override
  GpriceSettingsVars deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    return new GpriceSettingsVarsBuilder().build();
  }
}

class _$GgetCurrenciesListVarsSerializer
    implements StructuredSerializer<GgetCurrenciesListVars> {
  @override
  final Iterable<Type> types = const [
    GgetCurrenciesListVars,
    _$GgetCurrenciesListVars
  ];
  @override
  final String wireName = 'GgetCurrenciesListVars';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, GgetCurrenciesListVars object,
      {FullType specifiedType = FullType.unspecified}) {
    return <Object?>[];
  }

  @override
  GgetCurrenciesListVars deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    return new GgetCurrenciesListVarsBuilder().build();
  }
}

class _$GgetCurrencyVarsSerializer
    implements StructuredSerializer<GgetCurrencyVars> {
  @override
  final Iterable<Type> types = const [GgetCurrencyVars, _$GgetCurrencyVars];
  @override
  final String wireName = 'GgetCurrencyVars';

  @override
  Iterable<Object?> serialize(Serializers serializers, GgetCurrencyVars object,
      {FullType specifiedType = FullType.unspecified}) {
    return <Object?>[];
  }

  @override
  GgetCurrencyVars deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    return new GgetCurrencyVarsBuilder().build();
  }
}

class _$GgetVersionVarsSerializer
    implements StructuredSerializer<GgetVersionVars> {
  @override
  final Iterable<Type> types = const [GgetVersionVars, _$GgetVersionVars];
  @override
  final String wireName = 'GgetVersionVars';

  @override
  Iterable<Object?> serialize(Serializers serializers, GgetVersionVars object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      'appType',
      serializers.serialize(object.appType,
          specifiedType: const FullType(String)),
      'version',
      serializers.serialize(object.version,
          specifiedType: const FullType(String)),
    ];

    return result;
  }

  @override
  GgetVersionVars deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GgetVersionVarsBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'appType':
          result.appType = serializers.deserialize(value,
              specifiedType: const FullType(String))! as String;
          break;
        case 'version':
          result.version = serializers.deserialize(value,
              specifiedType: const FullType(String))! as String;
          break;
      }
    }

    return result.build();
  }
}

class _$GpriceSettingsVars extends GpriceSettingsVars {
  factory _$GpriceSettingsVars(
          [void Function(GpriceSettingsVarsBuilder)? updates]) =>
      (new GpriceSettingsVarsBuilder()..update(updates))._build();

  _$GpriceSettingsVars._() : super._();

  @override
  GpriceSettingsVars rebuild(
          void Function(GpriceSettingsVarsBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GpriceSettingsVarsBuilder toBuilder() =>
      new GpriceSettingsVarsBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GpriceSettingsVars;
  }

  @override
  int get hashCode {
    return 919340679;
  }

  @override
  String toString() {
    return newBuiltValueToStringHelper(r'GpriceSettingsVars').toString();
  }
}

class GpriceSettingsVarsBuilder
    implements Builder<GpriceSettingsVars, GpriceSettingsVarsBuilder> {
  _$GpriceSettingsVars? _$v;

  GpriceSettingsVarsBuilder();

  @override
  void replace(GpriceSettingsVars other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GpriceSettingsVars;
  }

  @override
  void update(void Function(GpriceSettingsVarsBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GpriceSettingsVars build() => _build();

  _$GpriceSettingsVars _build() {
    final _$result = _$v ?? new _$GpriceSettingsVars._();
    replace(_$result);
    return _$result;
  }
}

class _$GgetCurrenciesListVars extends GgetCurrenciesListVars {
  factory _$GgetCurrenciesListVars(
          [void Function(GgetCurrenciesListVarsBuilder)? updates]) =>
      (new GgetCurrenciesListVarsBuilder()..update(updates))._build();

  _$GgetCurrenciesListVars._() : super._();

  @override
  GgetCurrenciesListVars rebuild(
          void Function(GgetCurrenciesListVarsBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GgetCurrenciesListVarsBuilder toBuilder() =>
      new GgetCurrenciesListVarsBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GgetCurrenciesListVars;
  }

  @override
  int get hashCode {
    return 748437541;
  }

  @override
  String toString() {
    return newBuiltValueToStringHelper(r'GgetCurrenciesListVars').toString();
  }
}

class GgetCurrenciesListVarsBuilder
    implements Builder<GgetCurrenciesListVars, GgetCurrenciesListVarsBuilder> {
  _$GgetCurrenciesListVars? _$v;

  GgetCurrenciesListVarsBuilder();

  @override
  void replace(GgetCurrenciesListVars other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GgetCurrenciesListVars;
  }

  @override
  void update(void Function(GgetCurrenciesListVarsBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GgetCurrenciesListVars build() => _build();

  _$GgetCurrenciesListVars _build() {
    final _$result = _$v ?? new _$GgetCurrenciesListVars._();
    replace(_$result);
    return _$result;
  }
}

class _$GgetCurrencyVars extends GgetCurrencyVars {
  factory _$GgetCurrencyVars(
          [void Function(GgetCurrencyVarsBuilder)? updates]) =>
      (new GgetCurrencyVarsBuilder()..update(updates))._build();

  _$GgetCurrencyVars._() : super._();

  @override
  GgetCurrencyVars rebuild(void Function(GgetCurrencyVarsBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GgetCurrencyVarsBuilder toBuilder() =>
      new GgetCurrencyVarsBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GgetCurrencyVars;
  }

  @override
  int get hashCode {
    return 141495022;
  }

  @override
  String toString() {
    return newBuiltValueToStringHelper(r'GgetCurrencyVars').toString();
  }
}

class GgetCurrencyVarsBuilder
    implements Builder<GgetCurrencyVars, GgetCurrencyVarsBuilder> {
  _$GgetCurrencyVars? _$v;

  GgetCurrencyVarsBuilder();

  @override
  void replace(GgetCurrencyVars other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GgetCurrencyVars;
  }

  @override
  void update(void Function(GgetCurrencyVarsBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GgetCurrencyVars build() => _build();

  _$GgetCurrencyVars _build() {
    final _$result = _$v ?? new _$GgetCurrencyVars._();
    replace(_$result);
    return _$result;
  }
}

class _$GgetVersionVars extends GgetVersionVars {
  @override
  final String appType;
  @override
  final String version;

  factory _$GgetVersionVars([void Function(GgetVersionVarsBuilder)? updates]) =>
      (new GgetVersionVarsBuilder()..update(updates))._build();

  _$GgetVersionVars._({required this.appType, required this.version})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        appType, r'GgetVersionVars', 'appType');
    BuiltValueNullFieldError.checkNotNull(
        version, r'GgetVersionVars', 'version');
  }

  @override
  GgetVersionVars rebuild(void Function(GgetVersionVarsBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GgetVersionVarsBuilder toBuilder() =>
      new GgetVersionVarsBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GgetVersionVars &&
        appType == other.appType &&
        version == other.version;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, appType.hashCode);
    _$hash = $jc(_$hash, version.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'GgetVersionVars')
          ..add('appType', appType)
          ..add('version', version))
        .toString();
  }
}

class GgetVersionVarsBuilder
    implements Builder<GgetVersionVars, GgetVersionVarsBuilder> {
  _$GgetVersionVars? _$v;

  String? _appType;
  String? get appType => _$this._appType;
  set appType(String? appType) => _$this._appType = appType;

  String? _version;
  String? get version => _$this._version;
  set version(String? version) => _$this._version = version;

  GgetVersionVarsBuilder();

  GgetVersionVarsBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _appType = $v.appType;
      _version = $v.version;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GgetVersionVars other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GgetVersionVars;
  }

  @override
  void update(void Function(GgetVersionVarsBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GgetVersionVars build() => _build();

  _$GgetVersionVars _build() {
    final _$result = _$v ??
        new _$GgetVersionVars._(
            appType: BuiltValueNullFieldError.checkNotNull(
                appType, r'GgetVersionVars', 'appType'),
            version: BuiltValueNullFieldError.checkNotNull(
                version, r'GgetVersionVars', 'version'));
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
