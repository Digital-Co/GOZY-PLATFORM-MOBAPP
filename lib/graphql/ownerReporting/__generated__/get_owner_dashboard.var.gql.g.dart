// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'get_owner_dashboard.var.gql.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<GgetOwnerDashboardVars> _$ggetOwnerDashboardVarsSerializer =
    new _$GgetOwnerDashboardVarsSerializer();

class _$GgetOwnerDashboardVarsSerializer
    implements StructuredSerializer<GgetOwnerDashboardVars> {
  @override
  final Iterable<Type> types = const [
    GgetOwnerDashboardVars,
    _$GgetOwnerDashboardVars
  ];
  @override
  final String wireName = 'GgetOwnerDashboardVars';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, GgetOwnerDashboardVars object,
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
  GgetOwnerDashboardVars deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GgetOwnerDashboardVarsBuilder();

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

class _$GgetOwnerDashboardVars extends GgetOwnerDashboardVars {
  @override
  final String? period;
  @override
  final String? startDate;
  @override
  final String? endDate;
  @override
  final int? listId;
  @override
  final String? granularity;
  @override
  final String? convertCurrency;

  factory _$GgetOwnerDashboardVars(
          [void Function(GgetOwnerDashboardVarsBuilder)? updates]) =>
      (new GgetOwnerDashboardVarsBuilder()..update(updates))._build();

  _$GgetOwnerDashboardVars._(
      {this.period,
      this.startDate,
      this.endDate,
      this.listId,
      this.granularity,
      this.convertCurrency})
      : super._();

  @override
  GgetOwnerDashboardVars rebuild(
          void Function(GgetOwnerDashboardVarsBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GgetOwnerDashboardVarsBuilder toBuilder() =>
      new GgetOwnerDashboardVarsBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GgetOwnerDashboardVars &&
        period == other.period &&
        startDate == other.startDate &&
        endDate == other.endDate &&
        listId == other.listId &&
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
    _$hash = $jc(_$hash, granularity.hashCode);
    _$hash = $jc(_$hash, convertCurrency.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'GgetOwnerDashboardVars')
          ..add('period', period)
          ..add('startDate', startDate)
          ..add('endDate', endDate)
          ..add('listId', listId)
          ..add('granularity', granularity)
          ..add('convertCurrency', convertCurrency))
        .toString();
  }
}

class GgetOwnerDashboardVarsBuilder
    implements Builder<GgetOwnerDashboardVars, GgetOwnerDashboardVarsBuilder> {
  _$GgetOwnerDashboardVars? _$v;

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

  String? _granularity;
  String? get granularity => _$this._granularity;
  set granularity(String? granularity) => _$this._granularity = granularity;

  String? _convertCurrency;
  String? get convertCurrency => _$this._convertCurrency;
  set convertCurrency(String? convertCurrency) =>
      _$this._convertCurrency = convertCurrency;

  GgetOwnerDashboardVarsBuilder();

  GgetOwnerDashboardVarsBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _period = $v.period;
      _startDate = $v.startDate;
      _endDate = $v.endDate;
      _listId = $v.listId;
      _granularity = $v.granularity;
      _convertCurrency = $v.convertCurrency;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GgetOwnerDashboardVars other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GgetOwnerDashboardVars;
  }

  @override
  void update(void Function(GgetOwnerDashboardVarsBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GgetOwnerDashboardVars build() => _build();

  _$GgetOwnerDashboardVars _build() {
    final _$result = _$v ??
        new _$GgetOwnerDashboardVars._(
            period: period,
            startDate: startDate,
            endDate: endDate,
            listId: listId,
            granularity: granularity,
            convertCurrency: convertCurrency);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
