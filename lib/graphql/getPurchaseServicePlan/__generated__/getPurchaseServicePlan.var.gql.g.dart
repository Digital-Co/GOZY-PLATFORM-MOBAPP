// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'getPurchaseServicePlan.var.gql.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<GgetPurchaseServicePlanVars>
    _$ggetPurchaseServicePlanVarsSerializer =
    new _$GgetPurchaseServicePlanVarsSerializer();

class _$GgetPurchaseServicePlanVarsSerializer
    implements StructuredSerializer<GgetPurchaseServicePlanVars> {
  @override
  final Iterable<Type> types = const [
    GgetPurchaseServicePlanVars,
    _$GgetPurchaseServicePlanVars
  ];
  @override
  final String wireName = 'GgetPurchaseServicePlanVars';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, GgetPurchaseServicePlanVars object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      'id',
      serializers.serialize(object.id, specifiedType: const FullType(int)),
    ];

    return result;
  }

  @override
  GgetPurchaseServicePlanVars deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GgetPurchaseServicePlanVarsBuilder();

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

class _$GgetPurchaseServicePlanVars extends GgetPurchaseServicePlanVars {
  @override
  final int id;

  factory _$GgetPurchaseServicePlanVars(
          [void Function(GgetPurchaseServicePlanVarsBuilder)? updates]) =>
      (new GgetPurchaseServicePlanVarsBuilder()..update(updates))._build();

  _$GgetPurchaseServicePlanVars._({required this.id}) : super._() {
    BuiltValueNullFieldError.checkNotNull(
        id, r'GgetPurchaseServicePlanVars', 'id');
  }

  @override
  GgetPurchaseServicePlanVars rebuild(
          void Function(GgetPurchaseServicePlanVarsBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GgetPurchaseServicePlanVarsBuilder toBuilder() =>
      new GgetPurchaseServicePlanVarsBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GgetPurchaseServicePlanVars && id == other.id;
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
    return (newBuiltValueToStringHelper(r'GgetPurchaseServicePlanVars')
          ..add('id', id))
        .toString();
  }
}

class GgetPurchaseServicePlanVarsBuilder
    implements
        Builder<GgetPurchaseServicePlanVars,
            GgetPurchaseServicePlanVarsBuilder> {
  _$GgetPurchaseServicePlanVars? _$v;

  int? _id;
  int? get id => _$this._id;
  set id(int? id) => _$this._id = id;

  GgetPurchaseServicePlanVarsBuilder();

  GgetPurchaseServicePlanVarsBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _id = $v.id;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GgetPurchaseServicePlanVars other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GgetPurchaseServicePlanVars;
  }

  @override
  void update(void Function(GgetPurchaseServicePlanVarsBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GgetPurchaseServicePlanVars build() => _build();

  _$GgetPurchaseServicePlanVars _build() {
    final _$result = _$v ??
        new _$GgetPurchaseServicePlanVars._(
            id: BuiltValueNullFieldError.checkNotNull(
                id, r'GgetPurchaseServicePlanVars', 'id'));
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
