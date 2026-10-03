// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'secure_site_settings.var.gql.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<GgetSecureSiteSettingsVars> _$ggetSecureSiteSettingsVarsSerializer =
    new _$GgetSecureSiteSettingsVarsSerializer();
Serializer<GgetImageBannerVars> _$ggetImageBannerVarsSerializer =
    new _$GgetImageBannerVarsSerializer();

class _$GgetSecureSiteSettingsVarsSerializer
    implements StructuredSerializer<GgetSecureSiteSettingsVars> {
  @override
  final Iterable<Type> types = const [
    GgetSecureSiteSettingsVars,
    _$GgetSecureSiteSettingsVars
  ];
  @override
  final String wireName = 'GgetSecureSiteSettingsVars';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, GgetSecureSiteSettingsVars object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      'securityKey',
      serializers.serialize(object.securityKey,
          specifiedType: const FullType(String)),
    ];
    Object? value;
    value = object.settingsType;
    if (value != null) {
      result
        ..add('settingsType')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.appType;
    if (value != null) {
      result
        ..add('appType')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.isFormDropDown;
    if (value != null) {
      result
        ..add('isFormDropDown')
        ..add(
            serializers.serialize(value, specifiedType: const FullType(bool)));
    }
    return result;
  }

  @override
  GgetSecureSiteSettingsVars deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GgetSecureSiteSettingsVarsBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'settingsType':
          result.settingsType = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'securityKey':
          result.securityKey = serializers.deserialize(value,
              specifiedType: const FullType(String))! as String;
          break;
        case 'appType':
          result.appType = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'isFormDropDown':
          result.isFormDropDown = serializers.deserialize(value,
              specifiedType: const FullType(bool)) as bool?;
          break;
      }
    }

    return result.build();
  }
}

class _$GgetImageBannerVarsSerializer
    implements StructuredSerializer<GgetImageBannerVars> {
  @override
  final Iterable<Type> types = const [
    GgetImageBannerVars,
    _$GgetImageBannerVars
  ];
  @override
  final String wireName = 'GgetImageBannerVars';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, GgetImageBannerVars object,
      {FullType specifiedType = FullType.unspecified}) {
    return <Object?>[];
  }

  @override
  GgetImageBannerVars deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    return new GgetImageBannerVarsBuilder().build();
  }
}

class _$GgetSecureSiteSettingsVars extends GgetSecureSiteSettingsVars {
  @override
  final String? settingsType;
  @override
  final String securityKey;
  @override
  final String? appType;
  @override
  final bool? isFormDropDown;

  factory _$GgetSecureSiteSettingsVars(
          [void Function(GgetSecureSiteSettingsVarsBuilder)? updates]) =>
      (new GgetSecureSiteSettingsVarsBuilder()..update(updates))._build();

  _$GgetSecureSiteSettingsVars._(
      {this.settingsType,
      required this.securityKey,
      this.appType,
      this.isFormDropDown})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        securityKey, r'GgetSecureSiteSettingsVars', 'securityKey');
  }

  @override
  GgetSecureSiteSettingsVars rebuild(
          void Function(GgetSecureSiteSettingsVarsBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GgetSecureSiteSettingsVarsBuilder toBuilder() =>
      new GgetSecureSiteSettingsVarsBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GgetSecureSiteSettingsVars &&
        settingsType == other.settingsType &&
        securityKey == other.securityKey &&
        appType == other.appType &&
        isFormDropDown == other.isFormDropDown;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, settingsType.hashCode);
    _$hash = $jc(_$hash, securityKey.hashCode);
    _$hash = $jc(_$hash, appType.hashCode);
    _$hash = $jc(_$hash, isFormDropDown.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'GgetSecureSiteSettingsVars')
          ..add('settingsType', settingsType)
          ..add('securityKey', securityKey)
          ..add('appType', appType)
          ..add('isFormDropDown', isFormDropDown))
        .toString();
  }
}

class GgetSecureSiteSettingsVarsBuilder
    implements
        Builder<GgetSecureSiteSettingsVars, GgetSecureSiteSettingsVarsBuilder> {
  _$GgetSecureSiteSettingsVars? _$v;

  String? _settingsType;
  String? get settingsType => _$this._settingsType;
  set settingsType(String? settingsType) => _$this._settingsType = settingsType;

  String? _securityKey;
  String? get securityKey => _$this._securityKey;
  set securityKey(String? securityKey) => _$this._securityKey = securityKey;

  String? _appType;
  String? get appType => _$this._appType;
  set appType(String? appType) => _$this._appType = appType;

  bool? _isFormDropDown;
  bool? get isFormDropDown => _$this._isFormDropDown;
  set isFormDropDown(bool? isFormDropDown) =>
      _$this._isFormDropDown = isFormDropDown;

  GgetSecureSiteSettingsVarsBuilder();

  GgetSecureSiteSettingsVarsBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _settingsType = $v.settingsType;
      _securityKey = $v.securityKey;
      _appType = $v.appType;
      _isFormDropDown = $v.isFormDropDown;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GgetSecureSiteSettingsVars other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GgetSecureSiteSettingsVars;
  }

  @override
  void update(void Function(GgetSecureSiteSettingsVarsBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GgetSecureSiteSettingsVars build() => _build();

  _$GgetSecureSiteSettingsVars _build() {
    final _$result = _$v ??
        new _$GgetSecureSiteSettingsVars._(
            settingsType: settingsType,
            securityKey: BuiltValueNullFieldError.checkNotNull(
                securityKey, r'GgetSecureSiteSettingsVars', 'securityKey'),
            appType: appType,
            isFormDropDown: isFormDropDown);
    replace(_$result);
    return _$result;
  }
}

class _$GgetImageBannerVars extends GgetImageBannerVars {
  factory _$GgetImageBannerVars(
          [void Function(GgetImageBannerVarsBuilder)? updates]) =>
      (new GgetImageBannerVarsBuilder()..update(updates))._build();

  _$GgetImageBannerVars._() : super._();

  @override
  GgetImageBannerVars rebuild(
          void Function(GgetImageBannerVarsBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GgetImageBannerVarsBuilder toBuilder() =>
      new GgetImageBannerVarsBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GgetImageBannerVars;
  }

  @override
  int get hashCode {
    return 150407246;
  }

  @override
  String toString() {
    return newBuiltValueToStringHelper(r'GgetImageBannerVars').toString();
  }
}

class GgetImageBannerVarsBuilder
    implements Builder<GgetImageBannerVars, GgetImageBannerVarsBuilder> {
  _$GgetImageBannerVars? _$v;

  GgetImageBannerVarsBuilder();

  @override
  void replace(GgetImageBannerVars other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GgetImageBannerVars;
  }

  @override
  void update(void Function(GgetImageBannerVarsBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GgetImageBannerVars build() => _build();

  _$GgetImageBannerVars _build() {
    final _$result = _$v ?? new _$GgetImageBannerVars._();
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
