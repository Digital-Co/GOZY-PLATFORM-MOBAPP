// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'base_listing_info_fragment.var.gql.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<GviewListingShortFragmentVars>
    _$gviewListingShortFragmentVarsSerializer =
    new _$GviewListingShortFragmentVarsSerializer();

class _$GviewListingShortFragmentVarsSerializer
    implements StructuredSerializer<GviewListingShortFragmentVars> {
  @override
  final Iterable<Type> types = const [
    GviewListingShortFragmentVars,
    _$GviewListingShortFragmentVars
  ];
  @override
  final String wireName = 'GviewListingShortFragmentVars';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, GviewListingShortFragmentVars object,
      {FullType specifiedType = FullType.unspecified}) {
    return <Object?>[];
  }

  @override
  GviewListingShortFragmentVars deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    return new GviewListingShortFragmentVarsBuilder().build();
  }
}

class _$GviewListingShortFragmentVars extends GviewListingShortFragmentVars {
  factory _$GviewListingShortFragmentVars(
          [void Function(GviewListingShortFragmentVarsBuilder)? updates]) =>
      (new GviewListingShortFragmentVarsBuilder()..update(updates))._build();

  _$GviewListingShortFragmentVars._() : super._();

  @override
  GviewListingShortFragmentVars rebuild(
          void Function(GviewListingShortFragmentVarsBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GviewListingShortFragmentVarsBuilder toBuilder() =>
      new GviewListingShortFragmentVarsBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GviewListingShortFragmentVars;
  }

  @override
  int get hashCode {
    return 951213305;
  }

  @override
  String toString() {
    return newBuiltValueToStringHelper(r'GviewListingShortFragmentVars')
        .toString();
  }
}

class GviewListingShortFragmentVarsBuilder
    implements
        Builder<GviewListingShortFragmentVars,
            GviewListingShortFragmentVarsBuilder> {
  _$GviewListingShortFragmentVars? _$v;

  GviewListingShortFragmentVarsBuilder();

  @override
  void replace(GviewListingShortFragmentVars other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GviewListingShortFragmentVars;
  }

  @override
  void update(void Function(GviewListingShortFragmentVarsBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GviewListingShortFragmentVars build() => _build();

  _$GviewListingShortFragmentVars _build() {
    final _$result = _$v ?? new _$GviewListingShortFragmentVars._();
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
