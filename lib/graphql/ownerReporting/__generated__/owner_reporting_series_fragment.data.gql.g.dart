// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'owner_reporting_series_fragment.data.gql.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<GownerReportingSeriesFragmentData>
    _$gownerReportingSeriesFragmentDataSerializer =
    new _$GownerReportingSeriesFragmentDataSerializer();
Serializer<GownerReportingSeriesFragmentData_points>
    _$gownerReportingSeriesFragmentDataPointsSerializer =
    new _$GownerReportingSeriesFragmentData_pointsSerializer();

class _$GownerReportingSeriesFragmentDataSerializer
    implements StructuredSerializer<GownerReportingSeriesFragmentData> {
  @override
  final Iterable<Type> types = const [
    GownerReportingSeriesFragmentData,
    _$GownerReportingSeriesFragmentData
  ];
  @override
  final String wireName = 'GownerReportingSeriesFragmentData';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, GownerReportingSeriesFragmentData object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      '__typename',
      serializers.serialize(object.G__typename,
          specifiedType: const FullType(String)),
    ];
    Object? value;
    value = object.granularity;
    if (value != null) {
      result
        ..add('granularity')
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
    value = object.points;
    if (value != null) {
      result
        ..add('points')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(BuiltList, const [
              const FullType.nullable(GownerReportingSeriesFragmentData_points)
            ])));
    }
    return result;
  }

  @override
  GownerReportingSeriesFragmentData deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GownerReportingSeriesFragmentDataBuilder();

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
        case 'granularity':
          result.granularity = serializers.deserialize(value,
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
        case 'points':
          result.points.replace(serializers.deserialize(value,
              specifiedType: const FullType(BuiltList, const [
                const FullType.nullable(
                    GownerReportingSeriesFragmentData_points)
              ]))! as BuiltList<Object?>);
          break;
      }
    }

    return result.build();
  }
}

class _$GownerReportingSeriesFragmentData_pointsSerializer
    implements StructuredSerializer<GownerReportingSeriesFragmentData_points> {
  @override
  final Iterable<Type> types = const [
    GownerReportingSeriesFragmentData_points,
    _$GownerReportingSeriesFragmentData_points
  ];
  @override
  final String wireName = 'GownerReportingSeriesFragmentData_points';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, GownerReportingSeriesFragmentData_points object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      '__typename',
      serializers.serialize(object.G__typename,
          specifiedType: const FullType(String)),
    ];
    Object? value;
    value = object.key;
    if (value != null) {
      result
        ..add('key')
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
    value = object.netRevenue;
    if (value != null) {
      result
        ..add('netRevenue')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(double)));
    }
    value = object.bookings;
    if (value != null) {
      result
        ..add('bookings')
        ..add(serializers.serialize(value, specifiedType: const FullType(int)));
    }
    return result;
  }

  @override
  GownerReportingSeriesFragmentData_points deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GownerReportingSeriesFragmentData_pointsBuilder();

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
        case 'key':
          result.key = serializers.deserialize(value,
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
        case 'netRevenue':
          result.netRevenue = serializers.deserialize(value,
              specifiedType: const FullType(double)) as double?;
          break;
        case 'bookings':
          result.bookings = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int?;
          break;
      }
    }

    return result.build();
  }
}

class _$GownerReportingSeriesFragmentData
    extends GownerReportingSeriesFragmentData {
  @override
  final String G__typename;
  @override
  final String? granularity;
  @override
  final String? start;
  @override
  final String? end;
  @override
  final BuiltList<GownerReportingSeriesFragmentData_points?>? points;

  factory _$GownerReportingSeriesFragmentData(
          [void Function(GownerReportingSeriesFragmentDataBuilder)? updates]) =>
      (new GownerReportingSeriesFragmentDataBuilder()..update(updates))
          ._build();

  _$GownerReportingSeriesFragmentData._(
      {required this.G__typename,
      this.granularity,
      this.start,
      this.end,
      this.points})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        G__typename, r'GownerReportingSeriesFragmentData', 'G__typename');
  }

  @override
  GownerReportingSeriesFragmentData rebuild(
          void Function(GownerReportingSeriesFragmentDataBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GownerReportingSeriesFragmentDataBuilder toBuilder() =>
      new GownerReportingSeriesFragmentDataBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GownerReportingSeriesFragmentData &&
        G__typename == other.G__typename &&
        granularity == other.granularity &&
        start == other.start &&
        end == other.end &&
        points == other.points;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, G__typename.hashCode);
    _$hash = $jc(_$hash, granularity.hashCode);
    _$hash = $jc(_$hash, start.hashCode);
    _$hash = $jc(_$hash, end.hashCode);
    _$hash = $jc(_$hash, points.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'GownerReportingSeriesFragmentData')
          ..add('G__typename', G__typename)
          ..add('granularity', granularity)
          ..add('start', start)
          ..add('end', end)
          ..add('points', points))
        .toString();
  }
}

