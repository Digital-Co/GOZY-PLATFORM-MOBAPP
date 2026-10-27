// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'inspection_photo_fragment.var.gql.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<GinspectionPhotoFragmentVars>
    _$ginspectionPhotoFragmentVarsSerializer =
    new _$GinspectionPhotoFragmentVarsSerializer();

class _$GinspectionPhotoFragmentVarsSerializer
    implements StructuredSerializer<GinspectionPhotoFragmentVars> {
  @override
  final Iterable<Type> types = const [
    GinspectionPhotoFragmentVars,
    _$GinspectionPhotoFragmentVars
  ];
  @override
  final String wireName = 'GinspectionPhotoFragmentVars';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, GinspectionPhotoFragmentVars object,
      {FullType specifiedType = FullType.unspecified}) {
    return <Object?>[];
  }

  @override
  GinspectionPhotoFragmentVars deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    return new GinspectionPhotoFragmentVarsBuilder().build();
  }
}

class _$GinspectionPhotoFragmentVars extends GinspectionPhotoFragmentVars {
  factory _$GinspectionPhotoFragmentVars(
          [void Function(GinspectionPhotoFragmentVarsBuilder)? updates]) =>
      (new GinspectionPhotoFragmentVarsBuilder()..update(updates))._build();

  _$GinspectionPhotoFragmentVars._() : super._();

  @override
  GinspectionPhotoFragmentVars rebuild(
          void Function(GinspectionPhotoFragmentVarsBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GinspectionPhotoFragmentVarsBuilder toBuilder() =>
      new GinspectionPhotoFragmentVarsBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GinspectionPhotoFragmentVars;
  }

  @override
  int get hashCode {
    return 741968424;
  }

  @override
  String toString() {
    return newBuiltValueToStringHelper(r'GinspectionPhotoFragmentVars')
        .toString();
  }
}

class GinspectionPhotoFragmentVarsBuilder
    implements
        Builder<GinspectionPhotoFragmentVars,
            GinspectionPhotoFragmentVarsBuilder> {
  _$GinspectionPhotoFragmentVars? _$v;

  GinspectionPhotoFragmentVarsBuilder();

  @override
  void replace(GinspectionPhotoFragmentVars other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GinspectionPhotoFragmentVars;
  }

  @override
  void update(void Function(GinspectionPhotoFragmentVarsBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GinspectionPhotoFragmentVars build() => _build();

  _$GinspectionPhotoFragmentVars _build() {
    final _$result = _$v ?? new _$GinspectionPhotoFragmentVars._();
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
