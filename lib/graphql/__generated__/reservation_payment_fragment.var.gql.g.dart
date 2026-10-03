// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'reservation_payment_fragment.var.gql.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<GreservationPaymentFragmentVars>
    _$greservationPaymentFragmentVarsSerializer =
    new _$GreservationPaymentFragmentVarsSerializer();

class _$GreservationPaymentFragmentVarsSerializer
    implements StructuredSerializer<GreservationPaymentFragmentVars> {
  @override
  final Iterable<Type> types = const [
    GreservationPaymentFragmentVars,
    _$GreservationPaymentFragmentVars
  ];
  @override
  final String wireName = 'GreservationPaymentFragmentVars';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, GreservationPaymentFragmentVars object,
      {FullType specifiedType = FullType.unspecified}) {
    return <Object?>[];
  }

  @override
  GreservationPaymentFragmentVars deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    return new GreservationPaymentFragmentVarsBuilder().build();
  }
}

class _$GreservationPaymentFragmentVars
    extends GreservationPaymentFragmentVars {
  factory _$GreservationPaymentFragmentVars(
          [void Function(GreservationPaymentFragmentVarsBuilder)? updates]) =>
      (new GreservationPaymentFragmentVarsBuilder()..update(updates))._build();

  _$GreservationPaymentFragmentVars._() : super._();

  @override
  GreservationPaymentFragmentVars rebuild(
          void Function(GreservationPaymentFragmentVarsBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GreservationPaymentFragmentVarsBuilder toBuilder() =>
      new GreservationPaymentFragmentVarsBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GreservationPaymentFragmentVars;
  }

  @override
  int get hashCode {
    return 100964608;
  }

  @override
  String toString() {
    return newBuiltValueToStringHelper(r'GreservationPaymentFragmentVars')
        .toString();
  }
}

class GreservationPaymentFragmentVarsBuilder
    implements
        Builder<GreservationPaymentFragmentVars,
            GreservationPaymentFragmentVarsBuilder> {
  _$GreservationPaymentFragmentVars? _$v;

  GreservationPaymentFragmentVarsBuilder();

  @override
  void replace(GreservationPaymentFragmentVars other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GreservationPaymentFragmentVars;
  }

  @override
  void update(void Function(GreservationPaymentFragmentVarsBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GreservationPaymentFragmentVars build() => _build();

  _$GreservationPaymentFragmentVars _build() {
    final _$result = _$v ?? new _$GreservationPaymentFragmentVars._();
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
