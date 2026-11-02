// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'owner_reporting_period_fragment.data.gql.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<GownerReportingPeriodFragmentData>
    _$gownerReportingPeriodFragmentDataSerializer =
    new _$GownerReportingPeriodFragmentDataSerializer();

class _$GownerReportingPeriodFragmentDataSerializer
    implements StructuredSerializer<GownerReportingPeriodFragmentData> {
  @override
  final Iterable<Type> types = const [
    GownerReportingPeriodFragmentData,
    _$GownerReportingPeriodFragmentData
  ];
  @override
  final String wireName = 'GownerReportingPeriodFragmentData';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, GownerReportingPeriodFragmentData object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      '__typename',
      serializers.serialize(object.G__typename,
          specifiedType: const FullType(String)),
    ];
    Object? value;
    value = object.preset;
    if (value != null) {
      result
        ..add('preset')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.start;
    if (value != null) {
      result
        ..add('start')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.end;
    if (value != null) {
      result
        ..add('end')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.days;
    if (value != null) {
      result
        ..add('days')
        ..add(serializers.serialize(value, specifiedType: const FullType(int)));
    }
    value = object.previousStart;
    if (value != null) {
      result
        ..add('previousStart')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.previousEnd;
    if (value != null) {
      result
        ..add('previousEnd')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.previousDays;
    if (value != null) {
      result
        ..add('previousDays')
        ..add(serializers.serialize(value, specifiedType: const FullType(int)));
    }
    return result;
  }

  @override
  GownerReportingPeriodFragmentData deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GownerReportingPeriodFragmentDataBuilder();

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
        case 'preset':
          result.preset = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'start':
          result.start = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'end':
          result.end = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'days':
          result.days = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int?;
          break;
        case 'previousStart':
          result.previousStart = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'previousEnd':
          result.previousEnd = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'previousDays':
          result.previousDays = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int?;
          break;
      }
    }

    return result.build();
  }
}

class _$GownerReportingPeriodFragmentData
    extends GownerReportingPeriodFragmentData {
  @override
  final String G__typename;
  @override
  final String? preset;
  @override
  final String? start;
  @override
  final String? end;
  @override
  final int? days;
  @override
  final String? previousStart;
  @override
  final String? previousEnd;
  @override
  final int? previousDays;

  factory _$GownerReportingPeriodFragmentData(
          [void Function(GownerReportingPeriodFragmentDataBuilder)? updates]) =>
      (new GownerReportingPeriodFragmentDataBuilder()..update(updates))
          ._build();

  _$GownerReportingPeriodFragmentData._(
      {required this.G__typename,
      this.preset,
      this.start,
      this.end,
      this.days,
      this.previousStart,
      this.previousEnd,
      this.previousDays})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        G__typename, r'GownerReportingPeriodFragmentData', 'G__typename');
  }

  @override
  GownerReportingPeriodFragmentData rebuild(
          void Function(GownerReportingPeriodFragmentDataBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GownerReportingPeriodFragmentDataBuilder toBuilder() =>
      new GownerReportingPeriodFragmentDataBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GownerReportingPeriodFragmentData &&
        G__typename == other.G__typename &&
        preset == other.preset &&
        start == other.start &&
        end == other.end &&
        days == other.days &&
        previousStart == other.previousStart &&
        previousEnd == other.previousEnd &&
        previousDays == other.previousDays;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, G__typename.hashCode);
    _$hash = $jc(_$hash, preset.hashCode);
    _$hash = $jc(_$hash, start.hashCode);
    _$hash = $jc(_$hash, end.hashCode);
    _$hash = $jc(_$hash, days.hashCode);
    _$hash = $jc(_$hash, previousStart.hashCode);
    _$hash = $jc(_$hash, previousEnd.hashCode);
    _$hash = $jc(_$hash, previousDays.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'GownerReportingPeriodFragmentData')
          ..add('G__typename', G__typename)
          ..add('preset', preset)
          ..add('start', start)
          ..add('end', end)
          ..add('days', days)
          ..add('previousStart', previousStart)
          ..add('previousEnd', previousEnd)
          ..add('previousDays', previousDays))
        .toString();
  }
}

class GownerReportingPeriodFragmentDataBuilder
    implements
        Builder<GownerReportingPeriodFragmentData,
            GownerReportingPeriodFragmentDataBuilder> {
  _$GownerReportingPeriodFragmentData? _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  String? _preset;
  String? get preset => _$this._preset;
  set preset(String? preset) => _$this._preset = preset;

  String? _start;
  String? get start => _$this._start;
  set start(String? start) => _$this._start = start;

  String? _end;
  String? get end => _$this._end;
  set end(String? end) => _$this._end = end;

  int? _days;
  int? get days => _$this._days;
  set days(int? days) => _$this._days = days;

  String? _previousStart;
  String? get previousStart => _$this._previousStart;
  set previousStart(String? previousStart) =>
      _$this._previousStart = previousStart;

  String? _previousEnd;
  String? get previousEnd => _$this._previousEnd;
  set previousEnd(String? previousEnd) => _$this._previousEnd = previousEnd;

  int? _previousDays;
  int? get previousDays => _$this._previousDays;
  set previousDays(int? previousDays) => _$this._previousDays = previousDays;

  GownerReportingPeriodFragmentDataBuilder() {
    GownerReportingPeriodFragmentData._initializeBuilder(this);
  }

  GownerReportingPeriodFragmentDataBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _G__typename = $v.G__typename;
      _preset = $v.preset;
      _start = $v.start;
      _end = $v.end;
      _days = $v.days;
      _previousStart = $v.previousStart;
      _previousEnd = $v.previousEnd;
      _previousDays = $v.previousDays;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GownerReportingPeriodFragmentData other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GownerReportingPeriodFragmentData;
  }

  @override
  void update(
      void Function(GownerReportingPeriodFragmentDataBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GownerReportingPeriodFragmentData build() => _build();

  _$GownerReportingPeriodFragmentData _build() {
    final _$result = _$v ??
        new _$GownerReportingPeriodFragmentData._(
            G__typename: BuiltValueNullFieldError.checkNotNull(G__typename,
                r'GownerReportingPeriodFragmentData', 'G__typename'),
            preset: preset,
            start: start,
            end: end,
            days: days,
            previousStart: previousStart,
            previousEnd: previousEnd,
            previousDays: previousDays);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
