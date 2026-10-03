// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'filter_data.var.gql.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<GgetListingSettingsCommonVars>
    _$ggetListingSettingsCommonVarsSerializer =
    new _$GgetListingSettingsCommonVarsSerializer();
Serializer<GgetListSettingsItemNameVars>
    _$ggetListSettingsItemNameVarsSerializer =
    new _$GgetListSettingsItemNameVarsSerializer();

class _$GgetListingSettingsCommonVarsSerializer
    implements StructuredSerializer<GgetListingSettingsCommonVars> {
  @override
  final Iterable<Type> types = const [
    GgetListingSettingsCommonVars,
    _$GgetListingSettingsCommonVars
  ];
  @override
  final String wireName = 'GgetListingSettingsCommonVars';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, GgetListingSettingsCommonVars object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[];
    Object? value;
    value = object.isValue;
    if (value != null) {
      result
        ..add('isValue')
        ..add(
            serializers.serialize(value, specifiedType: const FullType(bool)));
    }
    return result;
  }

  @override
  GgetListingSettingsCommonVars deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GgetListingSettingsCommonVarsBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'isValue':
          result.isValue = serializers.deserialize(value,
              specifiedType: const FullType(bool)) as bool?;
          break;
      }
    }

    return result.build();
  }
}

class _$GgetListSettingsItemNameVarsSerializer
    implements StructuredSerializer<GgetListSettingsItemNameVars> {
  @override
  final Iterable<Type> types = const [
    GgetListSettingsItemNameVars,
    _$GgetListSettingsItemNameVars
  ];
  @override
  final String wireName = 'GgetListSettingsItemNameVars';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, GgetListSettingsItemNameVars object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[];
    Object? value;
    value = object.typeName;
    if (value != null) {
      result
        ..add('typeName')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.searchList;
    if (value != null) {
      result
        ..add('searchList')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.currentPage;
    if (value != null) {
      result
        ..add('currentPage')
        ..add(serializers.serialize(value, specifiedType: const FullType(int)));
    }
    value = object.makeId;
    if (value != null) {
      result
        ..add('makeId')
        ..add(serializers.serialize(value, specifiedType: const FullType(int)));
    }
    return result;
  }

  @override
  GgetListSettingsItemNameVars deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GgetListSettingsItemNameVarsBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'typeName':
          result.typeName = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'searchList':
          result.searchList = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'currentPage':
          result.currentPage = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int?;
          break;
        case 'makeId':
          result.makeId = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int?;
          break;
      }
    }

    return result.build();
  }
}

class _$GgetListingSettingsCommonVars extends GgetListingSettingsCommonVars {
  @override
  final bool? isValue;

  factory _$GgetListingSettingsCommonVars(
          [void Function(GgetListingSettingsCommonVarsBuilder)? updates]) =>
      (new GgetListingSettingsCommonVarsBuilder()..update(updates))._build();

  _$GgetListingSettingsCommonVars._({this.isValue}) : super._();

  @override
  GgetListingSettingsCommonVars rebuild(
          void Function(GgetListingSettingsCommonVarsBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GgetListingSettingsCommonVarsBuilder toBuilder() =>
      new GgetListingSettingsCommonVarsBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GgetListingSettingsCommonVars && isValue == other.isValue;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, isValue.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'GgetListingSettingsCommonVars')
          ..add('isValue', isValue))
        .toString();
  }
}

class GgetListingSettingsCommonVarsBuilder
    implements
        Builder<GgetListingSettingsCommonVars,
            GgetListingSettingsCommonVarsBuilder> {
  _$GgetListingSettingsCommonVars? _$v;

  bool? _isValue;
  bool? get isValue => _$this._isValue;
  set isValue(bool? isValue) => _$this._isValue = isValue;

  GgetListingSettingsCommonVarsBuilder();

  GgetListingSettingsCommonVarsBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _isValue = $v.isValue;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GgetListingSettingsCommonVars other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GgetListingSettingsCommonVars;
  }

  @override
  void update(void Function(GgetListingSettingsCommonVarsBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GgetListingSettingsCommonVars build() => _build();

  _$GgetListingSettingsCommonVars _build() {
    final _$result =
        _$v ?? new _$GgetListingSettingsCommonVars._(isValue: isValue);
    replace(_$result);
    return _$result;
  }
}

class _$GgetListSettingsItemNameVars extends GgetListSettingsItemNameVars {
  @override
  final String? typeName;
  @override
  final String? searchList;
  @override
  final int? currentPage;
  @override
  final int? makeId;

  factory _$GgetListSettingsItemNameVars(
          [void Function(GgetListSettingsItemNameVarsBuilder)? updates]) =>
      (new GgetListSettingsItemNameVarsBuilder()..update(updates))._build();

  _$GgetListSettingsItemNameVars._(
      {this.typeName, this.searchList, this.currentPage, this.makeId})
      : super._();

  @override
  GgetListSettingsItemNameVars rebuild(
          void Function(GgetListSettingsItemNameVarsBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GgetListSettingsItemNameVarsBuilder toBuilder() =>
      new GgetListSettingsItemNameVarsBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GgetListSettingsItemNameVars &&
        typeName == other.typeName &&
        searchList == other.searchList &&
        currentPage == other.currentPage &&
        makeId == other.makeId;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, typeName.hashCode);
    _$hash = $jc(_$hash, searchList.hashCode);
    _$hash = $jc(_$hash, currentPage.hashCode);
    _$hash = $jc(_$hash, makeId.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'GgetListSettingsItemNameVars')
          ..add('typeName', typeName)
          ..add('searchList', searchList)
          ..add('currentPage', currentPage)
          ..add('makeId', makeId))
        .toString();
  }
}

class GgetListSettingsItemNameVarsBuilder
    implements
        Builder<GgetListSettingsItemNameVars,
            GgetListSettingsItemNameVarsBuilder> {
  _$GgetListSettingsItemNameVars? _$v;

  String? _typeName;
  String? get typeName => _$this._typeName;
  set typeName(String? typeName) => _$this._typeName = typeName;

  String? _searchList;
  String? get searchList => _$this._searchList;
  set searchList(String? searchList) => _$this._searchList = searchList;

  int? _currentPage;
  int? get currentPage => _$this._currentPage;
  set currentPage(int? currentPage) => _$this._currentPage = currentPage;

  int? _makeId;
  int? get makeId => _$this._makeId;
  set makeId(int? makeId) => _$this._makeId = makeId;

  GgetListSettingsItemNameVarsBuilder();

  GgetListSettingsItemNameVarsBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _typeName = $v.typeName;
      _searchList = $v.searchList;
      _currentPage = $v.currentPage;
      _makeId = $v.makeId;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GgetListSettingsItemNameVars other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GgetListSettingsItemNameVars;
  }

  @override
  void update(void Function(GgetListSettingsItemNameVarsBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GgetListSettingsItemNameVars build() => _build();

  _$GgetListSettingsItemNameVars _build() {
    final _$result = _$v ??
        new _$GgetListSettingsItemNameVars._(
            typeName: typeName,
            searchList: searchList,
            currentPage: currentPage,
            makeId: makeId);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
