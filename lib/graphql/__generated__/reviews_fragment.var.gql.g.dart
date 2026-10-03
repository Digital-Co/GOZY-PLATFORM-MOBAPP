// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'reviews_fragment.var.gql.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<GreviewsFragmentVars> _$greviewsFragmentVarsSerializer =
    new _$GreviewsFragmentVarsSerializer();

class _$GreviewsFragmentVarsSerializer
    implements StructuredSerializer<GreviewsFragmentVars> {
  @override
  final Iterable<Type> types = const [
    GreviewsFragmentVars,
    _$GreviewsFragmentVars
  ];
  @override
  final String wireName = 'GreviewsFragmentVars';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, GreviewsFragmentVars object,
      {FullType specifiedType = FullType.unspecified}) {
    return <Object?>[];
  }

  @override
  GreviewsFragmentVars deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    return new GreviewsFragmentVarsBuilder().build();
  }
}

class _$GreviewsFragmentVars extends GreviewsFragmentVars {
  factory _$GreviewsFragmentVars(
          [void Function(GreviewsFragmentVarsBuilder)? updates]) =>
      (new GreviewsFragmentVarsBuilder()..update(updates))._build();

  _$GreviewsFragmentVars._() : super._();

  @override
  GreviewsFragmentVars rebuild(
          void Function(GreviewsFragmentVarsBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GreviewsFragmentVarsBuilder toBuilder() =>
      new GreviewsFragmentVarsBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GreviewsFragmentVars;
  }

  @override
  int get hashCode {
    return 570598674;
  }

  @override
  String toString() {
    return newBuiltValueToStringHelper(r'GreviewsFragmentVars').toString();
  }
}

class GreviewsFragmentVarsBuilder
    implements Builder<GreviewsFragmentVars, GreviewsFragmentVarsBuilder> {
  _$GreviewsFragmentVars? _$v;

  GreviewsFragmentVarsBuilder();

  @override
  void replace(GreviewsFragmentVars other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GreviewsFragmentVars;
  }

  @override
  void update(void Function(GreviewsFragmentVarsBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GreviewsFragmentVars build() => _build();

  _$GreviewsFragmentVars _build() {
    final _$result = _$v ?? new _$GreviewsFragmentVars._();
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
