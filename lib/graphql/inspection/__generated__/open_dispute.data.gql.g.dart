// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'open_dispute.data.gql.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<GopenDisputeData> _$gopenDisputeDataSerializer =
    new _$GopenDisputeDataSerializer();
Serializer<GopenDisputeData_openDispute>
    _$gopenDisputeDataOpenDisputeSerializer =
    new _$GopenDisputeData_openDisputeSerializer();
Serializer<GopenDisputeData_openDispute_dispute>
    _$gopenDisputeDataOpenDisputeDisputeSerializer =
    new _$GopenDisputeData_openDispute_disputeSerializer();
Serializer<GopenDisputeData_openDispute_dispute_statements>
    _$gopenDisputeDataOpenDisputeDisputeStatementsSerializer =
    new _$GopenDisputeData_openDispute_dispute_statementsSerializer();
Serializer<GopenDisputeData_openDispute_dispute_decisions>
    _$gopenDisputeDataOpenDisputeDisputeDecisionsSerializer =
    new _$GopenDisputeData_openDispute_dispute_decisionsSerializer();

class _$GopenDisputeDataSerializer
    implements StructuredSerializer<GopenDisputeData> {
  @override
  final Iterable<Type> types = const [GopenDisputeData, _$GopenDisputeData];
  @override
  final String wireName = 'GopenDisputeData';

  @override
  Iterable<Object?> serialize(Serializers serializers, GopenDisputeData object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      '__typename',
      serializers.serialize(object.G__typename,
          specifiedType: const FullType(String)),
    ];
    Object? value;
    value = object.openDispute;
    if (value != null) {
      result
        ..add('openDispute')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(GopenDisputeData_openDispute)));
    }
    return result;
  }

  @override
  GopenDisputeData deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GopenDisputeDataBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case '__typename':
          result.G__typename = serializers.deserialize(value,
              specifiedType: const FullType(String))! as String;
          break;
        case 'openDispute':
          result.openDispute.replace(serializers.deserialize(value,
                  specifiedType: const FullType(GopenDisputeData_openDispute))!
              as GopenDisputeData_openDispute);
          break;
      }
    }

    return result.build();
  }
}

class _$GopenDisputeData_openDisputeSerializer
    implements StructuredSerializer<GopenDisputeData_openDispute> {
  @override
  final Iterable<Type> types = const [
    GopenDisputeData_openDispute,
    _$GopenDisputeData_openDispute
  ];
  @override
  final String wireName = 'GopenDisputeData_openDispute';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, GopenDisputeData_openDispute object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      '__typename',
      serializers.serialize(object.G__typename,
          specifiedType: const FullType(String)),
    ];
    Object? value;
    value = object.status;
    if (value != null) {
      result
        ..add('status')
        ..add(serializers.serialize(value, specifiedType: const FullType(int)));
    }
    value = object.errorMessage;
    if (value != null) {
      result
        ..add('errorMessage')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.dispute;
    if (value != null) {
      result
        ..add('dispute')
        ..add(serializers.serialize(value,
            specifiedType:
                const FullType(GopenDisputeData_openDispute_dispute)));
    }
    return result;
  }

  @override
  GopenDisputeData_openDispute deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GopenDisputeData_openDisputeBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case '__typename':
          result.G__typename = serializers.deserialize(value,
              specifiedType: const FullType(String))! as String;
          break;
        case 'status':
          result.status = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int?;
          break;
        case 'errorMessage':
          result.errorMessage = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'dispute':
          result.dispute.replace(serializers.deserialize(value,
                  specifiedType:
                      const FullType(GopenDisputeData_openDispute_dispute))!
              as GopenDisputeData_openDispute_dispute);
          break;
      }
    }

    return result.build();
  }
}

