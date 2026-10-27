// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'listing_option_fragment.var.gql.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<GlistingOptionFragmentVars> _$glistingOptionFragmentVarsSerializer =
    new _$GlistingOptionFragmentVarsSerializer();

class _$GlistingOptionFragmentVarsSerializer
    implements StructuredSerializer<GlistingOptionFragmentVars> {
  @override
  final Iterable<Type> types = const [
    GlistingOptionFragmentVars,
    _$GlistingOptionFragmentVars
  ];
  @override
  final String wireName = 'GlistingOptionFragmentVars';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, GlistingOptionFragmentVars object,
      {FullType specifiedType = FullType.unspecified}) {
    return <Object?>[];
  }

  @override
  GlistingOptionFragmentVars deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    return new GlistingOptionFragmentVarsBuilder().build();
  }
}

class _$GlistingOptionFragmentVars extends GlistingOptionFragmentVars {
  factory _$GlistingOptionFragmentVars(
          [void Function(GlistingOptionFragmentVarsBuilder)? updates]) =>
      (new GlistingOptionFragmentVarsBuilder()..update(updates))._build();

  _$GlistingOptionFragmentVars._() : super._();

  @override
  GlistingOptionFragmentVars rebuild(
          void Function(GlistingOptionFragmentVarsBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GlistingOptionFragmentVarsBuilder toBuilder() =>
      new GlistingOptionFragmentVarsBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GlistingOptionFragmentVars;
  }

  @override
  int get hashCode {
    return 396972482;
  }

  @override
  String toString() {
    return newBuiltValueToStringHelper(r'GlistingOptionFragmentVars')
        .toString();
  }
}

class GlistingOptionFragmentVarsBuilder
    implements
        Builder<GlistingOptionFragmentVars, GlistingOptionFragmentVarsBuilder> {
  _$GlistingOptionFragmentVars? _$v;

  GlistingOptionFragmentVarsBuilder();

  @override
  void replace(GlistingOptionFragmentVars other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GlistingOptionFragmentVars;
  }

  @override
  void update(void Function(GlistingOptionFragmentVarsBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GlistingOptionFragmentVars build() => _build();

  _$GlistingOptionFragmentVars _build() {
    final _$result = _$v ?? new _$GlistingOptionFragmentVars._();
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
