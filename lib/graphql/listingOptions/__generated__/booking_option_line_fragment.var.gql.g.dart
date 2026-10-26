// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'booking_option_line_fragment.var.gql.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<GbookingOptionLineFragmentVars>
    _$gbookingOptionLineFragmentVarsSerializer =
    new _$GbookingOptionLineFragmentVarsSerializer();

class _$GbookingOptionLineFragmentVarsSerializer
    implements StructuredSerializer<GbookingOptionLineFragmentVars> {
  @override
  final Iterable<Type> types = const [
    GbookingOptionLineFragmentVars,
    _$GbookingOptionLineFragmentVars
  ];
  @override
  final String wireName = 'GbookingOptionLineFragmentVars';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, GbookingOptionLineFragmentVars object,
      {FullType specifiedType = FullType.unspecified}) {
    return <Object?>[];
  }

  @override
  GbookingOptionLineFragmentVars deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    return new GbookingOptionLineFragmentVarsBuilder().build();
  }
}

class _$GbookingOptionLineFragmentVars extends GbookingOptionLineFragmentVars {
  factory _$GbookingOptionLineFragmentVars(
          [void Function(GbookingOptionLineFragmentVarsBuilder)? updates]) =>
      (new GbookingOptionLineFragmentVarsBuilder()..update(updates))._build();

  _$GbookingOptionLineFragmentVars._() : super._();

  @override
  GbookingOptionLineFragmentVars rebuild(
          void Function(GbookingOptionLineFragmentVarsBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GbookingOptionLineFragmentVarsBuilder toBuilder() =>
      new GbookingOptionLineFragmentVarsBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GbookingOptionLineFragmentVars;
  }

  @override
  int get hashCode {
    return 636863544;
  }

  @override
  String toString() {
    return newBuiltValueToStringHelper(r'GbookingOptionLineFragmentVars')
        .toString();
  }
}

class GbookingOptionLineFragmentVarsBuilder
    implements
        Builder<GbookingOptionLineFragmentVars,
            GbookingOptionLineFragmentVarsBuilder> {
  _$GbookingOptionLineFragmentVars? _$v;

  GbookingOptionLineFragmentVarsBuilder();

  @override
  void replace(GbookingOptionLineFragmentVars other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GbookingOptionLineFragmentVars;
  }

  @override
  void update(void Function(GbookingOptionLineFragmentVarsBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GbookingOptionLineFragmentVars build() => _build();

  _$GbookingOptionLineFragmentVars _build() {
    final _$result = _$v ?? new _$GbookingOptionLineFragmentVars._();
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
