// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'cancelPurchasePlan.var.gql.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<GcancelPurchasePlanVars> _$gcancelPurchasePlanVarsSerializer =
    new _$GcancelPurchasePlanVarsSerializer();

class _$GcancelPurchasePlanVarsSerializer
    implements StructuredSerializer<GcancelPurchasePlanVars> {
  @override
  final Iterable<Type> types = const [
    GcancelPurchasePlanVars,
    _$GcancelPurchasePlanVars
  ];
  @override
  final String wireName = 'GcancelPurchasePlanVars';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, GcancelPurchasePlanVars object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      'id',
      serializers.serialize(object.id, specifiedType: const FullType(int)),
    ];

    return result;
  }

  @override
  GcancelPurchasePlanVars deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GcancelPurchasePlanVarsBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'id':
          result.id = serializers.deserialize(value,
              specifiedType: const FullType(int))! as int;
          break;
      }
    }

    return result.build();
  }
}

class _$GcancelPurchasePlanVars extends GcancelPurchasePlanVars {
  @override
  final int id;

  factory _$GcancelPurchasePlanVars(
          [void Function(GcancelPurchasePlanVarsBuilder)? updates]) =>
      (new GcancelPurchasePlanVarsBuilder()..update(updates))._build();

  _$GcancelPurchasePlanVars._({required this.id}) : super._() {
    BuiltValueNullFieldError.checkNotNull(id, r'GcancelPurchasePlanVars', 'id');
  }

  @override
  GcancelPurchasePlanVars rebuild(
          void Function(GcancelPurchasePlanVarsBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GcancelPurchasePlanVarsBuilder toBuilder() =>
      new GcancelPurchasePlanVarsBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GcancelPurchasePlanVars && id == other.id;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, id.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'GcancelPurchasePlanVars')
          ..add('id', id))
        .toString();
  }
}

class GcancelPurchasePlanVarsBuilder
    implements
        Builder<GcancelPurchasePlanVars, GcancelPurchasePlanVarsBuilder> {
  _$GcancelPurchasePlanVars? _$v;

  int? _id;
  int? get id => _$this._id;
  set id(int? id) => _$this._id = id;

  GcancelPurchasePlanVarsBuilder();

  GcancelPurchasePlanVarsBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _id = $v.id;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GcancelPurchasePlanVars other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GcancelPurchasePlanVars;
  }

  @override
  void update(void Function(GcancelPurchasePlanVarsBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GcancelPurchasePlanVars build() => _build();

  _$GcancelPurchasePlanVars _build() {
    final _$result = _$v ??
        new _$GcancelPurchasePlanVars._(
            id: BuiltValueNullFieldError.checkNotNull(
                id, r'GcancelPurchasePlanVars', 'id'));
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
