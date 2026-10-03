// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'servicePlan.var.gql.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<GgetAllUserServicePlanVars> _$ggetAllUserServicePlanVarsSerializer =
    new _$GgetAllUserServicePlanVarsSerializer();

class _$GgetAllUserServicePlanVarsSerializer
    implements StructuredSerializer<GgetAllUserServicePlanVars> {
  @override
  final Iterable<Type> types = const [
    GgetAllUserServicePlanVars,
    _$GgetAllUserServicePlanVars
  ];
  @override
  final String wireName = 'GgetAllUserServicePlanVars';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, GgetAllUserServicePlanVars object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[];
    Object? value;
    value = object.userType;
    if (value != null) {
      result
        ..add('userType')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.currentPage;
    if (value != null) {
      result
        ..add('currentPage')
        ..add(serializers.serialize(value, specifiedType: const FullType(int)));
    }
    value = object.searchKey;
    if (value != null) {
      result
        ..add('searchKey')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    return result;
  }

  @override
  GgetAllUserServicePlanVars deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GgetAllUserServicePlanVarsBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'userType':
          result.userType = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'currentPage':
          result.currentPage = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int?;
          break;
        case 'searchKey':
          result.searchKey = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
      }
    }

    return result.build();
  }
}

class _$GgetAllUserServicePlanVars extends GgetAllUserServicePlanVars {
  @override
  final String? userType;
  @override
  final int? currentPage;
  @override
  final String? searchKey;

  factory _$GgetAllUserServicePlanVars(
          [void Function(GgetAllUserServicePlanVarsBuilder)? updates]) =>
      (new GgetAllUserServicePlanVarsBuilder()..update(updates))._build();

  _$GgetAllUserServicePlanVars._(
      {this.userType, this.currentPage, this.searchKey})
      : super._();

  @override
  GgetAllUserServicePlanVars rebuild(
          void Function(GgetAllUserServicePlanVarsBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GgetAllUserServicePlanVarsBuilder toBuilder() =>
      new GgetAllUserServicePlanVarsBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GgetAllUserServicePlanVars &&
        userType == other.userType &&
        currentPage == other.currentPage &&
        searchKey == other.searchKey;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, userType.hashCode);
    _$hash = $jc(_$hash, currentPage.hashCode);
    _$hash = $jc(_$hash, searchKey.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'GgetAllUserServicePlanVars')
          ..add('userType', userType)
          ..add('currentPage', currentPage)
          ..add('searchKey', searchKey))
        .toString();
  }
}

class GgetAllUserServicePlanVarsBuilder
    implements
        Builder<GgetAllUserServicePlanVars, GgetAllUserServicePlanVarsBuilder> {
  _$GgetAllUserServicePlanVars? _$v;

  String? _userType;
  String? get userType => _$this._userType;
  set userType(String? userType) => _$this._userType = userType;

  int? _currentPage;
  int? get currentPage => _$this._currentPage;
  set currentPage(int? currentPage) => _$this._currentPage = currentPage;

  String? _searchKey;
  String? get searchKey => _$this._searchKey;
  set searchKey(String? searchKey) => _$this._searchKey = searchKey;

  GgetAllUserServicePlanVarsBuilder();

  GgetAllUserServicePlanVarsBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _userType = $v.userType;
      _currentPage = $v.currentPage;
      _searchKey = $v.searchKey;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GgetAllUserServicePlanVars other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GgetAllUserServicePlanVars;
  }

  @override
  void update(void Function(GgetAllUserServicePlanVarsBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GgetAllUserServicePlanVars build() => _build();

  _$GgetAllUserServicePlanVars _build() {
    final _$result = _$v ??
        new _$GgetAllUserServicePlanVars._(
            userType: userType, currentPage: currentPage, searchKey: searchKey);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