class GownerReportingSeriesFragmentDataBuilder
    implements
        Builder<GownerReportingSeriesFragmentData,
            GownerReportingSeriesFragmentDataBuilder> {
  _$GownerReportingSeriesFragmentData? _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  String? _granularity;
  String? get granularity => _$this._granularity;
  set granularity(String? granularity) => _$this._granularity = granularity;

  String? _start;
  String? get start => _$this._start;
  set start(String? start) => _$this._start = start;

  String? _end;
  String? get end => _$this._end;
  set end(String? end) => _$this._end = end;

  ListBuilder<GownerReportingSeriesFragmentData_points?>? _points;
  ListBuilder<GownerReportingSeriesFragmentData_points?> get points =>
      _$this._points ??=
          new ListBuilder<GownerReportingSeriesFragmentData_points?>();
  set points(ListBuilder<GownerReportingSeriesFragmentData_points?>? points) =>
      _$this._points = points;

  GownerReportingSeriesFragmentDataBuilder() {
    GownerReportingSeriesFragmentData._initializeBuilder(this);
  }

  GownerReportingSeriesFragmentDataBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _G__typename = $v.G__typename;
      _granularity = $v.granularity;
      _start = $v.start;
      _end = $v.end;
      _points = $v.points?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GownerReportingSeriesFragmentData other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GownerReportingSeriesFragmentData;
  }

  @override
  void update(
      void Function(GownerReportingSeriesFragmentDataBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GownerReportingSeriesFragmentData build() => _build();

  _$GownerReportingSeriesFragmentData _build() {
    _$GownerReportingSeriesFragmentData _$result;
    try {
      _$result = _$v ??
          new _$GownerReportingSeriesFragmentData._(
              G__typename: BuiltValueNullFieldError.checkNotNull(G__typename,
                  r'GownerReportingSeriesFragmentData', 'G__typename'),
              granularity: granularity,
              start: start,
              end: end,
              points: _points?.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'points';
        _points?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'GownerReportingSeriesFragmentData', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

class _$GownerReportingSeriesFragmentData_points
    extends GownerReportingSeriesFragmentData_points {
  @override
  final String G__typename;
  @override
  final String? key;
  @override
  final String? start;
  @override
  final String? end;
  @override
  final double? netRevenue;
  @override
  final int? bookings;

  factory _$GownerReportingSeriesFragmentData_points(
          [void Function(GownerReportingSeriesFragmentData_pointsBuilder)?
              updates]) =>
      (new GownerReportingSeriesFragmentData_pointsBuilder()..update(updates))
          ._build();

  _$GownerReportingSeriesFragmentData_points._(
      {required this.G__typename,
      this.key,
      this.start,
      this.end,
      this.netRevenue,
      this.bookings})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(G__typename,
        r'GownerReportingSeriesFragmentData_points', 'G__typename');
  }

  @override
  GownerReportingSeriesFragmentData_points rebuild(
          void Function(GownerReportingSeriesFragmentData_pointsBuilder)
              updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GownerReportingSeriesFragmentData_pointsBuilder toBuilder() =>
      new GownerReportingSeriesFragmentData_pointsBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GownerReportingSeriesFragmentData_points &&
        G__typename == other.G__typename &&
        key == other.key &&
        start == other.start &&
        end == other.end &&
        netRevenue == other.netRevenue &&
        bookings == other.bookings;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, G__typename.hashCode);
    _$hash = $jc(_$hash, key.hashCode);
    _$hash = $jc(_$hash, start.hashCode);
    _$hash = $jc(_$hash, end.hashCode);
    _$hash = $jc(_$hash, netRevenue.hashCode);
    _$hash = $jc(_$hash, bookings.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(
            r'GownerReportingSeriesFragmentData_points')
          ..add('G__typename', G__typename)
          ..add('key', key)
          ..add('start', start)
          ..add('end', end)
          ..add('netRevenue', netRevenue)
          ..add('bookings', bookings))
        .toString();
  }
}

class GownerReportingSeriesFragmentData_pointsBuilder
    implements
        Builder<GownerReportingSeriesFragmentData_points,
            GownerReportingSeriesFragmentData_pointsBuilder> {
  _$GownerReportingSeriesFragmentData_points? _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  String? _key;
  String? get key => _$this._key;
  set key(String? key) => _$this._key = key;

  String? _start;
  String? get start => _$this._start;
  set start(String? start) => _$this._start = start;

  String? _end;
  String? get end => _$this._end;
  set end(String? end) => _$this._end = end;

  double? _netRevenue;
  double? get netRevenue => _$this._netRevenue;
  set netRevenue(double? netRevenue) => _$this._netRevenue = netRevenue;

  int? _bookings;
  int? get bookings => _$this._bookings;
  set bookings(int? bookings) => _$this._bookings = bookings;

  GownerReportingSeriesFragmentData_pointsBuilder() {
    GownerReportingSeriesFragmentData_points._initializeBuilder(this);
  }

  GownerReportingSeriesFragmentData_pointsBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _G__typename = $v.G__typename;
      _key = $v.key;
      _start = $v.start;
      _end = $v.end;
      _netRevenue = $v.netRevenue;
      _bookings = $v.bookings;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GownerReportingSeriesFragmentData_points other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GownerReportingSeriesFragmentData_points;
  }

  @override
  void update(
      void Function(GownerReportingSeriesFragmentData_pointsBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GownerReportingSeriesFragmentData_points build() => _build();

  _$GownerReportingSeriesFragmentData_points _build() {
    final _$result = _$v ??
        new _$GownerReportingSeriesFragmentData_points._(
            G__typename: BuiltValueNullFieldError.checkNotNull(G__typename,
                r'GownerReportingSeriesFragmentData_points', 'G__typename'),
            key: key,
            start: start,
            end: end,
            netRevenue: netRevenue,
            bookings: bookings);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
