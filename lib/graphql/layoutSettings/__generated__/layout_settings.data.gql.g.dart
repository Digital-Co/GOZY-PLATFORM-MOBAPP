// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'layout_settings.data.gql.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<GgetLayoutSettingsData> _$ggetLayoutSettingsDataSerializer =
    new _$GgetLayoutSettingsDataSerializer();
Serializer<GgetLayoutSettingsData_getLayoutSettings>
    _$ggetLayoutSettingsDataGetLayoutSettingsSerializer =
    new _$GgetLayoutSettingsData_getLayoutSettingsSerializer();
Serializer<GgetLayoutSettingsData_getLayoutSettings_result>
    _$ggetLayoutSettingsDataGetLayoutSettingsResultSerializer =
    new _$GgetLayoutSettingsData_getLayoutSettings_resultSerializer();
Serializer<GgetLayoutSettingsData_getLayoutSettings_result_theme>
    _$ggetLayoutSettingsDataGetLayoutSettingsResultThemeSerializer =
    new _$GgetLayoutSettingsData_getLayoutSettings_result_themeSerializer();
Serializer<GgetLayoutSettingsData_getLayoutSettings_result_explore>
    _$ggetLayoutSettingsDataGetLayoutSettingsResultExploreSerializer =
    new _$GgetLayoutSettingsData_getLayoutSettings_result_exploreSerializer();

class _$GgetLayoutSettingsDataSerializer
    implements StructuredSerializer<GgetLayoutSettingsData> {
  @override
  final Iterable<Type> types = const [
    GgetLayoutSettingsData,
    _$GgetLayoutSettingsData
  ];
  @override
  final String wireName = 'GgetLayoutSettingsData';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, GgetLayoutSettingsData object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      '__typename',
      serializers.serialize(object.G__typename,
          specifiedType: const FullType(String)),
    ];
    Object? value;
    value = object.getLayoutSettings;
    if (value != null) {
      result
        ..add('getLayoutSettings')
        ..add(serializers.serialize(value,
            specifiedType:
                const FullType(GgetLayoutSettingsData_getLayoutSettings)));
    }
    return result;
  }

  @override
  GgetLayoutSettingsData deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GgetLayoutSettingsDataBuilder();

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
        case 'getLayoutSettings':
          result.getLayoutSettings.replace(serializers.deserialize(value,
                  specifiedType:
                      const FullType(GgetLayoutSettingsData_getLayoutSettings))!
              as GgetLayoutSettingsData_getLayoutSettings);
          break;
      }
    }

    return result.build();
  }
}

class _$GgetLayoutSettingsData_getLayoutSettingsSerializer
    implements StructuredSerializer<GgetLayoutSettingsData_getLayoutSettings> {
  @override
  final Iterable<Type> types = const [
    GgetLayoutSettingsData_getLayoutSettings,
    _$GgetLayoutSettingsData_getLayoutSettings
  ];
  @override
  final String wireName = 'GgetLayoutSettingsData_getLayoutSettings';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, GgetLayoutSettingsData_getLayoutSettings object,
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
    value = object.result;
    if (value != null) {
      result
        ..add('result')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(
                GgetLayoutSettingsData_getLayoutSettings_result)));
    }
    return result;
  }

  @override
  GgetLayoutSettingsData_getLayoutSettings deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GgetLayoutSettingsData_getLayoutSettingsBuilder();

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
        case 'result':
          result.result.replace(serializers.deserialize(value,
                  specifiedType: const FullType(
                      GgetLayoutSettingsData_getLayoutSettings_result))!
              as GgetLayoutSettingsData_getLayoutSettings_result);
          break;
      }
    }

    return result.build();
  }
}

