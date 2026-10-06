// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint

import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'schema.schema.gql.g.dart';

class GPawaPayOperation extends EnumClass {
  const GPawaPayOperation._(String name) : super(name);

  static const GPawaPayOperation DEPOSIT = _$gPawaPayOperationDEPOSIT;

  static const GPawaPayOperation PAYOUT = _$gPawaPayOperationPAYOUT;

  static Serializer<GPawaPayOperation> get serializer =>
      _$gPawaPayOperationSerializer;

  static BuiltSet<GPawaPayOperation> get values => _$gPawaPayOperationValues;

  static GPawaPayOperation valueOf(String name) =>
      _$gPawaPayOperationValueOf(name);
}

const Map<String, Set<String>> possibleTypesMap = {};
