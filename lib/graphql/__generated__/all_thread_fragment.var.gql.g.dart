// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'all_thread_fragment.var.gql.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<GallThreadsFragmentVars> _$gallThreadsFragmentVarsSerializer =
    new _$GallThreadsFragmentVarsSerializer();

class _$GallThreadsFragmentVarsSerializer
    implements StructuredSerializer<GallThreadsFragmentVars> {
  @override
  final Iterable<Type> types = const [
    GallThreadsFragmentVars,
    _$GallThreadsFragmentVars
  ];
  @override
  final String wireName = 'GallThreadsFragmentVars';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, GallThreadsFragmentVars object,
      {FullType specifiedType = FullType.unspecified}) {
    return <Object?>[];
  }

  @override
  GallThreadsFragmentVars deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    return new GallThreadsFragmentVarsBuilder().build();
  }
}

class _$GallThreadsFragmentVars extends GallThreadsFragmentVars {
  factory _$GallThreadsFragmentVars(
          [void Function(GallThreadsFragmentVarsBuilder)? updates]) =>
      (new GallThreadsFragmentVarsBuilder()..update(updates))._build();

  _$GallThreadsFragmentVars._() : super._();

  @override
  GallThreadsFragmentVars rebuild(
          void Function(GallThreadsFragmentVarsBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GallThreadsFragmentVarsBuilder toBuilder() =>
      new GallThreadsFragmentVarsBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GallThreadsFragmentVars;
  }

  @override
  int get hashCode {
    return 86003846;
  }

  @override
  String toString() {
    return newBuiltValueToStringHelper(r'GallThreadsFragmentVars').toString();
  }
}

class GallThreadsFragmentVarsBuilder
    implements
        Builder<GallThreadsFragmentVars, GallThreadsFragmentVarsBuilder> {
  _$GallThreadsFragmentVars? _$v;

  GallThreadsFragmentVarsBuilder();

  @override
  void replace(GallThreadsFragmentVars other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GallThreadsFragmentVars;
  }

  @override
  void update(void Function(GallThreadsFragmentVarsBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GallThreadsFragmentVars build() => _build();

  _$GallThreadsFragmentVars _build() {
    final _$result = _$v ?? new _$GallThreadsFragmentVars._();
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
