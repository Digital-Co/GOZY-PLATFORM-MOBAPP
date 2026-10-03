// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user_profile_fragment.var.gql.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<GuserProfileFragmentVars> _$guserProfileFragmentVarsSerializer =
    new _$GuserProfileFragmentVarsSerializer();

class _$GuserProfileFragmentVarsSerializer
    implements StructuredSerializer<GuserProfileFragmentVars> {
  @override
  final Iterable<Type> types = const [
    GuserProfileFragmentVars,
    _$GuserProfileFragmentVars
  ];
  @override
  final String wireName = 'GuserProfileFragmentVars';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, GuserProfileFragmentVars object,
      {FullType specifiedType = FullType.unspecified}) {
    return <Object?>[];
  }

  @override
  GuserProfileFragmentVars deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    return new GuserProfileFragmentVarsBuilder().build();
  }
}

class _$GuserProfileFragmentVars extends GuserProfileFragmentVars {
  factory _$GuserProfileFragmentVars(
          [void Function(GuserProfileFragmentVarsBuilder)? updates]) =>
      (new GuserProfileFragmentVarsBuilder()..update(updates))._build();

  _$GuserProfileFragmentVars._() : super._();

  @override
  GuserProfileFragmentVars rebuild(
          void Function(GuserProfileFragmentVarsBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GuserProfileFragmentVarsBuilder toBuilder() =>
      new GuserProfileFragmentVarsBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GuserProfileFragmentVars;
  }

  @override
  int get hashCode {
    return 170008400;
  }

  @override
  String toString() {
    return newBuiltValueToStringHelper(r'GuserProfileFragmentVars').toString();
  }
}

class GuserProfileFragmentVarsBuilder
    implements
        Builder<GuserProfileFragmentVars, GuserProfileFragmentVarsBuilder> {
  _$GuserProfileFragmentVars? _$v;

  GuserProfileFragmentVarsBuilder();

  @override
  void replace(GuserProfileFragmentVars other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GuserProfileFragmentVars;
  }

  @override
  void update(void Function(GuserProfileFragmentVarsBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GuserProfileFragmentVars build() => _build();

  _$GuserProfileFragmentVars _build() {
    final _$result = _$v ?? new _$GuserProfileFragmentVars._();
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
