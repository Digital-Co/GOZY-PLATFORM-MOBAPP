// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'getListingSettings.var.gql.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<GgetListingSettingsVars> _$ggetListingSettingsVarsSerializer =
    new _$GgetListingSettingsVarsSerializer();
Serializer<GgetStep1ListingDetailsVars>
    _$ggetStep1ListingDetailsVarsSerializer =
    new _$GgetStep1ListingDetailsVarsSerializer();

class _$GgetListingSettingsVarsSerializer
    implements StructuredSerializer<GgetListingSettingsVars> {
  @override
  final Iterable<Type> types = const [
    GgetListingSettingsVars,
    _$GgetListingSettingsVars
  ];
  @override
  final String wireName = 'GgetListingSettingsVars';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, GgetListingSettingsVars object,
      {FullType specifiedType = FullType.unspecified}) {
    return <Object?>[];
  }

  @override
  GgetListingSettingsVars deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    return new GgetListingSettingsVarsBuilder().build();
  }
}

class _$GgetStep1ListingDetailsVarsSerializer
    implements StructuredSerializer<GgetStep1ListingDetailsVars> {
  @override
  final Iterable<Type> types = const [
    GgetStep1ListingDetailsVars,
    _$GgetStep1ListingDetailsVars
  ];
  @override
  final String wireName = 'GgetStep1ListingDetailsVars';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, GgetStep1ListingDetailsVars object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      'listId',
      serializers.serialize(object.listId, specifiedType: const FullType(int)),
    ];
    Object? value;
    value = object.preview;
    if (value != null) {
      result
        ..add('preview')
        ..add(
            serializers.serialize(value, specifiedType: const FullType(bool)));
    }
    return result;
  }

  @override
  GgetStep1ListingDetailsVars deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GgetStep1ListingDetailsVarsBuilder();

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
        case 'preview':
          result.preview = serializers.deserialize(value,
              specifiedType: const FullType(bool)) as bool?;
          break;
      }
    }

    return result.build();
  }
}

class _$GgetListingSettingsVars extends GgetListingSettingsVars {
  factory _$GgetListingSettingsVars(
          [void Function(GgetListingSettingsVarsBuilder)? updates]) =>
      (new GgetListingSettingsVarsBuilder()..update(updates))._build();

  _$GgetListingSettingsVars._() : super._();

  @override
  GgetListingSettingsVars rebuild(
          void Function(GgetListingSettingsVarsBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GgetListingSettingsVarsBuilder toBuilder() =>
      new GgetListingSettingsVarsBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GgetListingSettingsVars;
  }

  @override
  int get hashCode {
    return 997708288;
  }

  @override
  String toString() {
    return newBuiltValueToStringHelper(r'GgetListingSettingsVars').toString();
  }
}

class GgetListingSettingsVarsBuilder
    implements
        Builder<GgetListingSettingsVars, GgetListingSettingsVarsBuilder> {
  _$GgetListingSettingsVars? _$v;

  GgetListingSettingsVarsBuilder();

  @override
  void replace(GgetListingSettingsVars other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GgetListingSettingsVars;
  }

  @override
  void update(void Function(GgetListingSettingsVarsBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GgetListingSettingsVars build() => _build();

  _$GgetListingSettingsVars _build() {
    final _$result = _$v ?? new _$GgetListingSettingsVars._();
    replace(_$result);
    return _$result;
  }
}

class _$GgetStep1ListingDetailsVars extends GgetStep1ListingDetailsVars {
  @override
  final int listId;
  @override
  final bool? preview;

  factory _$GgetStep1ListingDetailsVars(
          [void Function(GgetStep1ListingDetailsVarsBuilder)? updates]) =>
      (new GgetStep1ListingDetailsVarsBuilder()..update(updates))._build();

  _$GgetStep1ListingDetailsVars._({required this.listId, this.preview})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        listId, r'GgetStep1ListingDetailsVars', 'listId');
  }

  @override
  GgetStep1ListingDetailsVars rebuild(
          void Function(GgetStep1ListingDetailsVarsBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GgetStep1ListingDetailsVarsBuilder toBuilder() =>
      new GgetStep1ListingDetailsVarsBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GgetStep1ListingDetailsVars &&
        listId == other.listId &&
        preview == other.preview;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, listId.hashCode);
    _$hash = $jc(_$hash, preview.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'GgetStep1ListingDetailsVars')
          ..add('listId', listId)
          ..add('preview', preview))
        .toString();
  }
}

class GgetStep1ListingDetailsVarsBuilder
    implements
        Builder<GgetStep1ListingDetailsVars,
            GgetStep1ListingDetailsVarsBuilder> {
  _$GgetStep1ListingDetailsVars? _$v;

  int? _listId;
  int? get listId => _$this._listId;
  set listId(int? listId) => _$this._listId = listId;

  bool? _preview;
  bool? get preview => _$this._preview;
  set preview(bool? preview) => _$this._preview = preview;

  GgetStep1ListingDetailsVarsBuilder();

  GgetStep1ListingDetailsVarsBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _listId = $v.listId;
      _preview = $v.preview;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GgetStep1ListingDetailsVars other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GgetStep1ListingDetailsVars;
  }

  @override
  void update(void Function(GgetStep1ListingDetailsVarsBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GgetStep1ListingDetailsVars build() => _build();

  _$GgetStep1ListingDetailsVars _build() {
    final _$result = _$v ??
        new _$GgetStep1ListingDetailsVars._(
            listId: BuiltValueNullFieldError.checkNotNull(
                listId, r'GgetStep1ListingDetailsVars', 'listId'),
            preview: preview);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
