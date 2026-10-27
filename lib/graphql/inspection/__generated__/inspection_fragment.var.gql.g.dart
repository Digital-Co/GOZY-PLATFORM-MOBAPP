// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'inspection_fragment.var.gql.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<GinspectionFragmentVars> _$ginspectionFragmentVarsSerializer =
    new _$GinspectionFragmentVarsSerializer();

class _$GinspectionFragmentVarsSerializer
    implements StructuredSerializer<GinspectionFragmentVars> {
  @override
  final Iterable<Type> types = const [
    GinspectionFragmentVars,
    _$GinspectionFragmentVars
  ];
  @override
  final String wireName = 'GinspectionFragmentVars';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, GinspectionFragmentVars object,
      {FullType specifiedType = FullType.unspecified}) {
    return <Object?>[];
  }

  @override
  GinspectionFragmentVars deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    return new GinspectionFragmentVarsBuilder().build();
  }
}

class _$GinspectionFragmentVars extends GinspectionFragmentVars {
  factory _$GinspectionFragmentVars(
          [void Function(GinspectionFragmentVarsBuilder)? updates]) =>
      (new GinspectionFragmentVarsBuilder()..update(updates))._build();

  _$GinspectionFragmentVars._() : super._();

  @override
  GinspectionFragmentVars rebuild(
          void Function(GinspectionFragmentVarsBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GinspectionFragmentVarsBuilder toBuilder() =>
      new GinspectionFragmentVarsBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GinspectionFragmentVars;
  }

  @override
  int get hashCode {
    return 900735934;
  }

  @override
  String toString() {
    return newBuiltValueToStringHelper(r'GinspectionFragmentVars').toString();
  }
}

class GinspectionFragmentVarsBuilder
    implements
        Builder<GinspectionFragmentVars, GinspectionFragmentVarsBuilder> {
  _$GinspectionFragmentVars? _$v;

  GinspectionFragmentVarsBuilder();

  @override
  void replace(GinspectionFragmentVars other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GinspectionFragmentVars;
  }

  @override
  void update(void Function(GinspectionFragmentVarsBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GinspectionFragmentVars build() => _build();

  _$GinspectionFragmentVars _build() {
    final _$result = _$v ?? new _$GinspectionFragmentVars._();
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
