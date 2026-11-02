// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'owner_earnings_components_fragment.data.gql.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<GownerEarningsComponentsFragmentData>
    _$gownerEarningsComponentsFragmentDataSerializer =
    new _$GownerEarningsComponentsFragmentDataSerializer();

class _$GownerEarningsComponentsFragmentDataSerializer
    implements StructuredSerializer<GownerEarningsComponentsFragmentData> {
  @override
  final Iterable<Type> types = const [
    GownerEarningsComponentsFragmentData,
    _$GownerEarningsComponentsFragmentData
  ];
  @override
  final String wireName = 'GownerEarningsComponentsFragmentData';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, GownerEarningsComponentsFragmentData object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      '__typename',
      serializers.serialize(object.G__typename,
          specifiedType: const FullType(String)),
    ];
    Object? value;
    value = object.rental;
    if (value != null) {
      result
        ..add('rental')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(double)));
    }
    value = object.options;
    if (value != null) {
      result
        ..add('options')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(double)));
    }
    value = object.delivery;
    if (value != null) {
      result
        ..add('delivery')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(double)));
    }
    value = object.other;
    if (value != null) {
      result
        ..add('other')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(double)));
    }
    return result;
  }

  @override
  GownerEarningsComponentsFragmentData deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GownerEarningsComponentsFragmentDataBuilder();

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
        case 'rental':
          result.rental = serializers.deserialize(value,
              specifiedType: const FullType(double)) as double?;
          break;
        case 'options':
          result.options = serializers.deserialize(value,
              specifiedType: const FullType(double)) as double?;
          break;
        case 'delivery':
          result.delivery = serializers.deserialize(value,
              specifiedType: const FullType(double)) as double?;
          break;
        case 'other':
          result.other = serializers.deserialize(value,
              specifiedType: const FullType(double)) as double?;
          break;
      }
    }

    return result.build();
  }
}

class _$GownerEarningsComponentsFragmentData
    extends GownerEarningsComponentsFragmentData {
  @override
  final String G__typename;
  @override
  final double? rental;
  @override
  final double? options;
  @override
  final double? delivery;
  @override
  final double? other;

  factory _$GownerEarningsComponentsFragmentData(
          [void Function(GownerEarningsComponentsFragmentDataBuilder)?
              updates]) =>
      (new GownerEarningsComponentsFragmentDataBuilder()..update(updates))
          ._build();

  _$GownerEarningsComponentsFragmentData._(
      {required this.G__typename,
      this.rental,
      this.options,
      this.delivery,
      this.other})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        G__typename, r'GownerEarningsComponentsFragmentData', 'G__typename');
  }

  @override
  GownerEarningsComponentsFragmentData rebuild(
          void Function(GownerEarningsComponentsFragmentDataBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GownerEarningsComponentsFragmentDataBuilder toBuilder() =>
      new GownerEarningsComponentsFragmentDataBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GownerEarningsComponentsFragmentData &&
        G__typename == other.G__typename &&
        rental == other.rental &&
        options == other.options &&
        delivery == other.delivery &&
        this.other == other.other;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, G__typename.hashCode);
    _$hash = $jc(_$hash, rental.hashCode);
    _$hash = $jc(_$hash, options.hashCode);
    _$hash = $jc(_$hash, delivery.hashCode);
    _$hash = $jc(_$hash, other.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'GownerEarningsComponentsFragmentData')
          ..add('G__typename', G__typename)
          ..add('rental', rental)
          ..add('options', options)
          ..add('delivery', delivery)
          ..add('other', other))
        .toString();
  }
}

class GownerEarningsComponentsFragmentDataBuilder
    implements
        Builder<GownerEarningsComponentsFragmentData,
            GownerEarningsComponentsFragmentDataBuilder> {
  _$GownerEarningsComponentsFragmentData? _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  double? _rental;
  double? get rental => _$this._rental;
  set rental(double? rental) => _$this._rental = rental;

  double? _options;
  double? get options => _$this._options;
  set options(double? options) => _$this._options = options;

  double? _delivery;
  double? get delivery => _$this._delivery;
  set delivery(double? delivery) => _$this._delivery = delivery;

  double? _other;
  double? get other => _$this._other;
  set other(double? other) => _$this._other = other;

  GownerEarningsComponentsFragmentDataBuilder() {
    GownerEarningsComponentsFragmentData._initializeBuilder(this);
  }

  GownerEarningsComponentsFragmentDataBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _G__typename = $v.G__typename;
      _rental = $v.rental;
      _options = $v.options;
      _delivery = $v.delivery;
      _other = $v.other;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GownerEarningsComponentsFragmentData other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GownerEarningsComponentsFragmentData;
  }

  @override
  void update(
      void Function(GownerEarningsComponentsFragmentDataBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GownerEarningsComponentsFragmentData build() => _build();

  _$GownerEarningsComponentsFragmentData _build() {
    final _$result = _$v ??
        new _$GownerEarningsComponentsFragmentData._(
            G__typename: BuiltValueNullFieldError.checkNotNull(G__typename,
                r'GownerEarningsComponentsFragmentData', 'G__typename'),
            rental: rental,
            options: options,
            delivery: delivery,
            other: other);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
