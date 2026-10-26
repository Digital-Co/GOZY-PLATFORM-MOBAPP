// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'set_listing_option_active.var.gql.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<GsetListingOptionActiveVars>
    _$gsetListingOptionActiveVarsSerializer =
    new _$GsetListingOptionActiveVarsSerializer();

class _$GsetListingOptionActiveVarsSerializer
    implements StructuredSerializer<GsetListingOptionActiveVars> {
  @override
  final Iterable<Type> types = const [
    GsetListingOptionActiveVars,
    _$GsetListingOptionActiveVars
  ];
  @override
  final String wireName = 'GsetListingOptionActiveVars';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, GsetListingOptionActiveVars object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      'listId',
      serializers.serialize(object.listId, specifiedType: const FullType(int)),
      'slot',
      serializers.serialize(object.slot, specifiedType: const FullType(String)),
      'isActive',
      serializers.serialize(object.isActive,
          specifiedType: const FullType(bool)),
    ];

    return result;
  }

  @override
  GsetListingOptionActiveVars deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GsetListingOptionActiveVarsBuilder();

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
        case 'isActive':
          result.isActive = serializers.deserialize(value,
              specifiedType: const FullType(bool))! as bool;
          break;
      }
    }

    return result.build();
  }
}

class _$GsetListingOptionActiveVars extends GsetListingOptionActiveVars {
  @override
  final int listId;
  @override
  final String slot;
  @override
  final bool isActive;

  factory _$GsetListingOptionActiveVars(
          [void Function(GsetListingOptionActiveVarsBuilder)? updates]) =>
      (new GsetListingOptionActiveVarsBuilder()..update(updates))._build();

  _$GsetListingOptionActiveVars._(
      {required this.listId, required this.slot, required this.isActive})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        listId, r'GsetListingOptionActiveVars', 'listId');
    BuiltValueNullFieldError.checkNotNull(
        slot, r'GsetListingOptionActiveVars', 'slot');
    BuiltValueNullFieldError.checkNotNull(
        isActive, r'GsetListingOptionActiveVars', 'isActive');
  }

  @override
  GsetListingOptionActiveVars rebuild(
          void Function(GsetListingOptionActiveVarsBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GsetListingOptionActiveVarsBuilder toBuilder() =>
      new GsetListingOptionActiveVarsBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GsetListingOptionActiveVars &&
        listId == other.listId &&
        slot == other.slot &&
        isActive == other.isActive;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, listId.hashCode);
    _$hash = $jc(_$hash, slot.hashCode);
    _$hash = $jc(_$hash, isActive.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'GsetListingOptionActiveVars')
          ..add('listId', listId)
          ..add('slot', slot)
          ..add('isActive', isActive))
        .toString();
  }
}

class GsetListingOptionActiveVarsBuilder
    implements
        Builder<GsetListingOptionActiveVars,
            GsetListingOptionActiveVarsBuilder> {
  _$GsetListingOptionActiveVars? _$v;

  int? _listId;
  int? get listId => _$this._listId;
  set listId(int? listId) => _$this._listId = listId;

  String? _slot;
  String? get slot => _$this._slot;
  set slot(String? slot) => _$this._slot = slot;

  bool? _isActive;
  bool? get isActive => _$this._isActive;
  set isActive(bool? isActive) => _$this._isActive = isActive;

  GsetListingOptionActiveVarsBuilder();

  GsetListingOptionActiveVarsBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _listId = $v.listId;
      _slot = $v.slot;
      _isActive = $v.isActive;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GsetListingOptionActiveVars other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GsetListingOptionActiveVars;
  }

  @override
  void update(void Function(GsetListingOptionActiveVarsBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GsetListingOptionActiveVars build() => _build();

  _$GsetListingOptionActiveVars _build() {
    final _$result = _$v ??
        new _$GsetListingOptionActiveVars._(
            listId: BuiltValueNullFieldError.checkNotNull(
                listId, r'GsetListingOptionActiveVars', 'listId'),
            slot: BuiltValueNullFieldError.checkNotNull(
                slot, r'GsetListingOptionActiveVars', 'slot'),
            isActive: BuiltValueNullFieldError.checkNotNull(
                isActive, r'GsetListingOptionActiveVars', 'isActive'));
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
