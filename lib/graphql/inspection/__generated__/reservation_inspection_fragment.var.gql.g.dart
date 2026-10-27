// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'reservation_inspection_fragment.var.gql.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<GreservationInspectionFragmentVars>
    _$greservationInspectionFragmentVarsSerializer =
    new _$GreservationInspectionFragmentVarsSerializer();

class _$GreservationInspectionFragmentVarsSerializer
    implements StructuredSerializer<GreservationInspectionFragmentVars> {
  @override
  final Iterable<Type> types = const [
    GreservationInspectionFragmentVars,
    _$GreservationInspectionFragmentVars
  ];
  @override
  final String wireName = 'GreservationInspectionFragmentVars';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, GreservationInspectionFragmentVars object,
      {FullType specifiedType = FullType.unspecified}) {
    return <Object?>[];
  }

  @override
  GreservationInspectionFragmentVars deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    return new GreservationInspectionFragmentVarsBuilder().build();
  }
}

class _$GreservationInspectionFragmentVars
    extends GreservationInspectionFragmentVars {
  factory _$GreservationInspectionFragmentVars(
          [void Function(GreservationInspectionFragmentVarsBuilder)?
              updates]) =>
      (new GreservationInspectionFragmentVarsBuilder()..update(updates))
          ._build();

  _$GreservationInspectionFragmentVars._() : super._();

  @override
  GreservationInspectionFragmentVars rebuild(
          void Function(GreservationInspectionFragmentVarsBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GreservationInspectionFragmentVarsBuilder toBuilder() =>
      new GreservationInspectionFragmentVarsBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GreservationInspectionFragmentVars;
  }

  @override
  int get hashCode {
    return 112362348;
  }

  @override
  String toString() {
    return newBuiltValueToStringHelper(r'GreservationInspectionFragmentVars')
        .toString();
  }
}

class GreservationInspectionFragmentVarsBuilder
    implements
        Builder<GreservationInspectionFragmentVars,
            GreservationInspectionFragmentVarsBuilder> {
  _$GreservationInspectionFragmentVars? _$v;

  GreservationInspectionFragmentVarsBuilder();

  @override
  void replace(GreservationInspectionFragmentVars other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GreservationInspectionFragmentVars;
  }

  @override
  void update(
      void Function(GreservationInspectionFragmentVarsBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GreservationInspectionFragmentVars build() => _build();

  _$GreservationInspectionFragmentVars _build() {
    final _$result = _$v ?? new _$GreservationInspectionFragmentVars._();
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
