// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'layout_settings.var.gql.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<GgetLayoutSettingsVars> _$ggetLayoutSettingsVarsSerializer =
    new _$GgetLayoutSettingsVarsSerializer();

class _$GgetLayoutSettingsVarsSerializer
    implements StructuredSerializer<GgetLayoutSettingsVars> {
  @override
  final Iterable<Type> types = const [
    GgetLayoutSettingsVars,
    _$GgetLayoutSettingsVars
  ];
  @override
  final String wireName = 'GgetLayoutSettingsVars';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, GgetLayoutSettingsVars object,
      {FullType specifiedType = FullType.unspecified}) {
    return <Object?>[];
  }

  @override
  GgetLayoutSettingsVars deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    return new GgetLayoutSettingsVarsBuilder().build();
  }
}

class _$GgetLayoutSettingsVars extends GgetLayoutSettingsVars {
  factory _$GgetLayoutSettingsVars(
          [void Function(GgetLayoutSettingsVarsBuilder)? updates]) =>
      (new GgetLayoutSettingsVarsBuilder()..update(updates))._build();

  _$GgetLayoutSettingsVars._() : super._();

  @override
  GgetLayoutSettingsVars rebuild(
          void Function(GgetLayoutSettingsVarsBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GgetLayoutSettingsVarsBuilder toBuilder() =>
      new GgetLayoutSettingsVarsBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GgetLayoutSettingsVars;
  }

  @override
  int get hashCode {
    return 477953539;
  }

  @override
  String toString() {
    return newBuiltValueToStringHelper(r'GgetLayoutSettingsVars').toString();
  }
}

class GgetLayoutSettingsVarsBuilder
    implements Builder<GgetLayoutSettingsVars, GgetLayoutSettingsVarsBuilder> {
  _$GgetLayoutSettingsVars? _$v;

  GgetLayoutSettingsVarsBuilder();

  @override
  void replace(GgetLayoutSettingsVars other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GgetLayoutSettingsVars;
  }

  @override
  void update(void Function(GgetLayoutSettingsVarsBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GgetLayoutSettingsVars build() => _build();

  _$GgetLayoutSettingsVars _build() {
    final _$result = _$v ?? new _$GgetLayoutSettingsVars._();
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
