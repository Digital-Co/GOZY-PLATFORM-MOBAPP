// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'open_dispute.var.gql.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<GopenDisputeVars> _$gopenDisputeVarsSerializer =
    new _$GopenDisputeVarsSerializer();

class _$GopenDisputeVarsSerializer
    implements StructuredSerializer<GopenDisputeVars> {
  @override
  final Iterable<Type> types = const [GopenDisputeVars, _$GopenDisputeVars];
  @override
  final String wireName = 'GopenDisputeVars';

  @override
  Iterable<Object?> serialize(Serializers serializers, GopenDisputeVars object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      'reservationId',
      serializers.serialize(object.reservationId,
          specifiedType: const FullType(int)),
      'reasonCode',
      serializers.serialize(object.reasonCode,
          specifiedType: const FullType(String)),
      'comment',
      serializers.serialize(object.comment,
          specifiedType: const FullType(String)),
    ];

    return result;
  }

  @override
  GopenDisputeVars deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GopenDisputeVarsBuilder();

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
        case 'reasonCode':
          result.reasonCode = serializers.deserialize(value,
              specifiedType: const FullType(String))! as String;
          break;
        case 'comment':
          result.comment = serializers.deserialize(value,
              specifiedType: const FullType(String))! as String;
          break;
      }
    }

    return result.build();
  }
}

class _$GopenDisputeVars extends GopenDisputeVars {
  @override
  final int reservationId;
  @override
  final String reasonCode;
  @override
  final String comment;

  factory _$GopenDisputeVars(
          [void Function(GopenDisputeVarsBuilder)? updates]) =>
      (new GopenDisputeVarsBuilder()..update(updates))._build();

  _$GopenDisputeVars._(
      {required this.reservationId,
      required this.reasonCode,
      required this.comment})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        reservationId, r'GopenDisputeVars', 'reservationId');
    BuiltValueNullFieldError.checkNotNull(
        reasonCode, r'GopenDisputeVars', 'reasonCode');
    BuiltValueNullFieldError.checkNotNull(
        comment, r'GopenDisputeVars', 'comment');
  }

  @override
  GopenDisputeVars rebuild(void Function(GopenDisputeVarsBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GopenDisputeVarsBuilder toBuilder() =>
      new GopenDisputeVarsBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GopenDisputeVars &&
        reservationId == other.reservationId &&
        reasonCode == other.reasonCode &&
        comment == other.comment;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, reservationId.hashCode);
    _$hash = $jc(_$hash, reasonCode.hashCode);
    _$hash = $jc(_$hash, comment.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'GopenDisputeVars')
          ..add('reservationId', reservationId)
          ..add('reasonCode', reasonCode)
          ..add('comment', comment))
        .toString();
  }
}

class GopenDisputeVarsBuilder
    implements Builder<GopenDisputeVars, GopenDisputeVarsBuilder> {
  _$GopenDisputeVars? _$v;

  int? _reservationId;
  int? get reservationId => _$this._reservationId;
  set reservationId(int? reservationId) =>
      _$this._reservationId = reservationId;

  String? _reasonCode;
  String? get reasonCode => _$this._reasonCode;
  set reasonCode(String? reasonCode) => _$this._reasonCode = reasonCode;

  String? _comment;
  String? get comment => _$this._comment;
  set comment(String? comment) => _$this._comment = comment;

  GopenDisputeVarsBuilder();

  GopenDisputeVarsBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _reservationId = $v.reservationId;
      _reasonCode = $v.reasonCode;
      _comment = $v.comment;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GopenDisputeVars other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GopenDisputeVars;
  }

  @override
  void update(void Function(GopenDisputeVarsBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GopenDisputeVars build() => _build();

  _$GopenDisputeVars _build() {
    final _$result = _$v ??
        new _$GopenDisputeVars._(
            reservationId: BuiltValueNullFieldError.checkNotNull(
                reservationId, r'GopenDisputeVars', 'reservationId'),
            reasonCode: BuiltValueNullFieldError.checkNotNull(
                reasonCode, r'GopenDisputeVars', 'reasonCode'),
            comment: BuiltValueNullFieldError.checkNotNull(
                comment, r'GopenDisputeVars', 'comment'));
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
