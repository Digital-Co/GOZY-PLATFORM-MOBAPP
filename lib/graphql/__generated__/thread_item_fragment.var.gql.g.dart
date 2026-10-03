// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'thread_item_fragment.var.gql.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<GthreadItemsFragmentVars> _$gthreadItemsFragmentVarsSerializer =
    new _$GthreadItemsFragmentVarsSerializer();

class _$GthreadItemsFragmentVarsSerializer
    implements StructuredSerializer<GthreadItemsFragmentVars> {
  @override
  final Iterable<Type> types = const [
    GthreadItemsFragmentVars,
    _$GthreadItemsFragmentVars
  ];
  @override
  final String wireName = 'GthreadItemsFragmentVars';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, GthreadItemsFragmentVars object,
      {FullType specifiedType = FullType.unspecified}) {
    return <Object?>[];
  }

  @override
  GthreadItemsFragmentVars deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    return new GthreadItemsFragmentVarsBuilder().build();
  }
}

class _$GthreadItemsFragmentVars extends GthreadItemsFragmentVars {
  factory _$GthreadItemsFragmentVars(
          [void Function(GthreadItemsFragmentVarsBuilder)? updates]) =>
      (new GthreadItemsFragmentVarsBuilder()..update(updates))._build();

  _$GthreadItemsFragmentVars._() : super._();

  @override
  GthreadItemsFragmentVars rebuild(
          void Function(GthreadItemsFragmentVarsBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GthreadItemsFragmentVarsBuilder toBuilder() =>
      new GthreadItemsFragmentVarsBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GthreadItemsFragmentVars;
  }

  @override
  int get hashCode {
    return 615055442;
  }

  @override
  String toString() {
    return newBuiltValueToStringHelper(r'GthreadItemsFragmentVars').toString();
  }
}

class GthreadItemsFragmentVarsBuilder
    implements
        Builder<GthreadItemsFragmentVars, GthreadItemsFragmentVarsBuilder> {
  _$GthreadItemsFragmentVars? _$v;

  GthreadItemsFragmentVarsBuilder();

  @override
  void replace(GthreadItemsFragmentVars other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GthreadItemsFragmentVars;
  }

  @override
  void update(void Function(GthreadItemsFragmentVarsBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GthreadItemsFragmentVars build() => _build();

  _$GthreadItemsFragmentVars _build() {
    final _$result = _$v ?? new _$GthreadItemsFragmentVars._();
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
