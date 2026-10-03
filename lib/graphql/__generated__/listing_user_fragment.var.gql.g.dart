// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'listing_user_fragment.var.gql.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<GlistingUserFragmentVars> _$glistingUserFragmentVarsSerializer =
    new _$GlistingUserFragmentVarsSerializer();

class _$GlistingUserFragmentVarsSerializer
    implements StructuredSerializer<GlistingUserFragmentVars> {
  @override
  final Iterable<Type> types = const [
    GlistingUserFragmentVars,
    _$GlistingUserFragmentVars
  ];
  @override
  final String wireName = 'GlistingUserFragmentVars';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, GlistingUserFragmentVars object,
      {FullType specifiedType = FullType.unspecified}) {
    return <Object?>[];
  }

  @override
  GlistingUserFragmentVars deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    return new GlistingUserFragmentVarsBuilder().build();
  }
}

class _$GlistingUserFragmentVars extends GlistingUserFragmentVars {
  factory _$GlistingUserFragmentVars(
          [void Function(GlistingUserFragmentVarsBuilder)? updates]) =>
      (new GlistingUserFragmentVarsBuilder()..update(updates))._build();

  _$GlistingUserFragmentVars._() : super._();

  @override
  GlistingUserFragmentVars rebuild(
          void Function(GlistingUserFragmentVarsBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GlistingUserFragmentVarsBuilder toBuilder() =>
      new GlistingUserFragmentVarsBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GlistingUserFragmentVars;
  }

  @override
  int get hashCode {
    return 138601341;
  }

  @override
  String toString() {
    return newBuiltValueToStringHelper(r'GlistingUserFragmentVars').toString();
  }
}

class GlistingUserFragmentVarsBuilder
    implements
        Builder<GlistingUserFragmentVars, GlistingUserFragmentVarsBuilder> {
  _$GlistingUserFragmentVars? _$v;

  GlistingUserFragmentVarsBuilder();

  @override
  void replace(GlistingUserFragmentVars other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GlistingUserFragmentVars;
  }

  @override
  void update(void Function(GlistingUserFragmentVarsBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GlistingUserFragmentVars build() => _build();

  _$GlistingUserFragmentVars _build() {
    final _$result = _$v ?? new _$GlistingUserFragmentVars._();
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
