// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'getAllPurchaseServicePlan.var.gql.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<GgetAllPurchaseServicePlanVars>
    _$ggetAllPurchaseServicePlanVarsSerializer =
    new _$GgetAllPurchaseServicePlanVarsSerializer();

class _$GgetAllPurchaseServicePlanVarsSerializer
    implements StructuredSerializer<GgetAllPurchaseServicePlanVars> {
  @override
  final Iterable<Type> types = const [
    GgetAllPurchaseServicePlanVars,
    _$GgetAllPurchaseServicePlanVars
  ];
  @override
  final String wireName = 'GgetAllPurchaseServicePlanVars';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, GgetAllPurchaseServicePlanVars object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[];
    Object? value;
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
    value = object.userType;
    if (value != null) {
      result
        ..add('userType')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    return result;
  }

  @override
  GgetAllPurchaseServicePlanVars deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GgetAllPurchaseServicePlanVarsBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'currentPage':
          result.currentPage = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int?;
          break;
        case 'searchKey':
          result.searchKey = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'userType':
          result.userType = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
      }
    }

    return result.build();
  }
}

class _$GgetAllPurchaseServicePlanVars extends GgetAllPurchaseServicePlanVars {
  @override
  final int? currentPage;
  @override
  final String? searchKey;
  @override
  final String? userType;

  factory _$GgetAllPurchaseServicePlanVars(
          [void Function(GgetAllPurchaseServicePlanVarsBuilder)? updates]) =>
      (new GgetAllPurchaseServicePlanVarsBuilder()..update(updates))._build();

  _$GgetAllPurchaseServicePlanVars._(
      {this.currentPage, this.searchKey, this.userType})
      : super._();

  @override
  GgetAllPurchaseServicePlanVars rebuild(
          void Function(GgetAllPurchaseServicePlanVarsBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GgetAllPurchaseServicePlanVarsBuilder toBuilder() =>
      new GgetAllPurchaseServicePlanVarsBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GgetAllPurchaseServicePlanVars &&
        currentPage == other.currentPage &&
        searchKey == other.searchKey &&
        userType == other.userType;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, currentPage.hashCode);
    _$hash = $jc(_$hash, searchKey.hashCode);
    _$hash = $jc(_$hash, userType.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'GgetAllPurchaseServicePlanVars')
          ..add('currentPage', currentPage)
          ..add('searchKey', searchKey)
          ..add('userType', userType))
        .toString();
  }
}

class GgetAllPurchaseServicePlanVarsBuilder
    implements
        Builder<GgetAllPurchaseServicePlanVars,
            GgetAllPurchaseServicePlanVarsBuilder> {
  _$GgetAllPurchaseServicePlanVars? _$v;

  int? _currentPage;
  int? get currentPage => _$this._currentPage;
  set currentPage(int? currentPage) => _$this._currentPage = currentPage;

  String? _searchKey;
  String? get searchKey => _$this._searchKey;
  set searchKey(String? searchKey) => _$this._searchKey = searchKey;

  String? _userType;
  String? get userType => _$this._userType;
  set userType(String? userType) => _$this._userType = userType;

  GgetAllPurchaseServicePlanVarsBuilder();

  GgetAllPurchaseServicePlanVarsBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _currentPage = $v.currentPage;
      _searchKey = $v.searchKey;
      _userType = $v.userType;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GgetAllPurchaseServicePlanVars other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GgetAllPurchaseServicePlanVars;
  }

  @override
  void update(void Function(GgetAllPurchaseServicePlanVarsBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GgetAllPurchaseServicePlanVars build() => _build();

  _$GgetAllPurchaseServicePlanVars _build() {
    final _$result = _$v ??
        new _$GgetAllPurchaseServicePlanVars._(
            currentPage: currentPage, searchKey: searchKey, userType: userType);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
