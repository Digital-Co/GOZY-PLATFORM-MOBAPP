// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'inspection_result_fragment.var.gql.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<GinspectionResultFragmentVars>
    _$ginspectionResultFragmentVarsSerializer =
    new _$GinspectionResultFragmentVarsSerializer();

class _$GinspectionResultFragmentVarsSerializer
    implements StructuredSerializer<GinspectionResultFragmentVars> {
  @override
  final Iterable<Type> types = const [
    GinspectionResultFragmentVars,
    _$GinspectionResultFragmentVars
  ];
  @override
  final String wireName = 'GinspectionResultFragmentVars';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, GinspectionResultFragmentVars object,
      {FullType specifiedType = FullType.unspecified}) {
    return <Object?>[];
  }

  @override
  GinspectionResultFragmentVars deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    return new GinspectionResultFragmentVarsBuilder().build();
  }
}

class _$GinspectionResultFragmentVars extends GinspectionResultFragmentVars {
  factory _$GinspectionResultFragmentVars(
          [void Function(GinspectionResultFragmentVarsBuilder)? updates]) =>
      (new GinspectionResultFragmentVarsBuilder()..update(updates))._build();

  _$GinspectionResultFragmentVars._() : super._();

  @override
  GinspectionResultFragmentVars rebuild(
          void Function(GinspectionResultFragmentVarsBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GinspectionResultFragmentVarsBuilder toBuilder() =>
      new GinspectionResultFragmentVarsBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GinspectionResultFragmentVars;
  }

  @override
  int get hashCode {
    return 583016892;
  }

  @override
  String toString() {
    return newBuiltValueToStringHelper(r'GinspectionResultFragmentVars')
        .toString();
  }
}

class GinspectionResultFragmentVarsBuilder
    implements
        Builder<GinspectionResultFragmentVars,
            GinspectionResultFragmentVarsBuilder> {
  _$GinspectionResultFragmentVars? _$v;

  GinspectionResultFragmentVarsBuilder();

  @override
  void replace(GinspectionResultFragmentVars other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GinspectionResultFragmentVars;
  }

  @override
  void update(void Function(GinspectionResultFragmentVarsBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GinspectionResultFragmentVars build() => _build();

  _$GinspectionResultFragmentVars _build() {
    final _$result = _$v ?? new _$GinspectionResultFragmentVars._();
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
