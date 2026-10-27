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
Serializer<GInspectionChecklistAnswerInput>
    _$gInspectionChecklistAnswerInputSerializer =
    new _$GInspectionChecklistAnswerInputSerializer();
Serializer<GInspectionInput> _$gInspectionInputSerializer =
    new _$GInspectionInputSerializer();
Serializer<GCheckoutInput> _$gCheckoutInputSerializer =
    new _$GCheckoutInputSerializer();

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

class _$GInspectionChecklistAnswerInputSerializer
    implements StructuredSerializer<GInspectionChecklistAnswerInput> {
  @override
  final Iterable<Type> types = const [
    GInspectionChecklistAnswerInput,
    _$GInspectionChecklistAnswerInput
  ];
  @override
  final String wireName = 'GInspectionChecklistAnswerInput';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, GInspectionChecklistAnswerInput object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      'key',
      serializers.serialize(object.key, specifiedType: const FullType(String)),
      'present',
      serializers.serialize(object.present,
          specifiedType: const FullType(bool)),
    ];

    return result;
  }

  @override
  GInspectionChecklistAnswerInput deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GInspectionChecklistAnswerInputBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'key':
          result.key = serializers.deserialize(value,
              specifiedType: const FullType(String))! as String;
          break;
        case 'present':
          result.present = serializers.deserialize(value,
              specifiedType: const FullType(bool))! as bool;
          break;
      }
    }

    return result.build();
  }
}

class _$GInspectionInputSerializer
    implements StructuredSerializer<GInspectionInput> {
  @override
  final Iterable<Type> types = const [GInspectionInput, _$GInspectionInput];
  @override
  final String wireName = 'GInspectionInput';

  @override
  Iterable<Object?> serialize(Serializers serializers, GInspectionInput object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[];
    Object? value;
    value = object.generalState;
    if (value != null) {
      result
        ..add('generalState')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.mileage;
    if (value != null) {
      result
        ..add('mileage')
        ..add(serializers.serialize(value, specifiedType: const FullType(int)));
    }
    value = object.fuelLevel;
    if (value != null) {
      result
        ..add('fuelLevel')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.keysConfirmed;
    if (value != null) {
      result
        ..add('keysConfirmed')
        ..add(
            serializers.serialize(value, specifiedType: const FullType(bool)));
    }
    value = object.comment;
    if (value != null) {
      result
        ..add('comment')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.checklist;
    if (value != null) {
      result
        ..add('checklist')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(BuiltList,
                const [const FullType(GInspectionChecklistAnswerInput)])));
    }
    value = object.hasDamage;
    if (value != null) {
      result
        ..add('hasDamage')
        ..add(
            serializers.serialize(value, specifiedType: const FullType(bool)));
    }
    value = object.damageDescription;
    if (value != null) {
      result
        ..add('damageDescription')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.photoIds;
    if (value != null) {
      result
        ..add('photoIds')
        ..add(serializers.serialize(value,
            specifiedType:
                const FullType(BuiltList, const [const FullType(int)])));
    }
    return result;
  }

  @override
  GInspectionInput deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GInspectionInputBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'generalState':
          result.generalState = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'mileage':
          result.mileage = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int?;
          break;
        case 'fuelLevel':
          result.fuelLevel = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'keysConfirmed':
          result.keysConfirmed = serializers.deserialize(value,
              specifiedType: const FullType(bool)) as bool?;
          break;
        case 'comment':
          result.comment = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'checklist':
          result.checklist.replace(serializers.deserialize(value,
              specifiedType: const FullType(BuiltList, const [
                const FullType(GInspectionChecklistAnswerInput)
              ]))! as BuiltList<Object?>);
          break;
        case 'hasDamage':
          result.hasDamage = serializers.deserialize(value,
              specifiedType: const FullType(bool)) as bool?;
          break;
        case 'damageDescription':
          result.damageDescription = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'photoIds':
          result.photoIds.replace(serializers.deserialize(value,
                  specifiedType:
                      const FullType(BuiltList, const [const FullType(int)]))!
              as BuiltList<Object?>);
          break;
      }
    }

    return result.build();
  }
}