class _$GopenDisputeData_openDispute_disputeSerializer
    implements StructuredSerializer<GopenDisputeData_openDispute_dispute> {
  @override
  final Iterable<Type> types = const [
    GopenDisputeData_openDispute_dispute,
    _$GopenDisputeData_openDispute_dispute
  ];
  @override
  final String wireName = 'GopenDisputeData_openDispute_dispute';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, GopenDisputeData_openDispute_dispute object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      '__typename',
      serializers.serialize(object.G__typename,
          specifiedType: const FullType(String)),
    ];
    Object? value;
    value = object.id;
    if (value != null) {
      result
        ..add('id')
        ..add(serializers.serialize(value, specifiedType: const FullType(int)));
    }
    value = object.reservationId;
    if (value != null) {
      result
        ..add('reservationId')
        ..add(serializers.serialize(value, specifiedType: const FullType(int)));
    }
    value = object.openedBy;
    if (value != null) {
      result
        ..add('openedBy')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.openedByRole;
    if (value != null) {
      result
        ..add('openedByRole')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.reasonCode;
    if (value != null) {
      result
        ..add('reasonCode')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.status;
    if (value != null) {
      result
        ..add('status')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.isActive;
    if (value != null) {
      result
        ..add('isActive')
        ..add(
            serializers.serialize(value, specifiedType: const FullType(bool)));
    }
    value = object.depositAmount;
    if (value != null) {
      result
        ..add('depositAmount')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(double)));
    }
    value = object.depositStatus;
    if (value != null) {
      result
        ..add('depositStatus')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.createdAt;
    if (value != null) {
      result
        ..add('createdAt')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.closedAt;
    if (value != null) {
      result
        ..add('closedAt')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.statements;
    if (value != null) {
      result
        ..add('statements')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(BuiltList, const [
              const FullType.nullable(
                  GopenDisputeData_openDispute_dispute_statements)
            ])));
    }
    value = object.decisions;
    if (value != null) {
      result
        ..add('decisions')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(BuiltList, const [
              const FullType.nullable(
                  GopenDisputeData_openDispute_dispute_decisions)
            ])));
    }
    return result;
  }

  @override
  GopenDisputeData_openDispute_dispute deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GopenDisputeData_openDispute_disputeBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case '__typename':
          result.G__typename = serializers.deserialize(value,
              specifiedType: const FullType(String))! as String;
          break;
        case 'id':
          result.id = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int?;
          break;
        case 'reservationId':
          result.reservationId = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int?;
          break;
        case 'openedBy':
          result.openedBy = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'openedByRole':
          result.openedByRole = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'reasonCode':
          result.reasonCode = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'status':
          result.status = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'isActive':
          result.isActive = serializers.deserialize(value,
              specifiedType: const FullType(bool)) as bool?;
          break;
        case 'depositAmount':
          result.depositAmount = serializers.deserialize(value,
              specifiedType: const FullType(double)) as double?;
          break;
        case 'depositStatus':
          result.depositStatus = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'createdAt':
          result.createdAt = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'closedAt':
          result.closedAt = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'statements':
          result.statements.replace(serializers.deserialize(value,
              specifiedType: const FullType(BuiltList, const [
                const FullType.nullable(
                    GopenDisputeData_openDispute_dispute_statements)
              ]))! as BuiltList<Object?>);
          break;
        case 'decisions':
          result.decisions.replace(serializers.deserialize(value,
              specifiedType: const FullType(BuiltList, const [
                const FullType.nullable(
                    GopenDisputeData_openDispute_dispute_decisions)
              ]))! as BuiltList<Object?>);
          break;
      }
    }

    return result.build();
  }
}

class _$GopenDisputeData_openDispute_dispute_statementsSerializer
    implements
        StructuredSerializer<GopenDisputeData_openDispute_dispute_statements> {
  @override
  final Iterable<Type> types = const [
    GopenDisputeData_openDispute_dispute_statements,
    _$GopenDisputeData_openDispute_dispute_statements
  ];
  @override
  final String wireName = 'GopenDisputeData_openDispute_dispute_statements';

  @override
  Iterable<Object?> serialize(Serializers serializers,
      GopenDisputeData_openDispute_dispute_statements object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      '__typename',
      serializers.serialize(object.G__typename,
          specifiedType: const FullType(String)),
    ];
    Object? value;
    value = object.id;
    if (value != null) {
      result
        ..add('id')
        ..add(serializers.serialize(value, specifiedType: const FullType(int)));
    }
    value = object.disputeId;
    if (value != null) {
      result
        ..add('disputeId')
        ..add(serializers.serialize(value, specifiedType: const FullType(int)));
    }
    value = object.userId;
    if (value != null) {
      result
        ..add('userId')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.role;
    if (value != null) {
      result
        ..add('role')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.content;
    if (value != null) {
      result
        ..add('content')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.attachments;
    if (value != null) {
      result
        ..add('attachments')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(
                BuiltList, const [const FullType.nullable(int)])));
    }
    value = object.createdAt;
    if (value != null) {
      result
        ..add('createdAt')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    return result;
  }

  @override
  GopenDisputeData_openDispute_dispute_statements deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GopenDisputeData_openDispute_dispute_statementsBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case '__typename':
          result.G__typename = serializers.deserialize(value,
              specifiedType: const FullType(String))! as String;
          break;
        case 'id':
          result.id = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int?;
          break;
        case 'disputeId':
          result.disputeId = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int?;
          break;
        case 'userId':
          result.userId = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'role':
          result.role = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'content':
          result.content = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'attachments':
          result.attachments.replace(serializers.deserialize(value,
                  specifiedType: const FullType(
                      BuiltList, const [const FullType.nullable(int)]))!
              as BuiltList<Object?>);
          break;
        case 'createdAt':
          result.createdAt = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
      }
    }

    return result.build();
  }
}

