// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'get_listing_options.var.gql.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<GgetListingOptionsVars> _$ggetListingOptionsVarsSerializer =
    new _$GgetListingOptionsVarsSerializer();

class _$GgetListingOptionsVarsSerializer
    implements StructuredSerializer<GgetListingOptionsVars> {
  @override
  final Iterable<Type> types = const [
    GgetListingOptionsVars,
    _$GgetListingOptionsVars
  ];
  @override
  final String wireName = 'GgetListingOptionsVars';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, GgetListingOptionsVars object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      'listId',
      serializers.serialize(object.listId, specifiedType: const FullType(int)),
    ];

    return result;
  }

  @override
  GgetListingOptionsVars deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GgetListingOptionsVarsBuilder();

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
      }
    }

    return result.build();
  }
}

class _$GgetListingOptionsVars extends GgetListingOptionsVars {
  @override
  final int listId;

  factory _$GgetListingOptionsVars(
          [void Function(GgetListingOptionsVarsBuilder)? updates]) =>
      (new GgetListingOptionsVarsBuilder()..update(updates))._build();

  _$GgetListingOptionsVars._({required this.listId}) : super._() {
    BuiltValueNullFieldError.checkNotNull(
        listId, r'GgetListingOptionsVars', 'listId');
  }

  @override
  GgetListingOptionsVars rebuild(
          void Function(GgetListingOptionsVarsBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GgetListingOptionsVarsBuilder toBuilder() =>
      new GgetListingOptionsVarsBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GgetListingOptionsVars && listId == other.listId;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, listId.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'GgetListingOptionsVars')
          ..add('listId', listId))
        .toString();
  }
}

class GgetListingOptionsVarsBuilder
    implements Builder<GgetListingOptionsVars, GgetListingOptionsVarsBuilder> {
  _$GgetListingOptionsVars? _$v;

  int? _listId;
  int? get listId => _$this._listId;
  set listId(int? listId) => _$this._listId = listId;

  GgetListingOptionsVarsBuilder();

  GgetListingOptionsVarsBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _listId = $v.listId;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GgetListingOptionsVars other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GgetListingOptionsVars;
  }

  @override
  void update(void Function(GgetListingOptionsVarsBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GgetListingOptionsVars build() => _build();

  _$GgetListingOptionsVars _build() {
    final _$result = _$v ??
        new _$GgetListingOptionsVars._(
            listId: BuiltValueNullFieldError.checkNotNull(
                listId, r'GgetListingOptionsVars', 'listId'));
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
