// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'getcountries.var.gql.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<GgetCountriesVars> _$ggetCountriesVarsSerializer =
    new _$GgetCountriesVarsSerializer();

class _$GgetCountriesVarsSerializer
    implements StructuredSerializer<GgetCountriesVars> {
  @override
  final Iterable<Type> types = const [GgetCountriesVars, _$GgetCountriesVars];
  @override
  final String wireName = 'GgetCountriesVars';

  @override
  Iterable<Object?> serialize(Serializers serializers, GgetCountriesVars object,
      {FullType specifiedType = FullType.unspecified}) {
    return <Object?>[];
  }

  @override
  GgetCountriesVars deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    return new GgetCountriesVarsBuilder().build();
  }
}

class _$GgetCountriesVars extends GgetCountriesVars {
  factory _$GgetCountriesVars(
          [void Function(GgetCountriesVarsBuilder)? updates]) =>
      (new GgetCountriesVarsBuilder()..update(updates))._build();

  _$GgetCountriesVars._() : super._();

  @override
  GgetCountriesVars rebuild(void Function(GgetCountriesVarsBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GgetCountriesVarsBuilder toBuilder() =>
      new GgetCountriesVarsBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GgetCountriesVars;
  }

  @override
  int get hashCode {
    return 719352731;
  }

  @override
  String toString() {
    return newBuiltValueToStringHelper(r'GgetCountriesVars').toString();
  }
}

class GgetCountriesVarsBuilder
    implements Builder<GgetCountriesVars, GgetCountriesVarsBuilder> {
  _$GgetCountriesVars? _$v;

  GgetCountriesVarsBuilder();

  @override
  void replace(GgetCountriesVars other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GgetCountriesVars;
  }

  @override
  void update(void Function(GgetCountriesVarsBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GgetCountriesVars build() => _build();

  _$GgetCountriesVars _build() {
    final _$result = _$v ?? new _$GgetCountriesVars._();
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