class _$GCheckoutInputSerializer
    implements StructuredSerializer<GCheckoutInput> {
  @override
  final Iterable<Type> types = const [GCheckoutInput, _$GCheckoutInput];
  @override
  final String wireName = 'GCheckoutInput';

  @override
  Iterable<Object?> serialize(Serializers serializers, GCheckoutInput object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[];
    Object? value;
    value = object.generalState;
    if (value != null) {
      result
        ..add('generalState')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.mileage;
    if (value != null) {
      result
        ..add('mileage')
        ..add(serializers.serialize(value, specifiedType: const FullType(int)));
    }
    value = object.fuelLevel;
    if (value != null) {
      result
        ..add('fuelLevel')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.keysConfirmed;
    if (value != null) {
      result
        ..add('keysConfirmed')
        ..add(
            serializers.serialize(value, specifiedType: const FullType(bool)));
    }
    value = object.comment;
    if (value != null) {
      result
        ..add('comment')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.checklist;
    if (value != null) {
      result
        ..add('checklist')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(BuiltList,
                const [const FullType(GInspectionChecklistAnswerInput)])));
    }
    value = object.hasDamage;
    if (value != null) {
      result
        ..add('hasDamage')
        ..add(
            serializers.serialize(value, specifiedType: const FullType(bool)));
    }
    value = object.damageDescription;
    if (value != null) {
      result
        ..add('damageDescription')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.photoIds;
    if (value != null) {
      result
        ..add('photoIds')
        ..add(serializers.serialize(value,
            specifiedType:
                const FullType(BuiltList, const [const FullType(int)])));
    }
    value = object.expectedVersion;
    if (value != null) {
      result
        ..add('expectedVersion')
        ..add(serializers.serialize(value, specifiedType: const FullType(int)));
    }
    return result;
  }

  @override
  GCheckoutInput deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GCheckoutInputBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'generalState':
          result.generalState = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'mileage':
          result.mileage = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int?;
          break;
        case 'fuelLevel':
          result.fuelLevel = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'keysConfirmed':
          result.keysConfirmed = serializers.deserialize(value,
              specifiedType: const FullType(bool)) as bool?;
          break;
        case 'comment':
          result.comment = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'checklist':
          result.checklist.replace(serializers.deserialize(value,
              specifiedType: const FullType(BuiltList, const [
                const FullType(GInspectionChecklistAnswerInput)
              ]))! as BuiltList<Object?>);
          break;
        case 'hasDamage':
          result.hasDamage = serializers.deserialize(value,
              specifiedType: const FullType(bool)) as bool?;
          break;
        case 'damageDescription':
          result.damageDescription = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'photoIds':
          result.photoIds.replace(serializers.deserialize(value,
                  specifiedType:
                      const FullType(BuiltList, const [const FullType(int)]))!
              as BuiltList<Object?>);
          break;
        case 'expectedVersion':
          result.expectedVersion = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int?;
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

class _$GInspectionChecklistAnswerInput
    extends GInspectionChecklistAnswerInput {
  @override
  final String key;
  @override
  final bool present;

  factory _$GInspectionChecklistAnswerInput(
          [void Function(GInspectionChecklistAnswerInputBuilder)? updates]) =>
      (new GInspectionChecklistAnswerInputBuilder()..update(updates))._build();

  _$GInspectionChecklistAnswerInput._(
      {required this.key, required this.present})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        key, r'GInspectionChecklistAnswerInput', 'key');
    BuiltValueNullFieldError.checkNotNull(
        present, r'GInspectionChecklistAnswerInput', 'present');
  }

  @override
  GInspectionChecklistAnswerInput rebuild(
          void Function(GInspectionChecklistAnswerInputBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GInspectionChecklistAnswerInputBuilder toBuilder() =>
      new GInspectionChecklistAnswerInputBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GInspectionChecklistAnswerInput &&
        key == other.key &&
        present == other.present;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, key.hashCode);
    _$hash = $jc(_$hash, present.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'GInspectionChecklistAnswerInput')
          ..add('key', key)
          ..add('present', present))
        .toString();
  }
}