class _$GgetLayoutSettingsData_getLayoutSettings_resultSerializer
    implements
        StructuredSerializer<GgetLayoutSettingsData_getLayoutSettings_result> {
  @override
  final Iterable<Type> types = const [
    GgetLayoutSettingsData_getLayoutSettings_result,
    _$GgetLayoutSettingsData_getLayoutSettings_result
  ];
  @override
  final String wireName = 'GgetLayoutSettingsData_getLayoutSettings_result';

  @override
  Iterable<Object?> serialize(Serializers serializers,
      GgetLayoutSettingsData_getLayoutSettings_result object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      '__typename',
      serializers.serialize(object.G__typename,
          specifiedType: const FullType(String)),
    ];
    Object? value;
    value = object.theme;
    if (value != null) {
      result
        ..add('theme')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(BuiltList, const [
              const FullType.nullable(
                  GgetLayoutSettingsData_getLayoutSettings_result_theme)
            ])));
    }
    value = object.explore;
    if (value != null) {
      result
        ..add('explore')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(BuiltList, const [
              const FullType.nullable(
                  GgetLayoutSettingsData_getLayoutSettings_result_explore)
            ])));
    }
    return result;
  }

  @override
  GgetLayoutSettingsData_getLayoutSettings_result deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GgetLayoutSettingsData_getLayoutSettings_resultBuilder();

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
        case 'theme':
          result.theme.replace(serializers.deserialize(value,
              specifiedType: const FullType(BuiltList, const [
                const FullType.nullable(
                    GgetLayoutSettingsData_getLayoutSettings_result_theme)
              ]))! as BuiltList<Object?>);
          break;
        case 'explore':
          result.explore.replace(serializers.deserialize(value,
              specifiedType: const FullType(BuiltList, const [
                const FullType.nullable(
                    GgetLayoutSettingsData_getLayoutSettings_result_explore)
              ]))! as BuiltList<Object?>);
          break;
      }
    }

    return result.build();
  }
}

class _$GgetLayoutSettingsData_getLayoutSettings_result_themeSerializer
    implements
        StructuredSerializer<
            GgetLayoutSettingsData_getLayoutSettings_result_theme> {
  @override
  final Iterable<Type> types = const [
    GgetLayoutSettingsData_getLayoutSettings_result_theme,
    _$GgetLayoutSettingsData_getLayoutSettings_result_theme
  ];
  @override
  final String wireName =
      'GgetLayoutSettingsData_getLayoutSettings_result_theme';

  @override
  Iterable<Object?> serialize(Serializers serializers,
      GgetLayoutSettingsData_getLayoutSettings_result_theme object,
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
    value = object.name;
    if (value != null) {
      result
        ..add('name')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.themeType;
    if (value != null) {
      result
        ..add('themeType')
        ..add(serializers.serialize(value, specifiedType: const FullType(int)));
    }
    value = object.orderType;
    if (value != null) {
      result
        ..add('orderType')
        ..add(serializers.serialize(value, specifiedType: const FullType(int)));
    }
    value = object.isEnable;
    if (value != null) {
      result
        ..add('isEnable')
        ..add(
            serializers.serialize(value, specifiedType: const FullType(bool)));
    }
    return result;
  }

  @override
  GgetLayoutSettingsData_getLayoutSettings_result_theme deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result =
        new GgetLayoutSettingsData_getLayoutSettings_result_themeBuilder();

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
        case 'name':
          result.name = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'themeType':
          result.themeType = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int?;
          break;
        case 'orderType':
          result.orderType = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int?;
          break;
        case 'isEnable':
          result.isEnable = serializers.deserialize(value,
              specifiedType: const FullType(bool)) as bool?;
          break;
      }
    }

    return result.build();
  }
}

class _$GgetLayoutSettingsData_getLayoutSettings_result_exploreSerializer
    implements
        StructuredSerializer<
            GgetLayoutSettingsData_getLayoutSettings_result_explore> {
  @override
  final Iterable<Type> types = const [
    GgetLayoutSettingsData_getLayoutSettings_result_explore,
    _$GgetLayoutSettingsData_getLayoutSettings_result_explore
  ];
  @override
  final String wireName =
      'GgetLayoutSettingsData_getLayoutSettings_result_explore';

  @override
  Iterable<Object?> serialize(Serializers serializers,
      GgetLayoutSettingsData_getLayoutSettings_result_explore object,
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
    value = object.name;
    if (value != null) {
      result
        ..add('name')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.themeType;
    if (value != null) {
      result
        ..add('themeType')
        ..add(serializers.serialize(value, specifiedType: const FullType(int)));
    }
    value = object.orderType;
    if (value != null) {
      result
        ..add('orderType')
        ..add(serializers.serialize(value, specifiedType: const FullType(int)));
    }
    value = object.isEnable;
    if (value != null) {
      result
        ..add('isEnable')
        ..add(
            serializers.serialize(value, specifiedType: const FullType(bool)));
    }
    return result;
  }

  @override
  GgetLayoutSettingsData_getLayoutSettings_result_explore deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result =
        new GgetLayoutSettingsData_getLayoutSettings_result_exploreBuilder();

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
        case 'name':
          result.name = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'themeType':
          result.themeType = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int?;
          break;
        case 'orderType':
          result.orderType = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int?;
          break;
        case 'isEnable':
          result.isEnable = serializers.deserialize(value,
              specifiedType: const FullType(bool)) as bool?;
          break;
      }
    }

    return result.build();
  }
}

