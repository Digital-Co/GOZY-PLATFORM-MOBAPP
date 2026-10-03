// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'listing_fragment.var.gql.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<GviewListingDetailsFragmentVars>
    _$gviewListingDetailsFragmentVarsSerializer =
    new _$GviewListingDetailsFragmentVarsSerializer();

class _$GviewListingDetailsFragmentVarsSerializer
    implements StructuredSerializer<GviewListingDetailsFragmentVars> {
  @override
  final Iterable<Type> types = const [
    GviewListingDetailsFragmentVars,
    _$GviewListingDetailsFragmentVars
  ];
  @override
  final String wireName = 'GviewListingDetailsFragmentVars';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, GviewListingDetailsFragmentVars object,
      {FullType specifiedType = FullType.unspecified}) {
    return <Object?>[];
  }

  @override
  GviewListingDetailsFragmentVars deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    return new GviewListingDetailsFragmentVarsBuilder().build();
  }
}

class _$GviewListingDetailsFragmentVars
    extends GviewListingDetailsFragmentVars {
  factory _$GviewListingDetailsFragmentVars(
          [void Function(GviewListingDetailsFragmentVarsBuilder)? updates]) =>
      (new GviewListingDetailsFragmentVarsBuilder()..update(updates))._build();

  _$GviewListingDetailsFragmentVars._() : super._();

  @override
  GviewListingDetailsFragmentVars rebuild(
          void Function(GviewListingDetailsFragmentVarsBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GviewListingDetailsFragmentVarsBuilder toBuilder() =>
      new GviewListingDetailsFragmentVarsBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GviewListingDetailsFragmentVars;
  }

  @override
  int get hashCode {
    return 410989326;
  }

  @override
  String toString() {
    return newBuiltValueToStringHelper(r'GviewListingDetailsFragmentVars')
        .toString();
  }
}

class GviewListingDetailsFragmentVarsBuilder
    implements
        Builder<GviewListingDetailsFragmentVars,
            GviewListingDetailsFragmentVarsBuilder> {
  _$GviewListingDetailsFragmentVars? _$v;

  GviewListingDetailsFragmentVarsBuilder();

  @override
  void replace(GviewListingDetailsFragmentVars other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GviewListingDetailsFragmentVars;
  }

  @override
  void update(void Function(GviewListingDetailsFragmentVarsBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GviewListingDetailsFragmentVars build() => _build();

  _$GviewListingDetailsFragmentVars _build() {
    final _$result = _$v ?? new _$GviewListingDetailsFragmentVars._();
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
