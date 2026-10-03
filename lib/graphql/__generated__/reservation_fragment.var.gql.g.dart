// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'reservation_fragment.var.gql.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<GreservationFragmentVars> _$greservationFragmentVarsSerializer =
    new _$GreservationFragmentVarsSerializer();

class _$GreservationFragmentVarsSerializer
    implements StructuredSerializer<GreservationFragmentVars> {
  @override
  final Iterable<Type> types = const [
    GreservationFragmentVars,
    _$GreservationFragmentVars
  ];
  @override
  final String wireName = 'GreservationFragmentVars';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, GreservationFragmentVars object,
      {FullType specifiedType = FullType.unspecified}) {
    return <Object?>[];
  }

  @override
  GreservationFragmentVars deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    return new GreservationFragmentVarsBuilder().build();
  }
}

class _$GreservationFragmentVars extends GreservationFragmentVars {
  factory _$GreservationFragmentVars(
          [void Function(GreservationFragmentVarsBuilder)? updates]) =>
      (new GreservationFragmentVarsBuilder()..update(updates))._build();

  _$GreservationFragmentVars._() : super._();

  @override
  GreservationFragmentVars rebuild(
          void Function(GreservationFragmentVarsBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GreservationFragmentVarsBuilder toBuilder() =>
      new GreservationFragmentVarsBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GreservationFragmentVars;
  }

  @override
  int get hashCode {
    return 914635996;
  }

  @override
  String toString() {
    return newBuiltValueToStringHelper(r'GreservationFragmentVars').toString();
  }
}

class GreservationFragmentVarsBuilder
    implements
        Builder<GreservationFragmentVars, GreservationFragmentVarsBuilder> {
  _$GreservationFragmentVars? _$v;

  GreservationFragmentVarsBuilder();

  @override
  void replace(GreservationFragmentVars other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GreservationFragmentVars;
  }

  @override
  void update(void Function(GreservationFragmentVarsBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GreservationFragmentVars build() => _build();

  _$GreservationFragmentVars _build() {
    final _$result = _$v ?? new _$GreservationFragmentVars._();
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