class _$GgetLayoutSettingsData extends GgetLayoutSettingsData {
  @override
  final String G__typename;
  @override
  final GgetLayoutSettingsData_getLayoutSettings? getLayoutSettings;

  factory _$GgetLayoutSettingsData(
          [void Function(GgetLayoutSettingsDataBuilder)? updates]) =>
      (new GgetLayoutSettingsDataBuilder()..update(updates))._build();

  _$GgetLayoutSettingsData._(
      {required this.G__typename, this.getLayoutSettings})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        G__typename, r'GgetLayoutSettingsData', 'G__typename');
  }

  @override
  GgetLayoutSettingsData rebuild(
          void Function(GgetLayoutSettingsDataBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GgetLayoutSettingsDataBuilder toBuilder() =>
      new GgetLayoutSettingsDataBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GgetLayoutSettingsData &&
        G__typename == other.G__typename &&
        getLayoutSettings == other.getLayoutSettings;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, G__typename.hashCode);
    _$hash = $jc(_$hash, getLayoutSettings.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'GgetLayoutSettingsData')
          ..add('G__typename', G__typename)
          ..add('getLayoutSettings', getLayoutSettings))
        .toString();
  }
}

class GgetLayoutSettingsDataBuilder
    implements Builder<GgetLayoutSettingsData, GgetLayoutSettingsDataBuilder> {
  _$GgetLayoutSettingsData? _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  GgetLayoutSettingsData_getLayoutSettingsBuilder? _getLayoutSettings;
  GgetLayoutSettingsData_getLayoutSettingsBuilder get getLayoutSettings =>
      _$this._getLayoutSettings ??=
          new GgetLayoutSettingsData_getLayoutSettingsBuilder();
  set getLayoutSettings(
          GgetLayoutSettingsData_getLayoutSettingsBuilder? getLayoutSettings) =>
      _$this._getLayoutSettings = getLayoutSettings;

  GgetLayoutSettingsDataBuilder() {
    GgetLayoutSettingsData._initializeBuilder(this);
  }

  GgetLayoutSettingsDataBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _G__typename = $v.G__typename;
      _getLayoutSettings = $v.getLayoutSettings?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GgetLayoutSettingsData other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GgetLayoutSettingsData;
  }

  @override
  void update(void Function(GgetLayoutSettingsDataBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GgetLayoutSettingsData build() => _build();

  _$GgetLayoutSettingsData _build() {
    _$GgetLayoutSettingsData _$result;
    try {
      _$result = _$v ??
          new _$GgetLayoutSettingsData._(
              G__typename: BuiltValueNullFieldError.checkNotNull(
                  G__typename, r'GgetLayoutSettingsData', 'G__typename'),
              getLayoutSettings: _getLayoutSettings?.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'getLayoutSettings';
        _getLayoutSettings?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'GgetLayoutSettingsData', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

class _$GgetLayoutSettingsData_getLayoutSettings
    extends GgetLayoutSettingsData_getLayoutSettings {
  @override
  final String G__typename;
  @override
  final int? status;
  @override
  final GgetLayoutSettingsData_getLayoutSettings_result? result;

  factory _$GgetLayoutSettingsData_getLayoutSettings(
          [void Function(GgetLayoutSettingsData_getLayoutSettingsBuilder)?
              updates]) =>
      (new GgetLayoutSettingsData_getLayoutSettingsBuilder()..update(updates))
          ._build();

  _$GgetLayoutSettingsData_getLayoutSettings._(
      {required this.G__typename, this.status, this.result})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(G__typename,
        r'GgetLayoutSettingsData_getLayoutSettings', 'G__typename');
  }

  @override
  GgetLayoutSettingsData_getLayoutSettings rebuild(
          void Function(GgetLayoutSettingsData_getLayoutSettingsBuilder)
              updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GgetLayoutSettingsData_getLayoutSettingsBuilder toBuilder() =>
      new GgetLayoutSettingsData_getLayoutSettingsBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GgetLayoutSettingsData_getLayoutSettings &&
        G__typename == other.G__typename &&
        status == other.status &&
        result == other.result;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, G__typename.hashCode);
    _$hash = $jc(_$hash, status.hashCode);
    _$hash = $jc(_$hash, result.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(
            r'GgetLayoutSettingsData_getLayoutSettings')
          ..add('G__typename', G__typename)
          ..add('status', status)
          ..add('result', result))
        .toString();
  }
}

class GgetLayoutSettingsData_getLayoutSettingsBuilder
    implements
        Builder<GgetLayoutSettingsData_getLayoutSettings,
            GgetLayoutSettingsData_getLayoutSettingsBuilder> {
  _$GgetLayoutSettingsData_getLayoutSettings? _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  int? _status;
  int? get status => _$this._status;
  set status(int? status) => _$this._status = status;

  GgetLayoutSettingsData_getLayoutSettings_resultBuilder? _result;
  GgetLayoutSettingsData_getLayoutSettings_resultBuilder get result =>
      _$this._result ??=
          new GgetLayoutSettingsData_getLayoutSettings_resultBuilder();
  set result(GgetLayoutSettingsData_getLayoutSettings_resultBuilder? result) =>
      _$this._result = result;

  GgetLayoutSettingsData_getLayoutSettingsBuilder() {
    GgetLayoutSettingsData_getLayoutSettings._initializeBuilder(this);
  }

  GgetLayoutSettingsData_getLayoutSettingsBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _G__typename = $v.G__typename;
      _status = $v.status;
      _result = $v.result?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GgetLayoutSettingsData_getLayoutSettings other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GgetLayoutSettingsData_getLayoutSettings;
  }

  @override
  void update(
      void Function(GgetLayoutSettingsData_getLayoutSettingsBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GgetLayoutSettingsData_getLayoutSettings build() => _build();

  _$GgetLayoutSettingsData_getLayoutSettings _build() {
    _$GgetLayoutSettingsData_getLayoutSettings _$result;
    try {
      _$result = _$v ??
          new _$GgetLayoutSettingsData_getLayoutSettings._(
              G__typename: BuiltValueNullFieldError.checkNotNull(G__typename,
                  r'GgetLayoutSettingsData_getLayoutSettings', 'G__typename'),
              status: status,
              result: _result?.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'result';
        _result?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'GgetLayoutSettingsData_getLayoutSettings',
            _$failedField,
            e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

class _$GgetLayoutSettingsData_getLayoutSettings_result
    extends GgetLayoutSettingsData_getLayoutSettings_result {
  @override
  final String G__typename;
  @override
  final BuiltList<GgetLayoutSettingsData_getLayoutSettings_result_theme?>?
      theme;
  @override
  final BuiltList<GgetLayoutSettingsData_getLayoutSettings_result_explore?>?
      explore;

  factory _$GgetLayoutSettingsData_getLayoutSettings_result(
          [void Function(
                  GgetLayoutSettingsData_getLayoutSettings_resultBuilder)?
              updates]) =>
      (new GgetLayoutSettingsData_getLayoutSettings_resultBuilder()
            ..update(updates))
          ._build();

  _$GgetLayoutSettingsData_getLayoutSettings_result._(
      {required this.G__typename, this.theme, this.explore})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(G__typename,
        r'GgetLayoutSettingsData_getLayoutSettings_result', 'G__typename');
  }

  @override
  GgetLayoutSettingsData_getLayoutSettings_result rebuild(
          void Function(GgetLayoutSettingsData_getLayoutSettings_resultBuilder)
              updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GgetLayoutSettingsData_getLayoutSettings_resultBuilder toBuilder() =>
      new GgetLayoutSettingsData_getLayoutSettings_resultBuilder()
        ..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GgetLayoutSettingsData_getLayoutSettings_result &&
        G__typename == other.G__typename &&
        theme == other.theme &&
        explore == other.explore;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, G__typename.hashCode);
    _$hash = $jc(_$hash, theme.hashCode);
    _$hash = $jc(_$hash, explore.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(
            r'GgetLayoutSettingsData_getLayoutSettings_result')
          ..add('G__typename', G__typename)
          ..add('theme', theme)
          ..add('explore', explore))
        .toString();
  }
}

class GgetLayoutSettingsData_getLayoutSettings_resultBuilder
    implements
        Builder<GgetLayoutSettingsData_getLayoutSettings_result,
            GgetLayoutSettingsData_getLayoutSettings_resultBuilder> {
  _$GgetLayoutSettingsData_getLayoutSettings_result? _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  ListBuilder<GgetLayoutSettingsData_getLayoutSettings_result_theme?>? _theme;
  ListBuilder<GgetLayoutSettingsData_getLayoutSettings_result_theme?>
      get theme => _$this._theme ??= new ListBuilder<
          GgetLayoutSettingsData_getLayoutSettings_result_theme?>();
  set theme(
          ListBuilder<GgetLayoutSettingsData_getLayoutSettings_result_theme?>?
              theme) =>
      _$this._theme = theme;

  ListBuilder<GgetLayoutSettingsData_getLayoutSettings_result_explore?>?
      _explore;
  ListBuilder<GgetLayoutSettingsData_getLayoutSettings_result_explore?>
      get explore => _$this._explore ??= new ListBuilder<
          GgetLayoutSettingsData_getLayoutSettings_result_explore?>();
  set explore(
          ListBuilder<GgetLayoutSettingsData_getLayoutSettings_result_explore?>?
              explore) =>
      _$this._explore = explore;

  GgetLayoutSettingsData_getLayoutSettings_resultBuilder() {
    GgetLayoutSettingsData_getLayoutSettings_result._initializeBuilder(this);
  }

  GgetLayoutSettingsData_getLayoutSettings_resultBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _G__typename = $v.G__typename;
      _theme = $v.theme?.toBuilder();
      _explore = $v.explore?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GgetLayoutSettingsData_getLayoutSettings_result other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GgetLayoutSettingsData_getLayoutSettings_result;
  }

  @override
  void update(
      void Function(GgetLayoutSettingsData_getLayoutSettings_resultBuilder)?
          updates) {
    if (updates != null) updates(this);
  }

  @override
  GgetLayoutSettingsData_getLayoutSettings_result build() => _build();

  _$GgetLayoutSettingsData_getLayoutSettings_result _build() {
    _$GgetLayoutSettingsData_getLayoutSettings_result _$result;
    try {
      _$result = _$v ??
          new _$GgetLayoutSettingsData_getLayoutSettings_result._(
              G__typename: BuiltValueNullFieldError.checkNotNull(
                  G__typename,
                  r'GgetLayoutSettingsData_getLayoutSettings_result',
                  'G__typename'),
              theme: _theme?.build(),
              explore: _explore?.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'theme';
        _theme?.build();
        _$failedField = 'explore';
        _explore?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'GgetLayoutSettingsData_getLayoutSettings_result',
            _$failedField,
            e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

class _$GgetLayoutSettingsData_getLayoutSettings_result_theme
    extends GgetLayoutSettingsData_getLayoutSettings_result_theme {
  @override
  final String G__typename;
  @override
  final int? id;
  @override
  final String? name;
  @override
  final int? themeType;
  @override
  final int? orderType;
  @override
  final bool? isEnable;

  factory _$GgetLayoutSettingsData_getLayoutSettings_result_theme(
          [void Function(
                  GgetLayoutSettingsData_getLayoutSettings_result_themeBuilder)?
              updates]) =>
      (new GgetLayoutSettingsData_getLayoutSettings_result_themeBuilder()
            ..update(updates))
          ._build();

  _$GgetLayoutSettingsData_getLayoutSettings_result_theme._(
      {required this.G__typename,
      this.id,
      this.name,
      this.themeType,
      this.orderType,
      this.isEnable})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        G__typename,
        r'GgetLayoutSettingsData_getLayoutSettings_result_theme',
        'G__typename');
  }

  @override
  GgetLayoutSettingsData_getLayoutSettings_result_theme rebuild(
          void Function(
                  GgetLayoutSettingsData_getLayoutSettings_result_themeBuilder)
              updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GgetLayoutSettingsData_getLayoutSettings_result_themeBuilder toBuilder() =>
      new GgetLayoutSettingsData_getLayoutSettings_result_themeBuilder()
        ..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GgetLayoutSettingsData_getLayoutSettings_result_theme &&
        G__typename == other.G__typename &&
        id == other.id &&
        name == other.name &&
        themeType == other.themeType &&
        orderType == other.orderType &&
        isEnable == other.isEnable;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, G__typename.hashCode);
    _$hash = $jc(_$hash, id.hashCode);
    _$hash = $jc(_$hash, name.hashCode);
    _$hash = $jc(_$hash, themeType.hashCode);
    _$hash = $jc(_$hash, orderType.hashCode);
    _$hash = $jc(_$hash, isEnable.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(
            r'GgetLayoutSettingsData_getLayoutSettings_result_theme')
          ..add('G__typename', G__typename)
          ..add('id', id)
          ..add('name', name)
          ..add('themeType', themeType)
          ..add('orderType', orderType)
          ..add('isEnable', isEnable))
        .toString();
  }
}

class GgetLayoutSettingsData_getLayoutSettings_result_themeBuilder
    implements
        Builder<GgetLayoutSettingsData_getLayoutSettings_result_theme,
            GgetLayoutSettingsData_getLayoutSettings_result_themeBuilder> {
  _$GgetLayoutSettingsData_getLayoutSettings_result_theme? _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  int? _id;
  int? get id => _$this._id;
  set id(int? id) => _$this._id = id;

  String? _name;
  String? get name => _$this._name;
  set name(String? name) => _$this._name = name;

  int? _themeType;
  int? get themeType => _$this._themeType;
  set themeType(int? themeType) => _$this._themeType = themeType;

  int? _orderType;
  int? get orderType => _$this._orderType;
  set orderType(int? orderType) => _$this._orderType = orderType;

  bool? _isEnable;
  bool? get isEnable => _$this._isEnable;
  set isEnable(bool? isEnable) => _$this._isEnable = isEnable;

  GgetLayoutSettingsData_getLayoutSettings_result_themeBuilder() {
    GgetLayoutSettingsData_getLayoutSettings_result_theme._initializeBuilder(
        this);
  }

  GgetLayoutSettingsData_getLayoutSettings_result_themeBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _G__typename = $v.G__typename;
      _id = $v.id;
      _name = $v.name;
      _themeType = $v.themeType;
      _orderType = $v.orderType;
      _isEnable = $v.isEnable;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GgetLayoutSettingsData_getLayoutSettings_result_theme other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GgetLayoutSettingsData_getLayoutSettings_result_theme;
  }

  @override
  void update(
      void Function(
              GgetLayoutSettingsData_getLayoutSettings_result_themeBuilder)?
          updates) {
    if (updates != null) updates(this);
  }

  @override
  GgetLayoutSettingsData_getLayoutSettings_result_theme build() => _build();

  _$GgetLayoutSettingsData_getLayoutSettings_result_theme _build() {
    final _$result = _$v ??
        new _$GgetLayoutSettingsData_getLayoutSettings_result_theme._(
            G__typename: BuiltValueNullFieldError.checkNotNull(
                G__typename,
                r'GgetLayoutSettingsData_getLayoutSettings_result_theme',
                'G__typename'),
            id: id,
            name: name,
            themeType: themeType,
            orderType: orderType,
            isEnable: isEnable);
    replace(_$result);
    return _$result;
  }
}

class _$GgetLayoutSettingsData_getLayoutSettings_result_explore
    extends GgetLayoutSettingsData_getLayoutSettings_result_explore {
  @override
  final String G__typename;
  @override
  final int? id;
  @override
  final String? name;
  @override
  final int? themeType;
  @override
  final int? orderType;
  @override
  final bool? isEnable;

  factory _$GgetLayoutSettingsData_getLayoutSettings_result_explore(
          [void Function(
                  GgetLayoutSettingsData_getLayoutSettings_result_exploreBuilder)?
              updates]) =>
      (new GgetLayoutSettingsData_getLayoutSettings_result_exploreBuilder()
            ..update(updates))
          ._build();

  _$GgetLayoutSettingsData_getLayoutSettings_result_explore._(
      {required this.G__typename,
      this.id,
      this.name,
      this.themeType,
      this.orderType,
      this.isEnable})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        G__typename,
        r'GgetLayoutSettingsData_getLayoutSettings_result_explore',
        'G__typename');
  }

  @override
  GgetLayoutSettingsData_getLayoutSettings_result_explore rebuild(
          void Function(
                  GgetLayoutSettingsData_getLayoutSettings_result_exploreBuilder)
              updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GgetLayoutSettingsData_getLayoutSettings_result_exploreBuilder toBuilder() =>
      new GgetLayoutSettingsData_getLayoutSettings_result_exploreBuilder()
        ..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GgetLayoutSettingsData_getLayoutSettings_result_explore &&
        G__typename == other.G__typename &&
        id == other.id &&
        name == other.name &&
        themeType == other.themeType &&
        orderType == other.orderType &&
        isEnable == other.isEnable;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, G__typename.hashCode);
    _$hash = $jc(_$hash, id.hashCode);
    _$hash = $jc(_$hash, name.hashCode);
    _$hash = $jc(_$hash, themeType.hashCode);
    _$hash = $jc(_$hash, orderType.hashCode);
    _$hash = $jc(_$hash, isEnable.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(
            r'GgetLayoutSettingsData_getLayoutSettings_result_explore')
          ..add('G__typename', G__typename)
          ..add('id', id)
          ..add('name', name)
          ..add('themeType', themeType)
          ..add('orderType', orderType)
          ..add('isEnable', isEnable))
        .toString();
  }
}

class GgetLayoutSettingsData_getLayoutSettings_result_exploreBuilder
    implements
        Builder<GgetLayoutSettingsData_getLayoutSettings_result_explore,
            GgetLayoutSettingsData_getLayoutSettings_result_exploreBuilder> {
  _$GgetLayoutSettingsData_getLayoutSettings_result_explore? _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  int? _id;
  int? get id => _$this._id;
  set id(int? id) => _$this._id = id;

  String? _name;
  String? get name => _$this._name;
  set name(String? name) => _$this._name = name;

  int? _themeType;
  int? get themeType => _$this._themeType;
  set themeType(int? themeType) => _$this._themeType = themeType;

  int? _orderType;
  int? get orderType => _$this._orderType;
  set orderType(int? orderType) => _$this._orderType = orderType;

  bool? _isEnable;
  bool? get isEnable => _$this._isEnable;
  set isEnable(bool? isEnable) => _$this._isEnable = isEnable;

  GgetLayoutSettingsData_getLayoutSettings_result_exploreBuilder() {
    GgetLayoutSettingsData_getLayoutSettings_result_explore._initializeBuilder(
        this);
  }

  GgetLayoutSettingsData_getLayoutSettings_result_exploreBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _G__typename = $v.G__typename;
      _id = $v.id;
      _name = $v.name;
      _themeType = $v.themeType;
      _orderType = $v.orderType;
      _isEnable = $v.isEnable;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GgetLayoutSettingsData_getLayoutSettings_result_explore other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GgetLayoutSettingsData_getLayoutSettings_result_explore;
  }

  @override
  void update(
      void Function(
              GgetLayoutSettingsData_getLayoutSettings_result_exploreBuilder)?
          updates) {
    if (updates != null) updates(this);
  }

  @override
  GgetLayoutSettingsData_getLayoutSettings_result_explore build() => _build();

  _$GgetLayoutSettingsData_getLayoutSettings_result_explore _build() {
    final _$result = _$v ??
        new _$GgetLayoutSettingsData_getLayoutSettings_result_explore._(
            G__typename: BuiltValueNullFieldError.checkNotNull(
                G__typename,
                r'GgetLayoutSettingsData_getLayoutSettings_result_explore',
                'G__typename'),
            id: id,
            name: name,
            themeType: themeType,
            orderType: orderType,
            isEnable: isEnable);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
