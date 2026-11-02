// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'owner_reporting_revenue_fragment.data.gql.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<GownerReportingRevenueFragmentData>
    _$gownerReportingRevenueFragmentDataSerializer =
    new _$GownerReportingRevenueFragmentDataSerializer();

class _$GownerReportingRevenueFragmentDataSerializer
    implements StructuredSerializer<GownerReportingRevenueFragmentData> {
  @override
  final Iterable<Type> types = const [
    GownerReportingRevenueFragmentData,
    _$GownerReportingRevenueFragmentData
  ];
  @override
  final String wireName = 'GownerReportingRevenueFragmentData';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, GownerReportingRevenueFragmentData object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      '__typename',
      serializers.serialize(object.G__typename,
          specifiedType: const FullType(String)),
    ];
    Object? value;
    value = object.netRevenue;
    if (value != null) {
      result
        ..add('netRevenue')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(double)));
    }
    value = object.upcoming;
    if (value != null) {
      result
        ..add('upcoming')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(double)));
    }
    value = object.pendingPayout;
    if (value != null) {
      result
        ..add('pendingPayout')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(double)));
    }
    value = object.paid;
    if (value != null) {
      result
        ..add('paid')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(double)));
    }
    value = object.paidAmount;
    if (value != null) {
      result
        ..add('paidAmount')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(double)));
    }
    return result;
  }

  @override
  GownerReportingRevenueFragmentData deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GownerReportingRevenueFragmentDataBuilder();

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
        case 'netRevenue':
          result.netRevenue = serializers.deserialize(value,
              specifiedType: const FullType(double)) as double?;
          break;
        case 'upcoming':
          result.upcoming = serializers.deserialize(value,
              specifiedType: const FullType(double)) as double?;
          break;
        case 'pendingPayout':
          result.pendingPayout = serializers.deserialize(value,
              specifiedType: const FullType(double)) as double?;
          break;
        case 'paid':
          result.paid = serializers.deserialize(value,
              specifiedType: const FullType(double)) as double?;
          break;
        case 'paidAmount':
          result.paidAmount = serializers.deserialize(value,
              specifiedType: const FullType(double)) as double?;
          break;
      }
    }

    return result.build();
  }
}

class _$GownerReportingRevenueFragmentData
    extends GownerReportingRevenueFragmentData {
  @override
  final String G__typename;
  @override
  final double? netRevenue;
  @override
  final double? upcoming;
  @override
  final double? pendingPayout;
  @override
  final double? paid;
  @override
  final double? paidAmount;

  factory _$GownerReportingRevenueFragmentData(
          [void Function(GownerReportingRevenueFragmentDataBuilder)?
              updates]) =>
      (new GownerReportingRevenueFragmentDataBuilder()..update(updates))
          ._build();

  _$GownerReportingRevenueFragmentData._(
      {required this.G__typename,
      this.netRevenue,
      this.upcoming,
      this.pendingPayout,
      this.paid,
      this.paidAmount})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        G__typename, r'GownerReportingRevenueFragmentData', 'G__typename');
  }

  @override
  GownerReportingRevenueFragmentData rebuild(
          void Function(GownerReportingRevenueFragmentDataBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GownerReportingRevenueFragmentDataBuilder toBuilder() =>
      new GownerReportingRevenueFragmentDataBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GownerReportingRevenueFragmentData &&
        G__typename == other.G__typename &&
        netRevenue == other.netRevenue &&
        upcoming == other.upcoming &&
        pendingPayout == other.pendingPayout &&
        paid == other.paid &&
        paidAmount == other.paidAmount;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, G__typename.hashCode);
    _$hash = $jc(_$hash, netRevenue.hashCode);
    _$hash = $jc(_$hash, upcoming.hashCode);
    _$hash = $jc(_$hash, pendingPayout.hashCode);
    _$hash = $jc(_$hash, paid.hashCode);
    _$hash = $jc(_$hash, paidAmount.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'GownerReportingRevenueFragmentData')
          ..add('G__typename', G__typename)
          ..add('netRevenue', netRevenue)
          ..add('upcoming', upcoming)
          ..add('pendingPayout', pendingPayout)
          ..add('paid', paid)
          ..add('paidAmount', paidAmount))
        .toString();
  }
}

class GownerReportingRevenueFragmentDataBuilder
    implements
        Builder<GownerReportingRevenueFragmentData,
            GownerReportingRevenueFragmentDataBuilder> {
  _$GownerReportingRevenueFragmentData? _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  double? _netRevenue;
  double? get netRevenue => _$this._netRevenue;
  set netRevenue(double? netRevenue) => _$this._netRevenue = netRevenue;

  double? _upcoming;
  double? get upcoming => _$this._upcoming;
  set upcoming(double? upcoming) => _$this._upcoming = upcoming;

  double? _pendingPayout;
  double? get pendingPayout => _$this._pendingPayout;
  set pendingPayout(double? pendingPayout) =>
      _$this._pendingPayout = pendingPayout;

  double? _paid;
  double? get paid => _$this._paid;
  set paid(double? paid) => _$this._paid = paid;

  double? _paidAmount;
  double? get paidAmount => _$this._paidAmount;
  set paidAmount(double? paidAmount) => _$this._paidAmount = paidAmount;

  GownerReportingRevenueFragmentDataBuilder() {
    GownerReportingRevenueFragmentData._initializeBuilder(this);
  }

  GownerReportingRevenueFragmentDataBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _G__typename = $v.G__typename;
      _netRevenue = $v.netRevenue;
      _upcoming = $v.upcoming;
      _pendingPayout = $v.pendingPayout;
      _paid = $v.paid;
      _paidAmount = $v.paidAmount;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GownerReportingRevenueFragmentData other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GownerReportingRevenueFragmentData;
  }

  @override
  void update(
      void Function(GownerReportingRevenueFragmentDataBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GownerReportingRevenueFragmentData build() => _build();

  _$GownerReportingRevenueFragmentData _build() {
    final _$result = _$v ??
        new _$GownerReportingRevenueFragmentData._(
            G__typename: BuiltValueNullFieldError.checkNotNull(G__typename,
                r'GownerReportingRevenueFragmentData', 'G__typename'),
            netRevenue: netRevenue,
            upcoming: upcoming,
            pendingPayout: pendingPayout,
            paid: paid,
            paidAmount: paidAmount);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
