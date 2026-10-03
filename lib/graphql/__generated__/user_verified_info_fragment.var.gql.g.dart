// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user_verified_info_fragment.var.gql.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<GuserVerifiedInfoFragmentVars>
    _$guserVerifiedInfoFragmentVarsSerializer =
    new _$GuserVerifiedInfoFragmentVarsSerializer();

class _$GuserVerifiedInfoFragmentVarsSerializer
    implements StructuredSerializer<GuserVerifiedInfoFragmentVars> {
  @override
  final Iterable<Type> types = const [
    GuserVerifiedInfoFragmentVars,
    _$GuserVerifiedInfoFragmentVars
  ];
  @override
  final String wireName = 'GuserVerifiedInfoFragmentVars';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, GuserVerifiedInfoFragmentVars object,
      {FullType specifiedType = FullType.unspecified}) {
    return <Object?>[];
  }

  @override
  GuserVerifiedInfoFragmentVars deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    return new GuserVerifiedInfoFragmentVarsBuilder().build();
  }
}

class _$GuserVerifiedInfoFragmentVars extends GuserVerifiedInfoFragmentVars {
  factory _$GuserVerifiedInfoFragmentVars(
          [void Function(GuserVerifiedInfoFragmentVarsBuilder)? updates]) =>
      (new GuserVerifiedInfoFragmentVarsBuilder()..update(updates))._build();

  _$GuserVerifiedInfoFragmentVars._() : super._();

  @override
  GuserVerifiedInfoFragmentVars rebuild(
          void Function(GuserVerifiedInfoFragmentVarsBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GuserVerifiedInfoFragmentVarsBuilder toBuilder() =>
      new GuserVerifiedInfoFragmentVarsBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GuserVerifiedInfoFragmentVars;
  }

  @override
  int get hashCode {
    return 730881469;
  }

  @override
  String toString() {
    return newBuiltValueToStringHelper(r'GuserVerifiedInfoFragmentVars')
        .toString();
  }
}

class GuserVerifiedInfoFragmentVarsBuilder
    implements
        Builder<GuserVerifiedInfoFragmentVars,
            GuserVerifiedInfoFragmentVarsBuilder> {
  _$GuserVerifiedInfoFragmentVars? _$v;

  GuserVerifiedInfoFragmentVarsBuilder();

  @override
  void replace(GuserVerifiedInfoFragmentVars other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GuserVerifiedInfoFragmentVars;
  }

  @override
  void update(void Function(GuserVerifiedInfoFragmentVarsBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GuserVerifiedInfoFragmentVars build() => _build();

  _$GuserVerifiedInfoFragmentVars _build() {
    final _$result = _$v ?? new _$GuserVerifiedInfoFragmentVars._();
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
