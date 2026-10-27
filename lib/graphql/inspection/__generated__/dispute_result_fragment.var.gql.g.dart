// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'dispute_result_fragment.var.gql.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<GdisputeResultFragmentVars> _$gdisputeResultFragmentVarsSerializer =
    new _$GdisputeResultFragmentVarsSerializer();

class _$GdisputeResultFragmentVarsSerializer
    implements StructuredSerializer<GdisputeResultFragmentVars> {
  @override
  final Iterable<Type> types = const [
    GdisputeResultFragmentVars,
    _$GdisputeResultFragmentVars
  ];
  @override
  final String wireName = 'GdisputeResultFragmentVars';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, GdisputeResultFragmentVars object,
      {FullType specifiedType = FullType.unspecified}) {
    return <Object?>[];
  }

  @override
  GdisputeResultFragmentVars deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    return new GdisputeResultFragmentVarsBuilder().build();
  }
}

class _$GdisputeResultFragmentVars extends GdisputeResultFragmentVars {
  factory _$GdisputeResultFragmentVars(
          [void Function(GdisputeResultFragmentVarsBuilder)? updates]) =>
      (new GdisputeResultFragmentVarsBuilder()..update(updates))._build();

  _$GdisputeResultFragmentVars._() : super._();

  @override
  GdisputeResultFragmentVars rebuild(
          void Function(GdisputeResultFragmentVarsBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GdisputeResultFragmentVarsBuilder toBuilder() =>
      new GdisputeResultFragmentVarsBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GdisputeResultFragmentVars;
  }

  @override
  int get hashCode {
    return 987746063;
  }

  @override
  String toString() {
    return newBuiltValueToStringHelper(r'GdisputeResultFragmentVars')
        .toString();
  }
}

class GdisputeResultFragmentVarsBuilder
    implements
        Builder<GdisputeResultFragmentVars, GdisputeResultFragmentVarsBuilder> {
  _$GdisputeResultFragmentVars? _$v;

  GdisputeResultFragmentVarsBuilder();

  @override
  void replace(GdisputeResultFragmentVars other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GdisputeResultFragmentVars;
  }

  @override
  void update(void Function(GdisputeResultFragmentVarsBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GdisputeResultFragmentVars build() => _build();

  _$GdisputeResultFragmentVars _build() {
    final _$result = _$v ?? new _$GdisputeResultFragmentVars._();
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