class GInspectionChecklistAnswerInputBuilder
    implements
        Builder<GInspectionChecklistAnswerInput,
            GInspectionChecklistAnswerInputBuilder> {
  _$GInspectionChecklistAnswerInput? _$v;

  String? _key;
  String? get key => _$this._key;
  set key(String? key) => _$this._key = key;

  bool? _present;
  bool? get present => _$this._present;
  set present(bool? present) => _$this._present = present;

  GInspectionChecklistAnswerInputBuilder();

  GInspectionChecklistAnswerInputBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _key = $v.key;
      _present = $v.present;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GInspectionChecklistAnswerInput other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GInspectionChecklistAnswerInput;
  }

  @override
  void update(void Function(GInspectionChecklistAnswerInputBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GInspectionChecklistAnswerInput build() => _build();

  _$GInspectionChecklistAnswerInput _build() {
    final _$result = _$v ??
        new _$GInspectionChecklistAnswerInput._(
            key: BuiltValueNullFieldError.checkNotNull(
                key, r'GInspectionChecklistAnswerInput', 'key'),
            present: BuiltValueNullFieldError.checkNotNull(
                present, r'GInspectionChecklistAnswerInput', 'present'));
    replace(_$result);
    return _$result;
  }
}

class _$GInspectionInput extends GInspectionInput {
  @override
  final String? generalState;
  @override
  final int? mileage;
  @override
  final String? fuelLevel;
  @override
  final bool? keysConfirmed;
  @override
  final String? comment;
  @override
  final BuiltList<GInspectionChecklistAnswerInput>? checklist;
  @override
  final bool? hasDamage;
  @override
  final String? damageDescription;
  @override
  final BuiltList<int>? photoIds;

  factory _$GInspectionInput(
          [void Function(GInspectionInputBuilder)? updates]) =>
      (new GInspectionInputBuilder()..update(updates))._build();

  _$GInspectionInput._(
      {this.generalState,
      this.mileage,
      this.fuelLevel,
      this.keysConfirmed,
      this.comment,
      this.checklist,
      this.hasDamage,
      this.damageDescription,
      this.photoIds})
      : super._();

  @override
  GInspectionInput rebuild(void Function(GInspectionInputBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GInspectionInputBuilder toBuilder() =>
      new GInspectionInputBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GInspectionInput &&
        generalState == other.generalState &&
        mileage == other.mileage &&
        fuelLevel == other.fuelLevel &&
        keysConfirmed == other.keysConfirmed &&
        comment == other.comment &&
        checklist == other.checklist &&
        hasDamage == other.hasDamage &&
        damageDescription == other.damageDescription &&
        photoIds == other.photoIds;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, generalState.hashCode);
    _$hash = $jc(_$hash, mileage.hashCode);
    _$hash = $jc(_$hash, fuelLevel.hashCode);
    _$hash = $jc(_$hash, keysConfirmed.hashCode);
    _$hash = $jc(_$hash, comment.hashCode);
    _$hash = $jc(_$hash, checklist.hashCode);
    _$hash = $jc(_$hash, hasDamage.hashCode);
    _$hash = $jc(_$hash, damageDescription.hashCode);
    _$hash = $jc(_$hash, photoIds.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'GInspectionInput')
          ..add('generalState', generalState)
          ..add('mileage', mileage)
          ..add('fuelLevel', fuelLevel)
          ..add('keysConfirmed', keysConfirmed)
          ..add('comment', comment)
          ..add('checklist', checklist)
          ..add('hasDamage', hasDamage)
          ..add('damageDescription', damageDescription)
          ..add('photoIds', photoIds))
        .toString();
  }
}

