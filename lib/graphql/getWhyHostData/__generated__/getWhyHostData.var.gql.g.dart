// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'getWhyHostData.var.gql.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<GgetWhyHostDataVars> _$ggetWhyHostDataVarsSerializer =
    new _$GgetWhyHostDataVarsSerializer();

class _$GgetWhyHostDataVarsSerializer
    implements StructuredSerializer<GgetWhyHostDataVars> {
  @override
  final Iterable<Type> types = const [
    GgetWhyHostDataVars,
    _$GgetWhyHostDataVars
  ];
  @override
  final String wireName = 'GgetWhyHostDataVars';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, GgetWhyHostDataVars object,
      {FullType specifiedType = FullType.unspecified}) {
    return <Object?>[];
  }

  @override
  GgetWhyHostDataVars deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    return new GgetWhyHostDataVarsBuilder().build();
  }
}

class _$GgetWhyHostDataVars extends GgetWhyHostDataVars {
  factory _$GgetWhyHostDataVars(
          [void Function(GgetWhyHostDataVarsBuilder)? updates]) =>
      (new GgetWhyHostDataVarsBuilder()..update(updates))._build();

  _$GgetWhyHostDataVars._() : super._();

  @override
  GgetWhyHostDataVars rebuild(
          void Function(GgetWhyHostDataVarsBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GgetWhyHostDataVarsBuilder toBuilder() =>
      new GgetWhyHostDataVarsBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GgetWhyHostDataVars;
  }

  @override
  int get hashCode {
    return 596201886;
  }

  @override
  String toString() {
    return newBuiltValueToStringHelper(r'GgetWhyHostDataVars').toString();
  }
}

class GgetWhyHostDataVarsBuilder
    implements Builder<GgetWhyHostDataVars, GgetWhyHostDataVarsBuilder> {
  _$GgetWhyHostDataVars? _$v;

  GgetWhyHostDataVarsBuilder();

  @override
  void replace(GgetWhyHostDataVars other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GgetWhyHostDataVars;
  }

  @override
  void update(void Function(GgetWhyHostDataVarsBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GgetWhyHostDataVars build() => _build();

  _$GgetWhyHostDataVars _build() {
    final _$result = _$v ?? new _$GgetWhyHostDataVars._();
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
