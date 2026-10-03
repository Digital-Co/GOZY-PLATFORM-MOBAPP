// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'update_claim_damage.var.gql.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<GupdateClaimVars> _$gupdateClaimVarsSerializer =
    new _$GupdateClaimVarsSerializer();

class _$GupdateClaimVarsSerializer
    implements StructuredSerializer<GupdateClaimVars> {
  @override
  final Iterable<Type> types = const [GupdateClaimVars, _$GupdateClaimVars];
  @override
  final String wireName = 'GupdateClaimVars';

  @override
  Iterable<Object?> serialize(Serializers serializers, GupdateClaimVars object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      'reservationId',
      serializers.serialize(object.reservationId,
          specifiedType: const FullType(int)),
      'claimAmount',
      serializers.serialize(object.claimAmount,
          specifiedType: const FullType(double)),
      'claimReason',
      serializers.serialize(object.claimReason,
          specifiedType: const FullType(String)),
      'currency',
      serializers.serialize(object.currency,
          specifiedType: const FullType(String)),
    ];
    Object? value;
    value = object.claimImages;
    if (value != null) {
      result
        ..add('claimImages')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(
                BuiltList, const [const FullType.nullable(String)])));
    }
    return result;
  }

  @override
  GupdateClaimVars deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GupdateClaimVarsBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'reservationId':
          result.reservationId = serializers.deserialize(value,
              specifiedType: const FullType(int))! as int;
          break;
        case 'claimAmount':
          result.claimAmount = serializers.deserialize(value,
              specifiedType: const FullType(double))! as double;
          break;
        case 'claimReason':
          result.claimReason = serializers.deserialize(value,
              specifiedType: const FullType(String))! as String;
          break;
        case 'claimImages':
          result.claimImages.replace(serializers.deserialize(value,
                  specifiedType: const FullType(
                      BuiltList, const [const FullType.nullable(String)]))!
              as BuiltList<Object?>);
          break;
        case 'currency':
          result.currency = serializers.deserialize(value,
              specifiedType: const FullType(String))! as String;
          break;
      }
    }

    return result.build();
  }
}

class _$GupdateClaimVars extends GupdateClaimVars {
  @override
  final int reservationId;
  @override
  final double claimAmount;
  @override
  final String claimReason;
  @override
  final BuiltList<String?>? claimImages;
  @override
  final String currency;

  factory _$GupdateClaimVars(
          [void Function(GupdateClaimVarsBuilder)? updates]) =>
      (new GupdateClaimVarsBuilder()..update(updates))._build();

  _$GupdateClaimVars._(
      {required this.reservationId,
      required this.claimAmount,
      required this.claimReason,
      this.claimImages,
      required this.currency})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        reservationId, r'GupdateClaimVars', 'reservationId');
    BuiltValueNullFieldError.checkNotNull(
        claimAmount, r'GupdateClaimVars', 'claimAmount');
    BuiltValueNullFieldError.checkNotNull(
        claimReason, r'GupdateClaimVars', 'claimReason');
    BuiltValueNullFieldError.checkNotNull(
        currency, r'GupdateClaimVars', 'currency');
  }

  @override
  GupdateClaimVars rebuild(void Function(GupdateClaimVarsBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GupdateClaimVarsBuilder toBuilder() =>
      new GupdateClaimVarsBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GupdateClaimVars &&
        reservationId == other.reservationId &&
        claimAmount == other.claimAmount &&
        claimReason == other.claimReason &&
        claimImages == other.claimImages &&
        currency == other.currency;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, reservationId.hashCode);
    _$hash = $jc(_$hash, claimAmount.hashCode);
    _$hash = $jc(_$hash, claimReason.hashCode);
    _$hash = $jc(_$hash, claimImages.hashCode);
    _$hash = $jc(_$hash, currency.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'GupdateClaimVars')
          ..add('reservationId', reservationId)
          ..add('claimAmount', claimAmount)
          ..add('claimReason', claimReason)
          ..add('claimImages', claimImages)
          ..add('currency', currency))
        .toString();
  }
}

class GupdateClaimVarsBuilder
    implements Builder<GupdateClaimVars, GupdateClaimVarsBuilder> {
  _$GupdateClaimVars? _$v;

  int? _reservationId;
  int? get reservationId => _$this._reservationId;
  set reservationId(int? reservationId) =>
      _$this._reservationId = reservationId;

  double? _claimAmount;
  double? get claimAmount => _$this._claimAmount;
  set claimAmount(double? claimAmount) => _$this._claimAmount = claimAmount;

  String? _claimReason;
  String? get claimReason => _$this._claimReason;
  set claimReason(String? claimReason) => _$this._claimReason = claimReason;

  ListBuilder<String?>? _claimImages;
  ListBuilder<String?> get claimImages =>
      _$this._claimImages ??= new ListBuilder<String?>();
  set claimImages(ListBuilder<String?>? claimImages) =>
      _$this._claimImages = claimImages;

  String? _currency;
  String? get currency => _$this._currency;
  set currency(String? currency) => _$this._currency = currency;

  GupdateClaimVarsBuilder();

  GupdateClaimVarsBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _reservationId = $v.reservationId;
      _claimAmount = $v.claimAmount;
      _claimReason = $v.claimReason;
      _claimImages = $v.claimImages?.toBuilder();
      _currency = $v.currency;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GupdateClaimVars other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GupdateClaimVars;
  }

  @override
  void update(void Function(GupdateClaimVarsBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GupdateClaimVars build() => _build();

  _$GupdateClaimVars _build() {
    _$GupdateClaimVars _$result;
    try {
      _$result = _$v ??
          new _$GupdateClaimVars._(
              reservationId: BuiltValueNullFieldError.checkNotNull(
                  reservationId, r'GupdateClaimVars', 'reservationId'),
              claimAmount: BuiltValueNullFieldError.checkNotNull(
                  claimAmount, r'GupdateClaimVars', 'claimAmount'),
              claimReason: BuiltValueNullFieldError.checkNotNull(
                  claimReason, r'GupdateClaimVars', 'claimReason'),
              claimImages: _claimImages?.build(),
              currency: BuiltValueNullFieldError.checkNotNull(
                  currency, r'GupdateClaimVars', 'currency'));
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'claimImages';
        _claimImages?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'GupdateClaimVars', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