class GInspectionInputBuilder
    implements Builder<GInspectionInput, GInspectionInputBuilder> {
  _$GInspectionInput? _$v;

  String? _generalState;
  String? get generalState => _$this._generalState;
  set generalState(String? generalState) => _$this._generalState = generalState;

  int? _mileage;
  int? get mileage => _$this._mileage;
  set mileage(int? mileage) => _$this._mileage = mileage;

  String? _fuelLevel;
  String? get fuelLevel => _$this._fuelLevel;
  set fuelLevel(String? fuelLevel) => _$this._fuelLevel = fuelLevel;

  bool? _keysConfirmed;
  bool? get keysConfirmed => _$this._keysConfirmed;
  set keysConfirmed(bool? keysConfirmed) =>
      _$this._keysConfirmed = keysConfirmed;

  String? _comment;
  String? get comment => _$this._comment;
  set comment(String? comment) => _$this._comment = comment;

  ListBuilder<GInspectionChecklistAnswerInput>? _checklist;
  ListBuilder<GInspectionChecklistAnswerInput> get checklist =>
      _$this._checklist ??= new ListBuilder<GInspectionChecklistAnswerInput>();
  set checklist(ListBuilder<GInspectionChecklistAnswerInput>? checklist) =>
      _$this._checklist = checklist;

  bool? _hasDamage;
  bool? get hasDamage => _$this._hasDamage;
  set hasDamage(bool? hasDamage) => _$this._hasDamage = hasDamage;

  String? _damageDescription;
  String? get damageDescription => _$this._damageDescription;
  set damageDescription(String? damageDescription) =>
      _$this._damageDescription = damageDescription;

  ListBuilder<int>? _photoIds;
  ListBuilder<int> get photoIds => _$this._photoIds ??= new ListBuilder<int>();
  set photoIds(ListBuilder<int>? photoIds) => _$this._photoIds = photoIds;

  GInspectionInputBuilder();

  GInspectionInputBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _generalState = $v.generalState;
      _mileage = $v.mileage;
      _fuelLevel = $v.fuelLevel;
      _keysConfirmed = $v.keysConfirmed;
      _comment = $v.comment;
      _checklist = $v.checklist?.toBuilder();
      _hasDamage = $v.hasDamage;
      _damageDescription = $v.damageDescription;
      _photoIds = $v.photoIds?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GInspectionInput other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GInspectionInput;
  }

  @override
  void update(void Function(GInspectionInputBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GInspectionInput build() => _build();

  _$GInspectionInput _build() {
    _$GInspectionInput _$result;
    try {
      _$result = _$v ??
          new _$GInspectionInput._(
              generalState: generalState,
              mileage: mileage,
              fuelLevel: fuelLevel,
              keysConfirmed: keysConfirmed,
              comment: comment,
              checklist: _checklist?.build(),
              hasDamage: hasDamage,
              damageDescription: damageDescription,
              photoIds: _photoIds?.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'checklist';
        _checklist?.build();

        _$failedField = 'photoIds';
        _photoIds?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'GInspectionInput', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

class _$GCheckoutInput extends GCheckoutInput {
  @override
  final String? generalState;
  @override
  final int? mileage;
  @override
  final String? fuelLevel;
  @override
  final bool? keysConfirmed;
  @override
  final String? comment;
  @override
  final BuiltList<GInspectionChecklistAnswerInput>? checklist;
  @override
  final bool? hasDamage;
  @override
  final String? damageDescription;
  @override
  final BuiltList<int>? photoIds;
  @override
  final int? expectedVersion;

  factory _$GCheckoutInput([void Function(GCheckoutInputBuilder)? updates]) =>
      (new GCheckoutInputBuilder()..update(updates))._build();

  _$GCheckoutInput._(
      {this.generalState,
      this.mileage,
      this.fuelLevel,
      this.keysConfirmed,
      this.comment,
      this.checklist,
      this.hasDamage,
      this.damageDescription,
      this.photoIds,
      this.expectedVersion})
      : super._();

  @override
  GCheckoutInput rebuild(void Function(GCheckoutInputBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GCheckoutInputBuilder toBuilder() =>
      new GCheckoutInputBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GCheckoutInput &&
        generalState == other.generalState &&
        mileage == other.mileage &&
        fuelLevel == other.fuelLevel &&
        keysConfirmed == other.keysConfirmed &&
        comment == other.comment &&
        checklist == other.checklist &&
        hasDamage == other.hasDamage &&
        damageDescription == other.damageDescription &&
        photoIds == other.photoIds &&
        expectedVersion == other.expectedVersion;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, generalState.hashCode);
    _$hash = $jc(_$hash, mileage.hashCode);
    _$hash = $jc(_$hash, fuelLevel.hashCode);
    _$hash = $jc(_$hash, keysConfirmed.hashCode);
    _$hash = $jc(_$hash, comment.hashCode);
    _$hash = $jc(_$hash, checklist.hashCode);
    _$hash = $jc(_$hash, hasDamage.hashCode);
    _$hash = $jc(_$hash, damageDescription.hashCode);
    _$hash = $jc(_$hash, photoIds.hashCode);
    _$hash = $jc(_$hash, expectedVersion.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'GCheckoutInput')
          ..add('generalState', generalState)
          ..add('mileage', mileage)
          ..add('fuelLevel', fuelLevel)
          ..add('keysConfirmed', keysConfirmed)
          ..add('comment', comment)
          ..add('checklist', checklist)
          ..add('hasDamage', hasDamage)
          ..add('damageDescription', damageDescription)
          ..add('photoIds', photoIds)
          ..add('expectedVersion', expectedVersion))
        .toString();
  }
}

class GCheckoutInputBuilder
    implements Builder<GCheckoutInput, GCheckoutInputBuilder> {
  _$GCheckoutInput? _$v;

  String? _generalState;
  String? get generalState => _$this._generalState;
  set generalState(String? generalState) => _$this._generalState = generalState;

  int? _mileage;
  int? get mileage => _$this._mileage;
  set mileage(int? mileage) => _$this._mileage = mileage;

  String? _fuelLevel;
  String? get fuelLevel => _$this._fuelLevel;
  set fuelLevel(String? fuelLevel) => _$this._fuelLevel = fuelLevel;

  bool? _keysConfirmed;
  bool? get keysConfirmed => _$this._keysConfirmed;
  set keysConfirmed(bool? keysConfirmed) =>
      _$this._keysConfirmed = keysConfirmed;

  String? _comment;
  String? get comment => _$this._comment;
  set comment(String? comment) => _$this._comment = comment;

  ListBuilder<GInspectionChecklistAnswerInput>? _checklist;
  ListBuilder<GInspectionChecklistAnswerInput> get checklist =>
      _$this._checklist ??= new ListBuilder<GInspectionChecklistAnswerInput>();
  set checklist(ListBuilder<GInspectionChecklistAnswerInput>? checklist) =>
      _$this._checklist = checklist;

  bool? _hasDamage;
  bool? get hasDamage => _$this._hasDamage;
  set hasDamage(bool? hasDamage) => _$this._hasDamage = hasDamage;

  String? _damageDescription;
  String? get damageDescription => _$this._damageDescription;
  set damageDescription(String? damageDescription) =>
      _$this._damageDescription = damageDescription;

  ListBuilder<int>? _photoIds;
  ListBuilder<int> get photoIds => _$this._photoIds ??= new ListBuilder<int>();
  set photoIds(ListBuilder<int>? photoIds) => _$this._photoIds = photoIds;

  int? _expectedVersion;
  int? get expectedVersion => _$this._expectedVersion;
  set expectedVersion(int? expectedVersion) =>
      _$this._expectedVersion = expectedVersion;

  GCheckoutInputBuilder();

  GCheckoutInputBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _generalState = $v.generalState;
      _mileage = $v.mileage;
      _fuelLevel = $v.fuelLevel;
      _keysConfirmed = $v.keysConfirmed;
      _comment = $v.comment;
      _checklist = $v.checklist?.toBuilder();
      _hasDamage = $v.hasDamage;
      _damageDescription = $v.damageDescription;
      _photoIds = $v.photoIds?.toBuilder();
      _expectedVersion = $v.expectedVersion;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GCheckoutInput other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GCheckoutInput;
  }

  @override
  void update(void Function(GCheckoutInputBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GCheckoutInput build() => _build();

  _$GCheckoutInput _build() {
    _$GCheckoutInput _$result;
    try {
      _$result = _$v ??
          new _$GCheckoutInput._(
              generalState: generalState,
              mileage: mileage,
              fuelLevel: fuelLevel,
              keysConfirmed: keysConfirmed,
              comment: comment,
              checklist: _checklist?.build(),
              hasDamage: hasDamage,
              damageDescription: damageDescription,
              photoIds: _photoIds?.build(),
              expectedVersion: expectedVersion);
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'checklist';
        _checklist?.build();

        _$failedField = 'photoIds';
        _photoIds?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'GCheckoutInput', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
