// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'owner_reporting_indicator_fragment.data.gql.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<GownerReportingIndicatorFragmentData>
    _$gownerReportingIndicatorFragmentDataSerializer =
    new _$GownerReportingIndicatorFragmentDataSerializer();

class _$GownerReportingIndicatorFragmentDataSerializer
    implements StructuredSerializer<GownerReportingIndicatorFragmentData> {
  @override
  final Iterable<Type> types = const [
    GownerReportingIndicatorFragmentData,
    _$GownerReportingIndicatorFragmentData
  ];
  @override
  final String wireName = 'GownerReportingIndicatorFragmentData';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, GownerReportingIndicatorFragmentData object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      '__typename',
      serializers.serialize(object.G__typename,
          specifiedType: const FullType(String)),
    ];
    Object? value;
    value = object.value;
    if (value != null) {
      result
        ..add('value')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(double)));
    }
    value = object.previous;
    if (value != null) {
      result
        ..add('previous')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(double)));
    }
    value = object.change;
    if (value != null) {
      result
        ..add('change')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(double)));
    }
    value = object.trend;
    if (value != null) {
      result
        ..add('trend')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.favorable;
    if (value != null) {
      result
        ..add('favorable')
        ..add(
            serializers.serialize(value, specifiedType: const FullType(bool)));
    }
    return result;
  }

  @override
  GownerReportingIndicatorFragmentData deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GownerReportingIndicatorFragmentDataBuilder();

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
        case 'value':
          result.value = serializers.deserialize(value,
              specifiedType: const FullType(double)) as double?;
          break;
        case 'previous':
          result.previous = serializers.deserialize(value,
              specifiedType: const FullType(double)) as double?;
          break;
        case 'change':
          result.change = serializers.deserialize(value,
              specifiedType: const FullType(double)) as double?;
          break;
        case 'trend':
          result.trend = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'favorable':
          result.favorable = serializers.deserialize(value,
              specifiedType: const FullType(bool)) as bool?;
          break;
      }
    }

    return result.build();
  }
}

class _$GownerReportingIndicatorFragmentData
    extends GownerReportingIndicatorFragmentData {
  @override
  final String G__typename;
  @override
  final double? value;
  @override
  final double? previous;
  @override
  final double? change;
  @override
  final String? trend;
  @override
  final bool? favorable;

  factory _$GownerReportingIndicatorFragmentData(
          [void Function(GownerReportingIndicatorFragmentDataBuilder)?
              updates]) =>
      (new GownerReportingIndicatorFragmentDataBuilder()..update(updates))
          ._build();

  _$GownerReportingIndicatorFragmentData._(
      {required this.G__typename,
      this.value,
      this.previous,
      this.change,
      this.trend,
      this.favorable})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        G__typename, r'GownerReportingIndicatorFragmentData', 'G__typename');
  }

  @override
  GownerReportingIndicatorFragmentData rebuild(
          void Function(GownerReportingIndicatorFragmentDataBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GownerReportingIndicatorFragmentDataBuilder toBuilder() =>
      new GownerReportingIndicatorFragmentDataBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GownerReportingIndicatorFragmentData &&
        G__typename == other.G__typename &&
        value == other.value &&
        previous == other.previous &&
        change == other.change &&
        trend == other.trend &&
        favorable == other.favorable;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, G__typename.hashCode);
    _$hash = $jc(_$hash, value.hashCode);
    _$hash = $jc(_$hash, previous.hashCode);
    _$hash = $jc(_$hash, change.hashCode);
    _$hash = $jc(_$hash, trend.hashCode);
    _$hash = $jc(_$hash, favorable.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'GownerReportingIndicatorFragmentData')
          ..add('G__typename', G__typename)
          ..add('value', value)
          ..add('previous', previous)
          ..add('change', change)
          ..add('trend', trend)
          ..add('favorable', favorable))
        .toString();
  }
}

class GownerReportingIndicatorFragmentDataBuilder
    implements
        Builder<GownerReportingIndicatorFragmentData,
            GownerReportingIndicatorFragmentDataBuilder> {
  _$GownerReportingIndicatorFragmentData? _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  double? _value;
  double? get value => _$this._value;
  set value(double? value) => _$this._value = value;

  double? _previous;
  double? get previous => _$this._previous;
  set previous(double? previous) => _$this._previous = previous;

  double? _change;
  double? get change => _$this._change;
  set change(double? change) => _$this._change = change;

  String? _trend;
  String? get trend => _$this._trend;
  set trend(String? trend) => _$this._trend = trend;

  bool? _favorable;
  bool? get favorable => _$this._favorable;
  set favorable(bool? favorable) => _$this._favorable = favorable;

  GownerReportingIndicatorFragmentDataBuilder() {
    GownerReportingIndicatorFragmentData._initializeBuilder(this);
  }

  GownerReportingIndicatorFragmentDataBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _G__typename = $v.G__typename;
      _value = $v.value;
      _previous = $v.previous;
      _change = $v.change;
      _trend = $v.trend;
      _favorable = $v.favorable;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GownerReportingIndicatorFragmentData other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GownerReportingIndicatorFragmentData;
  }

  @override
  void update(
      void Function(GownerReportingIndicatorFragmentDataBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GownerReportingIndicatorFragmentData build() => _build();

  _$GownerReportingIndicatorFragmentData _build() {
    final _$result = _$v ??
        new _$GownerReportingIndicatorFragmentData._(
            G__typename: BuiltValueNullFieldError.checkNotNull(G__typename,
                r'GownerReportingIndicatorFragmentData', 'G__typename'),
            value: value,
            previous: previous,
            change: change,
            trend: trend,
            favorable: favorable);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
