// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'explore_list.var.gql.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<GgetExploreListingsVars> _$ggetExploreListingsVarsSerializer =
    new _$GgetExploreListingsVarsSerializer();

class _$GgetExploreListingsVarsSerializer
    implements StructuredSerializer<GgetExploreListingsVars> {
  @override
  final Iterable<Type> types = const [
    GgetExploreListingsVars,
    _$GgetExploreListingsVars
  ];
  @override
  final String wireName = 'GgetExploreListingsVars';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, GgetExploreListingsVars object,
      {FullType specifiedType = FullType.unspecified}) {
    return <Object?>[];
  }

  @override
  GgetExploreListingsVars deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    return new GgetExploreListingsVarsBuilder().build();
  }
}

class _$GgetExploreListingsVars extends GgetExploreListingsVars {
  factory _$GgetExploreListingsVars(
          [void Function(GgetExploreListingsVarsBuilder)? updates]) =>
      (new GgetExploreListingsVarsBuilder()..update(updates))._build();

  _$GgetExploreListingsVars._() : super._();

  @override
  GgetExploreListingsVars rebuild(
          void Function(GgetExploreListingsVarsBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GgetExploreListingsVarsBuilder toBuilder() =>
      new GgetExploreListingsVarsBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GgetExploreListingsVars;
  }

  @override
  int get hashCode {
    return 294323251;
  }

  @override
  String toString() {
    return newBuiltValueToStringHelper(r'GgetExploreListingsVars').toString();
  }
}

class GgetExploreListingsVarsBuilder
    implements
        Builder<GgetExploreListingsVars, GgetExploreListingsVarsBuilder> {
  _$GgetExploreListingsVars? _$v;

  GgetExploreListingsVarsBuilder();

  @override
  void replace(GgetExploreListingsVars other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GgetExploreListingsVars;
  }

  @override
  void update(void Function(GgetExploreListingsVarsBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GgetExploreListingsVars build() => _build();

  _$GgetExploreListingsVars _build() {
    final _$result = _$v ?? new _$GgetExploreListingsVars._();
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
