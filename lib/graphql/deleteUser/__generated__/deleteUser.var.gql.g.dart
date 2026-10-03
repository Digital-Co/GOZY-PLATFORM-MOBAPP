// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'deleteUser.var.gql.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<GdeleteUserVars> _$gdeleteUserVarsSerializer =
    new _$GdeleteUserVarsSerializer();

class _$GdeleteUserVarsSerializer
    implements StructuredSerializer<GdeleteUserVars> {
  @override
  final Iterable<Type> types = const [GdeleteUserVars, _$GdeleteUserVars];
  @override
  final String wireName = 'GdeleteUserVars';

  @override
  Iterable<Object?> serialize(Serializers serializers, GdeleteUserVars object,
      {FullType specifiedType = FullType.unspecified}) {
    return <Object?>[];
  }

  @override
  GdeleteUserVars deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    return new GdeleteUserVarsBuilder().build();
  }
}

class _$GdeleteUserVars extends GdeleteUserVars {
  factory _$GdeleteUserVars([void Function(GdeleteUserVarsBuilder)? updates]) =>
      (new GdeleteUserVarsBuilder()..update(updates))._build();

  _$GdeleteUserVars._() : super._();

  @override
  GdeleteUserVars rebuild(void Function(GdeleteUserVarsBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GdeleteUserVarsBuilder toBuilder() =>
      new GdeleteUserVarsBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GdeleteUserVars;
  }

  @override
  int get hashCode {
    return 187263691;
  }

  @override
  String toString() {
    return newBuiltValueToStringHelper(r'GdeleteUserVars').toString();
  }
}

class GdeleteUserVarsBuilder
    implements Builder<GdeleteUserVars, GdeleteUserVarsBuilder> {
  _$GdeleteUserVars? _$v;

  GdeleteUserVarsBuilder();

  @override
  void replace(GdeleteUserVars other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GdeleteUserVars;
  }

  @override
  void update(void Function(GdeleteUserVarsBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GdeleteUserVars build() => _build();

  _$GdeleteUserVars _build() {
    final _$result = _$v ?? new _$GdeleteUserVars._();
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
