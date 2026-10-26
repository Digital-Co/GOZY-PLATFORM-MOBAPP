// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'listing_options_result_fragment.var.gql.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<GlistingOptionsResultFragmentVars>
    _$glistingOptionsResultFragmentVarsSerializer =
    new _$GlistingOptionsResultFragmentVarsSerializer();

class _$GlistingOptionsResultFragmentVarsSerializer
    implements StructuredSerializer<GlistingOptionsResultFragmentVars> {
  @override
  final Iterable<Type> types = const [
    GlistingOptionsResultFragmentVars,
    _$GlistingOptionsResultFragmentVars
  ];
  @override
  final String wireName = 'GlistingOptionsResultFragmentVars';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, GlistingOptionsResultFragmentVars object,
      {FullType specifiedType = FullType.unspecified}) {
    return <Object?>[];
  }

  @override
  GlistingOptionsResultFragmentVars deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    return new GlistingOptionsResultFragmentVarsBuilder().build();
  }
}

class _$GlistingOptionsResultFragmentVars
    extends GlistingOptionsResultFragmentVars {
  factory _$GlistingOptionsResultFragmentVars(
          [void Function(GlistingOptionsResultFragmentVarsBuilder)? updates]) =>
      (new GlistingOptionsResultFragmentVarsBuilder()..update(updates))
          ._build();

  _$GlistingOptionsResultFragmentVars._() : super._();

  @override
  GlistingOptionsResultFragmentVars rebuild(
          void Function(GlistingOptionsResultFragmentVarsBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GlistingOptionsResultFragmentVarsBuilder toBuilder() =>
      new GlistingOptionsResultFragmentVarsBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GlistingOptionsResultFragmentVars;
  }

  @override
  int get hashCode {
    return 389915844;
  }

  @override
  String toString() {
    return newBuiltValueToStringHelper(r'GlistingOptionsResultFragmentVars')
        .toString();
  }
}

class GlistingOptionsResultFragmentVarsBuilder
    implements
        Builder<GlistingOptionsResultFragmentVars,
            GlistingOptionsResultFragmentVarsBuilder> {
  _$GlistingOptionsResultFragmentVars? _$v;

  GlistingOptionsResultFragmentVarsBuilder();

  @override
  void replace(GlistingOptionsResultFragmentVars other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GlistingOptionsResultFragmentVars;
  }

  @override
  void update(
      void Function(GlistingOptionsResultFragmentVarsBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GlistingOptionsResultFragmentVars build() => _build();

  _$GlistingOptionsResultFragmentVars _build() {
    final _$result = _$v ?? new _$GlistingOptionsResultFragmentVars._();
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
