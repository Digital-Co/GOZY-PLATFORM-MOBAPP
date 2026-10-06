// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'schema.schema.gql.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

const GPawaPayOperation _$gPawaPayOperationDEPOSIT =
    const GPawaPayOperation._('DEPOSIT');
const GPawaPayOperation _$gPawaPayOperationPAYOUT =
    const GPawaPayOperation._('PAYOUT');

GPawaPayOperation _$gPawaPayOperationValueOf(String name) {
  switch (name) {
    case 'DEPOSIT':
      return _$gPawaPayOperationDEPOSIT;
    case 'PAYOUT':
      return _$gPawaPayOperationPAYOUT;
    default:
      throw new ArgumentError(name);
  }
}

final BuiltSet<GPawaPayOperation> _$gPawaPayOperationValues =
    new BuiltSet<GPawaPayOperation>(const <GPawaPayOperation>[
  _$gPawaPayOperationDEPOSIT,
  _$gPawaPayOperationPAYOUT,
]);

Serializer<GPawaPayOperation> _$gPawaPayOperationSerializer =
    new _$GPawaPayOperationSerializer();

class _$GPawaPayOperationSerializer
    implements PrimitiveSerializer<GPawaPayOperation> {
  @override
  final Iterable<Type> types = const <Type>[GPawaPayOperation];
  @override
  final String wireName = 'GPawaPayOperation';

  @override
  Object serialize(Serializers serializers, GPawaPayOperation object,
          {FullType specifiedType = FullType.unspecified}) =>
      object.name;

  @override
  GPawaPayOperation deserialize(Serializers serializers, Object serialized,
          {FullType specifiedType = FullType.unspecified}) =>
      GPawaPayOperation.valueOf(serialized as String);
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