class _$GopenDisputeData_openDispute_dispute_decisionsSerializer
    implements
        StructuredSerializer<GopenDisputeData_openDispute_dispute_decisions> {
  @override
  final Iterable<Type> types = const [
    GopenDisputeData_openDispute_dispute_decisions,
    _$GopenDisputeData_openDispute_dispute_decisions
  ];
  @override
  final String wireName = 'GopenDisputeData_openDispute_dispute_decisions';

  @override
  Iterable<Object?> serialize(Serializers serializers,
      GopenDisputeData_openDispute_dispute_decisions object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      '__typename',
      serializers.serialize(object.G__typename,
          specifiedType: const FullType(String)),
    ];
    Object? value;
    value = object.id;
    if (value != null) {
      result
        ..add('id')
        ..add(serializers.serialize(value, specifiedType: const FullType(int)));
    }
    value = object.type;
    if (value != null) {
      result
        ..add('type')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.retainedAmount;
    if (value != null) {
      result
        ..add('retainedAmount')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(double)));
    }
    value = object.refundAmount;
    if (value != null) {
      result
        ..add('refundAmount')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(double)));
    }
    value = object.requestedAmount;
    if (value != null) {
      result
        ..add('requestedAmount')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(double)));
    }
    value = object.currency;
    if (value != null) {
      result
        ..add('currency')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.motive;
    if (value != null) {
      result
        ..add('motive')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.createdAt;
    if (value != null) {
      result
        ..add('createdAt')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    return result;
  }

  @override
  GopenDisputeData_openDispute_dispute_decisions deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GopenDisputeData_openDispute_dispute_decisionsBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case '__typename':
          result.G__typename = serializers.deserialize(value,
              specifiedType: const FullType(String))! as String;
          break;
        case 'id':
          result.id = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int?;
          break;
        case 'type':
          result.type = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'retainedAmount':
          result.retainedAmount = serializers.deserialize(value,
              specifiedType: const FullType(double)) as double?;
          break;
        case 'refundAmount':
          result.refundAmount = serializers.deserialize(value,
              specifiedType: const FullType(double)) as double?;
          break;
        case 'requestedAmount':
          result.requestedAmount = serializers.deserialize(value,
              specifiedType: const FullType(double)) as double?;
          break;
        case 'currency':
          result.currency = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'motive':
          result.motive = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'createdAt':
          result.createdAt = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
      }
    }

    return result.build();
  }
}

class _$GopenDisputeData extends GopenDisputeData {
  @override
  final String G__typename;
  @override
  final GopenDisputeData_openDispute? openDispute;

  factory _$GopenDisputeData(
          [void Function(GopenDisputeDataBuilder)? updates]) =>
      (new GopenDisputeDataBuilder()..update(updates))._build();

  _$GopenDisputeData._({required this.G__typename, this.openDispute})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        G__typename, r'GopenDisputeData', 'G__typename');
  }

  @override
  GopenDisputeData rebuild(void Function(GopenDisputeDataBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GopenDisputeDataBuilder toBuilder() =>
      new GopenDisputeDataBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GopenDisputeData &&
        G__typename == other.G__typename &&
        openDispute == other.openDispute;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, G__typename.hashCode);
    _$hash = $jc(_$hash, openDispute.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'GopenDisputeData')
          ..add('G__typename', G__typename)
          ..add('openDispute', openDispute))
        .toString();
  }
}

