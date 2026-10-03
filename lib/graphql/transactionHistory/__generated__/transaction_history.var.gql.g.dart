// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'transaction_history.var.gql.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<GgetTransactionHistoryVars> _$ggetTransactionHistoryVarsSerializer =
    new _$GgetTransactionHistoryVarsSerializer();

class _$GgetTransactionHistoryVarsSerializer
    implements StructuredSerializer<GgetTransactionHistoryVars> {
  @override
  final Iterable<Type> types = const [
    GgetTransactionHistoryVars,
    _$GgetTransactionHistoryVars
  ];
  @override
  final String wireName = 'GgetTransactionHistoryVars';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, GgetTransactionHistoryVars object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[];
    Object? value;
    value = object.mode;
    if (value != null) {
      result
        ..add('mode')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.payoutId;
    if (value != null) {
      result
        ..add('payoutId')
        ..add(serializers.serialize(value, specifiedType: const FullType(int)));
    }
    value = object.listId;
    if (value != null) {
      result
        ..add('listId')
        ..add(serializers.serialize(value, specifiedType: const FullType(int)));
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
    value = object.convertCurrency;
    if (value != null) {
      result
        ..add('convertCurrency')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    return result;
  }

  @override
  GgetTransactionHistoryVars deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GgetTransactionHistoryVarsBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'mode':
          result.mode = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'payoutId':
          result.payoutId = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int?;
          break;
        case 'listId':
          result.listId = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int?;
          break;
        case 'currentPage':
          result.currentPage = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int?;
          break;
        case 'searchKey':
          result.searchKey = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'convertCurrency':
          result.convertCurrency = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
      }
    }

    return result.build();
  }
}

class _$GgetTransactionHistoryVars extends GgetTransactionHistoryVars {
  @override
  final String? mode;
  @override
  final int? payoutId;
  @override
  final int? listId;
  @override
  final int? currentPage;
  @override
  final String? searchKey;
  @override
  final String? convertCurrency;

  factory _$GgetTransactionHistoryVars(
          [void Function(GgetTransactionHistoryVarsBuilder)? updates]) =>
      (new GgetTransactionHistoryVarsBuilder()..update(updates))._build();

  _$GgetTransactionHistoryVars._(
      {this.mode,
      this.payoutId,
      this.listId,
      this.currentPage,
      this.searchKey,
      this.convertCurrency})
      : super._();

  @override
  GgetTransactionHistoryVars rebuild(
          void Function(GgetTransactionHistoryVarsBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GgetTransactionHistoryVarsBuilder toBuilder() =>
      new GgetTransactionHistoryVarsBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GgetTransactionHistoryVars &&
        mode == other.mode &&
        payoutId == other.payoutId &&
        listId == other.listId &&
        currentPage == other.currentPage &&
        searchKey == other.searchKey &&
        convertCurrency == other.convertCurrency;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, mode.hashCode);
    _$hash = $jc(_$hash, payoutId.hashCode);
    _$hash = $jc(_$hash, listId.hashCode);
    _$hash = $jc(_$hash, currentPage.hashCode);
    _$hash = $jc(_$hash, searchKey.hashCode);
    _$hash = $jc(_$hash, convertCurrency.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'GgetTransactionHistoryVars')
          ..add('mode', mode)
          ..add('payoutId', payoutId)
          ..add('listId', listId)
          ..add('currentPage', currentPage)
          ..add('searchKey', searchKey)
          ..add('convertCurrency', convertCurrency))
        .toString();
  }
}

class GgetTransactionHistoryVarsBuilder
    implements
        Builder<GgetTransactionHistoryVars, GgetTransactionHistoryVarsBuilder> {
  _$GgetTransactionHistoryVars? _$v;

  String? _mode;
  String? get mode => _$this._mode;
  set mode(String? mode) => _$this._mode = mode;

  int? _payoutId;
  int? get payoutId => _$this._payoutId;
  set payoutId(int? payoutId) => _$this._payoutId = payoutId;

  int? _listId;
  int? get listId => _$this._listId;
  set listId(int? listId) => _$this._listId = listId;

  int? _currentPage;
  int? get currentPage => _$this._currentPage;
  set currentPage(int? currentPage) => _$this._currentPage = currentPage;

  String? _searchKey;
  String? get searchKey => _$this._searchKey;
  set searchKey(String? searchKey) => _$this._searchKey = searchKey;

  String? _convertCurrency;
  String? get convertCurrency => _$this._convertCurrency;
  set convertCurrency(String? convertCurrency) =>
      _$this._convertCurrency = convertCurrency;

  GgetTransactionHistoryVarsBuilder();

  GgetTransactionHistoryVarsBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _mode = $v.mode;
      _payoutId = $v.payoutId;
      _listId = $v.listId;
      _currentPage = $v.currentPage;
      _searchKey = $v.searchKey;
      _convertCurrency = $v.convertCurrency;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GgetTransactionHistoryVars other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GgetTransactionHistoryVars;
  }

  @override
  void update(void Function(GgetTransactionHistoryVarsBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GgetTransactionHistoryVars build() => _build();

  _$GgetTransactionHistoryVars _build() {
    final _$result = _$v ??
        new _$GgetTransactionHistoryVars._(
            mode: mode,
            payoutId: payoutId,
            listId: listId,
            currentPage: currentPage,
            searchKey: searchKey,
            convertCurrency: convertCurrency);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
