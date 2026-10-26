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
Serializer<GReservationOptionInput> _$gReservationOptionInputSerializer =
    new _$GReservationOptionInputSerializer();

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

class _$GReservationOptionInputSerializer
    implements StructuredSerializer<GReservationOptionInput> {
  @override
  final Iterable<Type> types = const [
    GReservationOptionInput,
    _$GReservationOptionInput
  ];
  @override
  final String wireName = 'GReservationOptionInput';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, GReservationOptionInput object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      'optionId',
      serializers.serialize(object.optionId,
          specifiedType: const FullType(int)),
    ];
    Object? value;
    value = object.userInput;
    if (value != null) {
      result
        ..add('userInput')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    return result;
  }

  @override
  GReservationOptionInput deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GReservationOptionInputBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'optionId':
          result.optionId = serializers.deserialize(value,
              specifiedType: const FullType(int))! as int;
          break;
        case 'userInput':
          result.userInput = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
      }
    }

    return result.build();
  }
}

class _$GReservationOptionInput extends GReservationOptionInput {
  @override
  final int optionId;
  @override
  final String? userInput;

  factory _$GReservationOptionInput(
          [void Function(GReservationOptionInputBuilder)? updates]) =>
      (new GReservationOptionInputBuilder()..update(updates))._build();

  _$GReservationOptionInput._({required this.optionId, this.userInput})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        optionId, r'GReservationOptionInput', 'optionId');
  }

  @override
  GReservationOptionInput rebuild(
          void Function(GReservationOptionInputBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GReservationOptionInputBuilder toBuilder() =>
      new GReservationOptionInputBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GReservationOptionInput &&
        optionId == other.optionId &&
        userInput == other.userInput;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, optionId.hashCode);
    _$hash = $jc(_$hash, userInput.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'GReservationOptionInput')
          ..add('optionId', optionId)
          ..add('userInput', userInput))
        .toString();
  }
}

class GReservationOptionInputBuilder
    implements
        Builder<GReservationOptionInput, GReservationOptionInputBuilder> {
  _$GReservationOptionInput? _$v;

  int? _optionId;
  int? get optionId => _$this._optionId;
  set optionId(int? optionId) => _$this._optionId = optionId;

  String? _userInput;
  String? get userInput => _$this._userInput;
  set userInput(String? userInput) => _$this._userInput = userInput;

  GReservationOptionInputBuilder();

  GReservationOptionInputBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _optionId = $v.optionId;
      _userInput = $v.userInput;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GReservationOptionInput other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GReservationOptionInput;
  }

  @override
  void update(void Function(GReservationOptionInputBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GReservationOptionInput build() => _build();

  _$GReservationOptionInput _build() {
    final _$result = _$v ??
        new _$GReservationOptionInput._(
            optionId: BuiltValueNullFieldError.checkNotNull(
                optionId, r'GReservationOptionInput', 'optionId'),
            userInput: userInput);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
