// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'delete_listing_option.var.gql.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<GdeleteListingOptionVars> _$gdeleteListingOptionVarsSerializer =
    new _$GdeleteListingOptionVarsSerializer();

class _$GdeleteListingOptionVarsSerializer
    implements StructuredSerializer<GdeleteListingOptionVars> {
  @override
  final Iterable<Type> types = const [
    GdeleteListingOptionVars,
    _$GdeleteListingOptionVars
  ];
  @override
  final String wireName = 'GdeleteListingOptionVars';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, GdeleteListingOptionVars object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      'listId',
      serializers.serialize(object.listId, specifiedType: const FullType(int)),
      'slot',
      serializers.serialize(object.slot, specifiedType: const FullType(String)),
    ];

    return result;
  }

  @override
  GdeleteListingOptionVars deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GdeleteListingOptionVarsBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'listId':
          result.listId = serializers.deserialize(value,
              specifiedType: const FullType(int))! as int;
          break;
        case 'slot':
          result.slot = serializers.deserialize(value,
              specifiedType: const FullType(String))! as String;
          break;
      }
    }

    return result.build();
  }
}

class _$GdeleteListingOptionVars extends GdeleteListingOptionVars {
  @override
  final int listId;
  @override
  final String slot;

  factory _$GdeleteListingOptionVars(
          [void Function(GdeleteListingOptionVarsBuilder)? updates]) =>
      (new GdeleteListingOptionVarsBuilder()..update(updates))._build();

  _$GdeleteListingOptionVars._({required this.listId, required this.slot})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        listId, r'GdeleteListingOptionVars', 'listId');
    BuiltValueNullFieldError.checkNotNull(
        slot, r'GdeleteListingOptionVars', 'slot');
  }

  @override
  GdeleteListingOptionVars rebuild(
          void Function(GdeleteListingOptionVarsBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GdeleteListingOptionVarsBuilder toBuilder() =>
      new GdeleteListingOptionVarsBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GdeleteListingOptionVars &&
        listId == other.listId &&
        slot == other.slot;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, listId.hashCode);
    _$hash = $jc(_$hash, slot.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'GdeleteListingOptionVars')
          ..add('listId', listId)
          ..add('slot', slot))
        .toString();
  }
}

class GdeleteListingOptionVarsBuilder
    implements
        Builder<GdeleteListingOptionVars, GdeleteListingOptionVarsBuilder> {
  _$GdeleteListingOptionVars? _$v;

  int? _listId;
  int? get listId => _$this._listId;
  set listId(int? listId) => _$this._listId = listId;

  String? _slot;
  String? get slot => _$this._slot;
  set slot(String? slot) => _$this._slot = slot;

  GdeleteListingOptionVarsBuilder();

  GdeleteListingOptionVarsBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _listId = $v.listId;
      _slot = $v.slot;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GdeleteListingOptionVars other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GdeleteListingOptionVars;
  }

  @override
  void update(void Function(GdeleteListingOptionVarsBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GdeleteListingOptionVars build() => _build();

  _$GdeleteListingOptionVars _build() {
    final _$result = _$v ??
        new _$GdeleteListingOptionVars._(
            listId: BuiltValueNullFieldError.checkNotNull(
                listId, r'GdeleteListingOptionVars', 'listId'),
            slot: BuiltValueNullFieldError.checkNotNull(
                slot, r'GdeleteListingOptionVars', 'slot'));
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
