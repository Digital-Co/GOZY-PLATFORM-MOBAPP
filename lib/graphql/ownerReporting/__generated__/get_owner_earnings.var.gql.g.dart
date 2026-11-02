// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'get_owner_earnings.var.gql.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<GgetOwnerEarningsVars> _$ggetOwnerEarningsVarsSerializer =
    new _$GgetOwnerEarningsVarsSerializer();

class _$GgetOwnerEarningsVarsSerializer
    implements StructuredSerializer<GgetOwnerEarningsVars> {
  @override
  final Iterable<Type> types = const [
    GgetOwnerEarningsVars,
    _$GgetOwnerEarningsVars
  ];
  @override
  final String wireName = 'GgetOwnerEarningsVars';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, GgetOwnerEarningsVars object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[];
    Object? value;
    value = object.period;
    if (value != null) {
      result
        ..add('period')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.startDate;
    if (value != null) {
      result
        ..add('startDate')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.endDate;
    if (value != null) {
      result
        ..add('endDate')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.listId;
    if (value != null) {
      result
        ..add('listId')
        ..add(serializers.serialize(value, specifiedType: const FullType(int)));
    }
    value = object.tab;
    if (value != null) {
      result
        ..add('tab')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.search;
    if (value != null) {
      result
        ..add('search')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.sortBy;
    if (value != null) {
      result
        ..add('sortBy')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.sortDir;
    if (value != null) {
      result
        ..add('sortDir')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.page;
    if (value != null) {
      result
        ..add('page')
        ..add(serializers.serialize(value, specifiedType: const FullType(int)));
    }
    value = object.pageSize;
    if (value != null) {
      result
        ..add('pageSize')
        ..add(serializers.serialize(value, specifiedType: const FullType(int)));
    }
    value = object.granularity;
    if (value != null) {
      result
        ..add('granularity')
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
  GgetOwnerEarningsVars deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GgetOwnerEarningsVarsBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'period':
          result.period = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'startDate':
          result.startDate = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'endDate':
          result.endDate = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'listId':
          result.listId = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int?;
          break;
        case 'tab':
          result.tab = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'search':
          result.search = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'sortBy':
          result.sortBy = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'sortDir':
          result.sortDir = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'page':
          result.page = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int?;
          break;
        case 'pageSize':
          result.pageSize = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int?;
          break;
        case 'granularity':
          result.granularity = serializers.deserialize(value,
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

class _$GgetOwnerEarningsVars extends GgetOwnerEarningsVars {
  @override
  final String? period;
  @override
  final String? startDate;
  @override
  final String? endDate;
  @override
  final int? listId;
  @override
  final String? tab;
  @override
  final String? search;
  @override
  final String? sortBy;
  @override
  final String? sortDir;
  @override
  final int? page;
  @override
  final int? pageSize;
  @override
  final String? granularity;
  @override
  final String? convertCurrency;

  factory _$GgetOwnerEarningsVars(
          [void Function(GgetOwnerEarningsVarsBuilder)? updates]) =>
      (new GgetOwnerEarningsVarsBuilder()..update(updates))._build();

  _$GgetOwnerEarningsVars._(
      {this.period,
      this.startDate,
      this.endDate,
      this.listId,
      this.tab,
      this.search,
      this.sortBy,
      this.sortDir,
      this.page,
      this.pageSize,
      this.granularity,
      this.convertCurrency})
      : super._();

  @override
  GgetOwnerEarningsVars rebuild(
          void Function(GgetOwnerEarningsVarsBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GgetOwnerEarningsVarsBuilder toBuilder() =>
      new GgetOwnerEarningsVarsBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GgetOwnerEarningsVars &&
        period == other.period &&
        startDate == other.startDate &&
        endDate == other.endDate &&
        listId == other.listId &&
        tab == other.tab &&
        search == other.search &&
        sortBy == other.sortBy &&
        sortDir == other.sortDir &&
        page == other.page &&
        pageSize == other.pageSize &&
        granularity == other.granularity &&
        convertCurrency == other.convertCurrency;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, period.hashCode);
    _$hash = $jc(_$hash, startDate.hashCode);
    _$hash = $jc(_$hash, endDate.hashCode);
    _$hash = $jc(_$hash, listId.hashCode);
    _$hash = $jc(_$hash, tab.hashCode);
    _$hash = $jc(_$hash, search.hashCode);
    _$hash = $jc(_$hash, sortBy.hashCode);
    _$hash = $jc(_$hash, sortDir.hashCode);
    _$hash = $jc(_$hash, page.hashCode);
    _$hash = $jc(_$hash, pageSize.hashCode);
    _$hash = $jc(_$hash, granularity.hashCode);
    _$hash = $jc(_$hash, convertCurrency.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'GgetOwnerEarningsVars')
          ..add('period', period)
          ..add('startDate', startDate)
          ..add('endDate', endDate)
          ..add('listId', listId)
          ..add('tab', tab)
          ..add('search', search)
          ..add('sortBy', sortBy)
          ..add('sortDir', sortDir)
          ..add('page', page)
          ..add('pageSize', pageSize)
          ..add('granularity', granularity)
          ..add('convertCurrency', convertCurrency))
        .toString();
  }
}

class GgetOwnerEarningsVarsBuilder
    implements Builder<GgetOwnerEarningsVars, GgetOwnerEarningsVarsBuilder> {
  _$GgetOwnerEarningsVars? _$v;

  String? _period;
  String? get period => _$this._period;
  set period(String? period) => _$this._period = period;

  String? _startDate;
  String? get startDate => _$this._startDate;
  set startDate(String? startDate) => _$this._startDate = startDate;

  String? _endDate;
  String? get endDate => _$this._endDate;
  set endDate(String? endDate) => _$this._endDate = endDate;

  int? _listId;
  int? get listId => _$this._listId;
  set listId(int? listId) => _$this._listId = listId;

  String? _tab;
  String? get tab => _$this._tab;
  set tab(String? tab) => _$this._tab = tab;

  String? _search;
  String? get search => _$this._search;
  set search(String? search) => _$this._search = search;

  String? _sortBy;
  String? get sortBy => _$this._sortBy;
  set sortBy(String? sortBy) => _$this._sortBy = sortBy;

  String? _sortDir;
  String? get sortDir => _$this._sortDir;
  set sortDir(String? sortDir) => _$this._sortDir = sortDir;

  int? _page;
  int? get page => _$this._page;
  set page(int? page) => _$this._page = page;

  int? _pageSize;
  int? get pageSize => _$this._pageSize;
  set pageSize(int? pageSize) => _$this._pageSize = pageSize;

  String? _granularity;
  String? get granularity => _$this._granularity;
  set granularity(String? granularity) => _$this._granularity = granularity;

  String? _convertCurrency;
  String? get convertCurrency => _$this._convertCurrency;
  set convertCurrency(String? convertCurrency) =>
      _$this._convertCurrency = convertCurrency;

  GgetOwnerEarningsVarsBuilder();

  GgetOwnerEarningsVarsBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _period = $v.period;
      _startDate = $v.startDate;
      _endDate = $v.endDate;
      _listId = $v.listId;
      _tab = $v.tab;
      _search = $v.search;
      _sortBy = $v.sortBy;
      _sortDir = $v.sortDir;
      _page = $v.page;
      _pageSize = $v.pageSize;
      _granularity = $v.granularity;
      _convertCurrency = $v.convertCurrency;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GgetOwnerEarningsVars other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GgetOwnerEarningsVars;
  }

  @override
  void update(void Function(GgetOwnerEarningsVarsBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GgetOwnerEarningsVars build() => _build();

  _$GgetOwnerEarningsVars _build() {
    final _$result = _$v ??
        new _$GgetOwnerEarningsVars._(
            period: period,
            startDate: startDate,
            endDate: endDate,
            listId: listId,
            tab: tab,
            search: search,
            sortBy: sortBy,
            sortDir: sortDir,
            page: page,
            pageSize: pageSize,
            granularity: granularity,
            convertCurrency: convertCurrency);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