class GopenDisputeDataBuilder
    implements Builder<GopenDisputeData, GopenDisputeDataBuilder> {
  _$GopenDisputeData? _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  GopenDisputeData_openDisputeBuilder? _openDispute;
  GopenDisputeData_openDisputeBuilder get openDispute =>
      _$this._openDispute ??= new GopenDisputeData_openDisputeBuilder();
  set openDispute(GopenDisputeData_openDisputeBuilder? openDispute) =>
      _$this._openDispute = openDispute;

  GopenDisputeDataBuilder() {
    GopenDisputeData._initializeBuilder(this);
  }

  GopenDisputeDataBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _G__typename = $v.G__typename;
      _openDispute = $v.openDispute?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GopenDisputeData other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GopenDisputeData;
  }

  @override
  void update(void Function(GopenDisputeDataBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GopenDisputeData build() => _build();

  _$GopenDisputeData _build() {
    _$GopenDisputeData _$result;
    try {
      _$result = _$v ??
          new _$GopenDisputeData._(
              G__typename: BuiltValueNullFieldError.checkNotNull(
                  G__typename, r'GopenDisputeData', 'G__typename'),
              openDispute: _openDispute?.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'openDispute';
        _openDispute?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'GopenDisputeData', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

class _$GopenDisputeData_openDispute extends GopenDisputeData_openDispute {
  @override
  final String G__typename;
  @override
  final int? status;
  @override
  final String? errorMessage;
  @override
  final GopenDisputeData_openDispute_dispute? dispute;

  factory _$GopenDisputeData_openDispute(
          [void Function(GopenDisputeData_openDisputeBuilder)? updates]) =>
      (new GopenDisputeData_openDisputeBuilder()..update(updates))._build();

  _$GopenDisputeData_openDispute._(
      {required this.G__typename, this.status, this.errorMessage, this.dispute})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        G__typename, r'GopenDisputeData_openDispute', 'G__typename');
  }

  @override
  GopenDisputeData_openDispute rebuild(
          void Function(GopenDisputeData_openDisputeBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GopenDisputeData_openDisputeBuilder toBuilder() =>
      new GopenDisputeData_openDisputeBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GopenDisputeData_openDispute &&
        G__typename == other.G__typename &&
        status == other.status &&
        errorMessage == other.errorMessage &&
        dispute == other.dispute;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, G__typename.hashCode);
    _$hash = $jc(_$hash, status.hashCode);
    _$hash = $jc(_$hash, errorMessage.hashCode);
    _$hash = $jc(_$hash, dispute.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'GopenDisputeData_openDispute')
          ..add('G__typename', G__typename)
          ..add('status', status)
          ..add('errorMessage', errorMessage)
          ..add('dispute', dispute))
        .toString();
  }
}

class GopenDisputeData_openDisputeBuilder
    implements
        Builder<GopenDisputeData_openDispute,
            GopenDisputeData_openDisputeBuilder> {
  _$GopenDisputeData_openDispute? _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  int? _status;
  int? get status => _$this._status;
  set status(int? status) => _$this._status = status;

  String? _errorMessage;
  String? get errorMessage => _$this._errorMessage;
  set errorMessage(String? errorMessage) => _$this._errorMessage = errorMessage;

  GopenDisputeData_openDispute_disputeBuilder? _dispute;
  GopenDisputeData_openDispute_disputeBuilder get dispute =>
      _$this._dispute ??= new GopenDisputeData_openDispute_disputeBuilder();
  set dispute(GopenDisputeData_openDispute_disputeBuilder? dispute) =>
      _$this._dispute = dispute;

  GopenDisputeData_openDisputeBuilder() {
    GopenDisputeData_openDispute._initializeBuilder(this);
  }

  GopenDisputeData_openDisputeBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _G__typename = $v.G__typename;
      _status = $v.status;
      _errorMessage = $v.errorMessage;
      _dispute = $v.dispute?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GopenDisputeData_openDispute other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GopenDisputeData_openDispute;
  }

  @override
  void update(void Function(GopenDisputeData_openDisputeBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GopenDisputeData_openDispute build() => _build();

  _$GopenDisputeData_openDispute _build() {
    _$GopenDisputeData_openDispute _$result;
    try {
      _$result = _$v ??
          new _$GopenDisputeData_openDispute._(
              G__typename: BuiltValueNullFieldError.checkNotNull(
                  G__typename, r'GopenDisputeData_openDispute', 'G__typename'),
              status: status,
              errorMessage: errorMessage,
              dispute: _dispute?.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'dispute';
        _dispute?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'GopenDisputeData_openDispute', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

class _$GopenDisputeData_openDispute_dispute
    extends GopenDisputeData_openDispute_dispute {
  @override
  final String G__typename;
  @override
  final int? id;
  @override
  final int? reservationId;
  @override
  final String? openedBy;
  @override
  final String? openedByRole;
  @override
  final String? reasonCode;
  @override
  final String? status;
  @override
  final bool? isActive;
  @override
  final double? depositAmount;
  @override
  final String? depositStatus;
  @override
  final String? createdAt;
  @override
  final String? closedAt;
  @override
  final BuiltList<GopenDisputeData_openDispute_dispute_statements?>? statements;
  @override
  final BuiltList<GopenDisputeData_openDispute_dispute_decisions?>? decisions;

  factory _$GopenDisputeData_openDispute_dispute(
          [void Function(GopenDisputeData_openDispute_disputeBuilder)?
              updates]) =>
      (new GopenDisputeData_openDispute_disputeBuilder()..update(updates))
          ._build();

  _$GopenDisputeData_openDispute_dispute._(
      {required this.G__typename,
      this.id,
      this.reservationId,
      this.openedBy,
      this.openedByRole,
      this.reasonCode,
      this.status,
      this.isActive,
      this.depositAmount,
      this.depositStatus,
      this.createdAt,
      this.closedAt,
      this.statements,
      this.decisions})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        G__typename, r'GopenDisputeData_openDispute_dispute', 'G__typename');
  }

  @override
  GopenDisputeData_openDispute_dispute rebuild(
          void Function(GopenDisputeData_openDispute_disputeBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GopenDisputeData_openDispute_disputeBuilder toBuilder() =>
      new GopenDisputeData_openDispute_disputeBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GopenDisputeData_openDispute_dispute &&
        G__typename == other.G__typename &&
        id == other.id &&
        reservationId == other.reservationId &&
        openedBy == other.openedBy &&
        openedByRole == other.openedByRole &&
        reasonCode == other.reasonCode &&
        status == other.status &&
        isActive == other.isActive &&
        depositAmount == other.depositAmount &&
        depositStatus == other.depositStatus &&
        createdAt == other.createdAt &&
        closedAt == other.closedAt &&
        statements == other.statements &&
        decisions == other.decisions;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, G__typename.hashCode);
    _$hash = $jc(_$hash, id.hashCode);
    _$hash = $jc(_$hash, reservationId.hashCode);
    _$hash = $jc(_$hash, openedBy.hashCode);
    _$hash = $jc(_$hash, openedByRole.hashCode);
    _$hash = $jc(_$hash, reasonCode.hashCode);
    _$hash = $jc(_$hash, status.hashCode);
    _$hash = $jc(_$hash, isActive.hashCode);
    _$hash = $jc(_$hash, depositAmount.hashCode);
    _$hash = $jc(_$hash, depositStatus.hashCode);
    _$hash = $jc(_$hash, createdAt.hashCode);
    _$hash = $jc(_$hash, closedAt.hashCode);
    _$hash = $jc(_$hash, statements.hashCode);
    _$hash = $jc(_$hash, decisions.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'GopenDisputeData_openDispute_dispute')
          ..add('G__typename', G__typename)
          ..add('id', id)
          ..add('reservationId', reservationId)
          ..add('openedBy', openedBy)
          ..add('openedByRole', openedByRole)
          ..add('reasonCode', reasonCode)
          ..add('status', status)
          ..add('isActive', isActive)
          ..add('depositAmount', depositAmount)
          ..add('depositStatus', depositStatus)
          ..add('createdAt', createdAt)
          ..add('closedAt', closedAt)
          ..add('statements', statements)
          ..add('decisions', decisions))
        .toString();
  }
}

class GopenDisputeData_openDispute_disputeBuilder
    implements
        Builder<GopenDisputeData_openDispute_dispute,
            GopenDisputeData_openDispute_disputeBuilder> {
  _$GopenDisputeData_openDispute_dispute? _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  int? _id;
  int? get id => _$this._id;
  set id(int? id) => _$this._id = id;

  int? _reservationId;
  int? get reservationId => _$this._reservationId;
  set reservationId(int? reservationId) =>
      _$this._reservationId = reservationId;

  String? _openedBy;
  String? get openedBy => _$this._openedBy;
  set openedBy(String? openedBy) => _$this._openedBy = openedBy;

  String? _openedByRole;
  String? get openedByRole => _$this._openedByRole;
  set openedByRole(String? openedByRole) => _$this._openedByRole = openedByRole;

  String? _reasonCode;
  String? get reasonCode => _$this._reasonCode;
  set reasonCode(String? reasonCode) => _$this._reasonCode = reasonCode;

  String? _status;
  String? get status => _$this._status;
  set status(String? status) => _$this._status = status;

  bool? _isActive;
  bool? get isActive => _$this._isActive;
  set isActive(bool? isActive) => _$this._isActive = isActive;

  double? _depositAmount;
  double? get depositAmount => _$this._depositAmount;
  set depositAmount(double? depositAmount) =>
      _$this._depositAmount = depositAmount;

  String? _depositStatus;
  String? get depositStatus => _$this._depositStatus;
  set depositStatus(String? depositStatus) =>
      _$this._depositStatus = depositStatus;

  String? _createdAt;
  String? get createdAt => _$this._createdAt;
  set createdAt(String? createdAt) => _$this._createdAt = createdAt;

  String? _closedAt;
  String? get closedAt => _$this._closedAt;
  set closedAt(String? closedAt) => _$this._closedAt = closedAt;

  ListBuilder<GopenDisputeData_openDispute_dispute_statements?>? _statements;
  ListBuilder<GopenDisputeData_openDispute_dispute_statements?>
      get statements => _$this._statements ??=
          new ListBuilder<GopenDisputeData_openDispute_dispute_statements?>();
  set statements(
          ListBuilder<GopenDisputeData_openDispute_dispute_statements?>?
              statements) =>
      _$this._statements = statements;

  ListBuilder<GopenDisputeData_openDispute_dispute_decisions?>? _decisions;
  ListBuilder<GopenDisputeData_openDispute_dispute_decisions?> get decisions =>
      _$this._decisions ??=
          new ListBuilder<GopenDisputeData_openDispute_dispute_decisions?>();
  set decisions(
          ListBuilder<GopenDisputeData_openDispute_dispute_decisions?>?
              decisions) =>
      _$this._decisions = decisions;

  GopenDisputeData_openDispute_disputeBuilder() {
    GopenDisputeData_openDispute_dispute._initializeBuilder(this);
  }

  GopenDisputeData_openDispute_disputeBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _G__typename = $v.G__typename;
      _id = $v.id;
      _reservationId = $v.reservationId;
      _openedBy = $v.openedBy;
      _openedByRole = $v.openedByRole;
      _reasonCode = $v.reasonCode;
      _status = $v.status;
      _isActive = $v.isActive;
      _depositAmount = $v.depositAmount;
      _depositStatus = $v.depositStatus;
      _createdAt = $v.createdAt;
      _closedAt = $v.closedAt;
      _statements = $v.statements?.toBuilder();
      _decisions = $v.decisions?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GopenDisputeData_openDispute_dispute other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GopenDisputeData_openDispute_dispute;
  }

  @override
  void update(
      void Function(GopenDisputeData_openDispute_disputeBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GopenDisputeData_openDispute_dispute build() => _build();

  _$GopenDisputeData_openDispute_dispute _build() {
    _$GopenDisputeData_openDispute_dispute _$result;
    try {
      _$result = _$v ??
          new _$GopenDisputeData_openDispute_dispute._(
              G__typename: BuiltValueNullFieldError.checkNotNull(G__typename,
                  r'GopenDisputeData_openDispute_dispute', 'G__typename'),
              id: id,
              reservationId: reservationId,
              openedBy: openedBy,
              openedByRole: openedByRole,
              reasonCode: reasonCode,
              status: status,
              isActive: isActive,
              depositAmount: depositAmount,
              depositStatus: depositStatus,
              createdAt: createdAt,
              closedAt: closedAt,
              statements: _statements?.build(),
              decisions: _decisions?.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'statements';
        _statements?.build();
        _$failedField = 'decisions';
        _decisions?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'GopenDisputeData_openDispute_dispute',
            _$failedField,
            e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

class _$GopenDisputeData_openDispute_dispute_statements
    extends GopenDisputeData_openDispute_dispute_statements {
  @override
  final String G__typename;
  @override
  final int? id;
  @override
  final int? disputeId;
  @override
  final String? userId;
  @override
  final String? role;
  @override
  final String? content;
  @override
  final BuiltList<int?>? attachments;
  @override
  final String? createdAt;

  factory _$GopenDisputeData_openDispute_dispute_statements(
          [void Function(
                  GopenDisputeData_openDispute_dispute_statementsBuilder)?
              updates]) =>
      (new GopenDisputeData_openDispute_dispute_statementsBuilder()
            ..update(updates))
          ._build();

  _$GopenDisputeData_openDispute_dispute_statements._(
      {required this.G__typename,
      this.id,
      this.disputeId,
      this.userId,
      this.role,
      this.content,
      this.attachments,
      this.createdAt})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(G__typename,
        r'GopenDisputeData_openDispute_dispute_statements', 'G__typename');
  }

  @override
  GopenDisputeData_openDispute_dispute_statements rebuild(
          void Function(GopenDisputeData_openDispute_dispute_statementsBuilder)
              updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GopenDisputeData_openDispute_dispute_statementsBuilder toBuilder() =>
      new GopenDisputeData_openDispute_dispute_statementsBuilder()
        ..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GopenDisputeData_openDispute_dispute_statements &&
        G__typename == other.G__typename &&
        id == other.id &&
        disputeId == other.disputeId &&
        userId == other.userId &&
        role == other.role &&
        content == other.content &&
        attachments == other.attachments &&
        createdAt == other.createdAt;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, G__typename.hashCode);
    _$hash = $jc(_$hash, id.hashCode);
    _$hash = $jc(_$hash, disputeId.hashCode);
    _$hash = $jc(_$hash, userId.hashCode);
    _$hash = $jc(_$hash, role.hashCode);
    _$hash = $jc(_$hash, content.hashCode);
    _$hash = $jc(_$hash, attachments.hashCode);
    _$hash = $jc(_$hash, createdAt.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(
            r'GopenDisputeData_openDispute_dispute_statements')
          ..add('G__typename', G__typename)
          ..add('id', id)
          ..add('disputeId', disputeId)
          ..add('userId', userId)
          ..add('role', role)
          ..add('content', content)
          ..add('attachments', attachments)
          ..add('createdAt', createdAt))
        .toString();
  }
}

class GopenDisputeData_openDispute_dispute_statementsBuilder
    implements
        Builder<GopenDisputeData_openDispute_dispute_statements,
            GopenDisputeData_openDispute_dispute_statementsBuilder> {
  _$GopenDisputeData_openDispute_dispute_statements? _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  int? _id;
  int? get id => _$this._id;
  set id(int? id) => _$this._id = id;

  int? _disputeId;
  int? get disputeId => _$this._disputeId;
  set disputeId(int? disputeId) => _$this._disputeId = disputeId;

  String? _userId;
  String? get userId => _$this._userId;
  set userId(String? userId) => _$this._userId = userId;

  String? _role;
  String? get role => _$this._role;
  set role(String? role) => _$this._role = role;

  String? _content;
  String? get content => _$this._content;
  set content(String? content) => _$this._content = content;

  ListBuilder<int?>? _attachments;
  ListBuilder<int?> get attachments =>
      _$this._attachments ??= new ListBuilder<int?>();
  set attachments(ListBuilder<int?>? attachments) =>
      _$this._attachments = attachments;

  String? _createdAt;
  String? get createdAt => _$this._createdAt;
  set createdAt(String? createdAt) => _$this._createdAt = createdAt;

  GopenDisputeData_openDispute_dispute_statementsBuilder() {
    GopenDisputeData_openDispute_dispute_statements._initializeBuilder(this);
  }

  GopenDisputeData_openDispute_dispute_statementsBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _G__typename = $v.G__typename;
      _id = $v.id;
      _disputeId = $v.disputeId;
      _userId = $v.userId;
      _role = $v.role;
      _content = $v.content;
      _attachments = $v.attachments?.toBuilder();
      _createdAt = $v.createdAt;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GopenDisputeData_openDispute_dispute_statements other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GopenDisputeData_openDispute_dispute_statements;
  }

  @override
  void update(
      void Function(GopenDisputeData_openDispute_dispute_statementsBuilder)?
          updates) {
    if (updates != null) updates(this);
  }

  @override
  GopenDisputeData_openDispute_dispute_statements build() => _build();

  _$GopenDisputeData_openDispute_dispute_statements _build() {
    _$GopenDisputeData_openDispute_dispute_statements _$result;
    try {
      _$result = _$v ??
          new _$GopenDisputeData_openDispute_dispute_statements._(
              G__typename: BuiltValueNullFieldError.checkNotNull(
                  G__typename,
                  r'GopenDisputeData_openDispute_dispute_statements',
                  'G__typename'),
              id: id,
              disputeId: disputeId,
              userId: userId,
              role: role,
              content: content,
              attachments: _attachments?.build(),
              createdAt: createdAt);
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'attachments';
        _attachments?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'GopenDisputeData_openDispute_dispute_statements',
            _$failedField,
            e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

class _$GopenDisputeData_openDispute_dispute_decisions
    extends GopenDisputeData_openDispute_dispute_decisions {
  @override
  final String G__typename;
  @override
  final int? id;
  @override
  final String? type;
  @override
  final double? retainedAmount;
  @override
  final double? refundAmount;
  @override
  final double? requestedAmount;
  @override
  final String? currency;
  @override
  final String? motive;
  @override
  final String? createdAt;

  factory _$GopenDisputeData_openDispute_dispute_decisions(
          [void Function(GopenDisputeData_openDispute_dispute_decisionsBuilder)?
              updates]) =>
      (new GopenDisputeData_openDispute_dispute_decisionsBuilder()
            ..update(updates))
          ._build();

  _$GopenDisputeData_openDispute_dispute_decisions._(
      {required this.G__typename,
      this.id,
      this.type,
      this.retainedAmount,
      this.refundAmount,
      this.requestedAmount,
      this.currency,
      this.motive,
      this.createdAt})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(G__typename,
        r'GopenDisputeData_openDispute_dispute_decisions', 'G__typename');
  }

  @override
  GopenDisputeData_openDispute_dispute_decisions rebuild(
          void Function(GopenDisputeData_openDispute_dispute_decisionsBuilder)
              updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GopenDisputeData_openDispute_dispute_decisionsBuilder toBuilder() =>
      new GopenDisputeData_openDispute_dispute_decisionsBuilder()
        ..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GopenDisputeData_openDispute_dispute_decisions &&
        G__typename == other.G__typename &&
        id == other.id &&
        type == other.type &&
        retainedAmount == other.retainedAmount &&
        refundAmount == other.refundAmount &&
        requestedAmount == other.requestedAmount &&
        currency == other.currency &&
        motive == other.motive &&
        createdAt == other.createdAt;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, G__typename.hashCode);
    _$hash = $jc(_$hash, id.hashCode);
    _$hash = $jc(_$hash, type.hashCode);
    _$hash = $jc(_$hash, retainedAmount.hashCode);
    _$hash = $jc(_$hash, refundAmount.hashCode);
    _$hash = $jc(_$hash, requestedAmount.hashCode);
    _$hash = $jc(_$hash, currency.hashCode);
    _$hash = $jc(_$hash, motive.hashCode);
    _$hash = $jc(_$hash, createdAt.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(
            r'GopenDisputeData_openDispute_dispute_decisions')
          ..add('G__typename', G__typename)
          ..add('id', id)
          ..add('type', type)
          ..add('retainedAmount', retainedAmount)
          ..add('refundAmount', refundAmount)
          ..add('requestedAmount', requestedAmount)
          ..add('currency', currency)
          ..add('motive', motive)
          ..add('createdAt', createdAt))
        .toString();
  }
}

class GopenDisputeData_openDispute_dispute_decisionsBuilder
    implements
        Builder<GopenDisputeData_openDispute_dispute_decisions,
            GopenDisputeData_openDispute_dispute_decisionsBuilder> {
  _$GopenDisputeData_openDispute_dispute_decisions? _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  int? _id;
  int? get id => _$this._id;
  set id(int? id) => _$this._id = id;

  String? _type;
  String? get type => _$this._type;
  set type(String? type) => _$this._type = type;

  double? _retainedAmount;
  double? get retainedAmount => _$this._retainedAmount;
  set retainedAmount(double? retainedAmount) =>
      _$this._retainedAmount = retainedAmount;

  double? _refundAmount;
  double? get refundAmount => _$this._refundAmount;
  set refundAmount(double? refundAmount) => _$this._refundAmount = refundAmount;

  double? _requestedAmount;
  double? get requestedAmount => _$this._requestedAmount;
  set requestedAmount(double? requestedAmount) =>
      _$this._requestedAmount = requestedAmount;

  String? _currency;
  String? get currency => _$this._currency;
  set currency(String? currency) => _$this._currency = currency;

  String? _motive;
  String? get motive => _$this._motive;
  set motive(String? motive) => _$this._motive = motive;

  String? _createdAt;
  String? get createdAt => _$this._createdAt;
  set createdAt(String? createdAt) => _$this._createdAt = createdAt;

  GopenDisputeData_openDispute_dispute_decisionsBuilder() {
    GopenDisputeData_openDispute_dispute_decisions._initializeBuilder(this);
  }

  GopenDisputeData_openDispute_dispute_decisionsBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _G__typename = $v.G__typename;
      _id = $v.id;
      _type = $v.type;
      _retainedAmount = $v.retainedAmount;
      _refundAmount = $v.refundAmount;
      _requestedAmount = $v.requestedAmount;
      _currency = $v.currency;
      _motive = $v.motive;
      _createdAt = $v.createdAt;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GopenDisputeData_openDispute_dispute_decisions other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GopenDisputeData_openDispute_dispute_decisions;
  }

  @override
  void update(
      void Function(GopenDisputeData_openDispute_dispute_decisionsBuilder)?
          updates) {
    if (updates != null) updates(this);
  }

  @override
  GopenDisputeData_openDispute_dispute_decisions build() => _build();

  _$GopenDisputeData_openDispute_dispute_decisions _build() {
    final _$result = _$v ??
        new _$GopenDisputeData_openDispute_dispute_decisions._(
            G__typename: BuiltValueNullFieldError.checkNotNull(
                G__typename,
                r'GopenDisputeData_openDispute_dispute_decisions',
                'G__typename'),
            id: id,
            type: type,
            retainedAmount: retainedAmount,
            refundAmount: refundAmount,
            requestedAmount: requestedAmount,
            currency: currency,
            motive: motive,
            createdAt: createdAt);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
