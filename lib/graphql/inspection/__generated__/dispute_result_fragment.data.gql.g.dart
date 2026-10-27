// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'dispute_result_fragment.data.gql.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<GdisputeResultFragmentData> _$gdisputeResultFragmentDataSerializer =
    new _$GdisputeResultFragmentDataSerializer();
Serializer<GdisputeResultFragmentData_dispute>
    _$gdisputeResultFragmentDataDisputeSerializer =
    new _$GdisputeResultFragmentData_disputeSerializer();
Serializer<GdisputeResultFragmentData_dispute_statements>
    _$gdisputeResultFragmentDataDisputeStatementsSerializer =
    new _$GdisputeResultFragmentData_dispute_statementsSerializer();
Serializer<GdisputeResultFragmentData_dispute_decisions>
    _$gdisputeResultFragmentDataDisputeDecisionsSerializer =
    new _$GdisputeResultFragmentData_dispute_decisionsSerializer();

class _$GdisputeResultFragmentDataSerializer
    implements StructuredSerializer<GdisputeResultFragmentData> {
  @override
  final Iterable<Type> types = const [
    GdisputeResultFragmentData,
    _$GdisputeResultFragmentData
  ];
  @override
  final String wireName = 'GdisputeResultFragmentData';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, GdisputeResultFragmentData object,
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
            specifiedType: const FullType(GdisputeResultFragmentData_dispute)));
    }
    return result;
  }

  @override
  GdisputeResultFragmentData deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GdisputeResultFragmentDataBuilder();

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
                      const FullType(GdisputeResultFragmentData_dispute))!
              as GdisputeResultFragmentData_dispute);
          break;
      }
    }

    return result.build();
  }
}

class _$GdisputeResultFragmentData_disputeSerializer
    implements StructuredSerializer<GdisputeResultFragmentData_dispute> {
  @override
  final Iterable<Type> types = const [
    GdisputeResultFragmentData_dispute,
    _$GdisputeResultFragmentData_dispute
  ];
  @override
  final String wireName = 'GdisputeResultFragmentData_dispute';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, GdisputeResultFragmentData_dispute object,
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
                  GdisputeResultFragmentData_dispute_statements)
            ])));
    }
    value = object.decisions;
    if (value != null) {
      result
        ..add('decisions')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(BuiltList, const [
              const FullType.nullable(
                  GdisputeResultFragmentData_dispute_decisions)
            ])));
    }
    return result;
  }

  @override
  GdisputeResultFragmentData_dispute deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GdisputeResultFragmentData_disputeBuilder();

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
                    GdisputeResultFragmentData_dispute_statements)
              ]))! as BuiltList<Object?>);
          break;
        case 'decisions':
          result.decisions.replace(serializers.deserialize(value,
              specifiedType: const FullType(BuiltList, const [
                const FullType.nullable(
                    GdisputeResultFragmentData_dispute_decisions)
              ]))! as BuiltList<Object?>);
          break;
      }
    }

    return result.build();
  }
}

class _$GdisputeResultFragmentData_dispute_statementsSerializer
    implements
        StructuredSerializer<GdisputeResultFragmentData_dispute_statements> {
  @override
  final Iterable<Type> types = const [
    GdisputeResultFragmentData_dispute_statements,
    _$GdisputeResultFragmentData_dispute_statements
  ];
  @override
  final String wireName = 'GdisputeResultFragmentData_dispute_statements';

  @override
  Iterable<Object?> serialize(Serializers serializers,
      GdisputeResultFragmentData_dispute_statements object,
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
  GdisputeResultFragmentData_dispute_statements deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GdisputeResultFragmentData_dispute_statementsBuilder();

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

class _$GdisputeResultFragmentData_dispute_decisionsSerializer
    implements
        StructuredSerializer<GdisputeResultFragmentData_dispute_decisions> {
  @override
  final Iterable<Type> types = const [
    GdisputeResultFragmentData_dispute_decisions,
    _$GdisputeResultFragmentData_dispute_decisions
  ];
  @override
  final String wireName = 'GdisputeResultFragmentData_dispute_decisions';

  @override
  Iterable<Object?> serialize(Serializers serializers,
      GdisputeResultFragmentData_dispute_decisions object,
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
  GdisputeResultFragmentData_dispute_decisions deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GdisputeResultFragmentData_dispute_decisionsBuilder();

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

class _$GdisputeResultFragmentData extends GdisputeResultFragmentData {
  @override
  final String G__typename;
  @override
  final int? status;
  @override
  final String? errorMessage;
  @override
  final GdisputeResultFragmentData_dispute? dispute;

  factory _$GdisputeResultFragmentData(
          [void Function(GdisputeResultFragmentDataBuilder)? updates]) =>
      (new GdisputeResultFragmentDataBuilder()..update(updates))._build();

  _$GdisputeResultFragmentData._(
      {required this.G__typename, this.status, this.errorMessage, this.dispute})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        G__typename, r'GdisputeResultFragmentData', 'G__typename');
  }

  @override
  GdisputeResultFragmentData rebuild(
          void Function(GdisputeResultFragmentDataBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GdisputeResultFragmentDataBuilder toBuilder() =>
      new GdisputeResultFragmentDataBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GdisputeResultFragmentData &&
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
    return (newBuiltValueToStringHelper(r'GdisputeResultFragmentData')
          ..add('G__typename', G__typename)
          ..add('status', status)
          ..add('errorMessage', errorMessage)
          ..add('dispute', dispute))
        .toString();
  }
}

class GdisputeResultFragmentDataBuilder
    implements
        Builder<GdisputeResultFragmentData, GdisputeResultFragmentDataBuilder> {
  _$GdisputeResultFragmentData? _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  int? _status;
  int? get status => _$this._status;
  set status(int? status) => _$this._status = status;

  String? _errorMessage;
  String? get errorMessage => _$this._errorMessage;
  set errorMessage(String? errorMessage) => _$this._errorMessage = errorMessage;

  GdisputeResultFragmentData_disputeBuilder? _dispute;
  GdisputeResultFragmentData_disputeBuilder get dispute =>
      _$this._dispute ??= new GdisputeResultFragmentData_disputeBuilder();
  set dispute(GdisputeResultFragmentData_disputeBuilder? dispute) =>
      _$this._dispute = dispute;

  GdisputeResultFragmentDataBuilder() {
    GdisputeResultFragmentData._initializeBuilder(this);
  }

  GdisputeResultFragmentDataBuilder get _$this {
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
  void replace(GdisputeResultFragmentData other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GdisputeResultFragmentData;
  }

  @override
  void update(void Function(GdisputeResultFragmentDataBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GdisputeResultFragmentData build() => _build();

  _$GdisputeResultFragmentData _build() {
    _$GdisputeResultFragmentData _$result;
    try {
      _$result = _$v ??
          new _$GdisputeResultFragmentData._(
              G__typename: BuiltValueNullFieldError.checkNotNull(
                  G__typename, r'GdisputeResultFragmentData', 'G__typename'),
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
            r'GdisputeResultFragmentData', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

class _$GdisputeResultFragmentData_dispute
    extends GdisputeResultFragmentData_dispute {
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
  final BuiltList<GdisputeResultFragmentData_dispute_statements?>? statements;
  @override
  final BuiltList<GdisputeResultFragmentData_dispute_decisions?>? decisions;

  factory _$GdisputeResultFragmentData_dispute(
          [void Function(GdisputeResultFragmentData_disputeBuilder)?
              updates]) =>
      (new GdisputeResultFragmentData_disputeBuilder()..update(updates))
          ._build();

  _$GdisputeResultFragmentData_dispute._(
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
        G__typename, r'GdisputeResultFragmentData_dispute', 'G__typename');
  }

  @override
  GdisputeResultFragmentData_dispute rebuild(
          void Function(GdisputeResultFragmentData_disputeBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GdisputeResultFragmentData_disputeBuilder toBuilder() =>
      new GdisputeResultFragmentData_disputeBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GdisputeResultFragmentData_dispute &&
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
    return (newBuiltValueToStringHelper(r'GdisputeResultFragmentData_dispute')
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

class GdisputeResultFragmentData_disputeBuilder
    implements
        Builder<GdisputeResultFragmentData_dispute,
            GdisputeResultFragmentData_disputeBuilder> {
  _$GdisputeResultFragmentData_dispute? _$v;

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

  ListBuilder<GdisputeResultFragmentData_dispute_statements?>? _statements;
  ListBuilder<GdisputeResultFragmentData_dispute_statements?> get statements =>
      _$this._statements ??=
          new ListBuilder<GdisputeResultFragmentData_dispute_statements?>();
  set statements(
          ListBuilder<GdisputeResultFragmentData_dispute_statements?>?
              statements) =>
      _$this._statements = statements;

  ListBuilder<GdisputeResultFragmentData_dispute_decisions?>? _decisions;
  ListBuilder<GdisputeResultFragmentData_dispute_decisions?> get decisions =>
      _$this._decisions ??=
          new ListBuilder<GdisputeResultFragmentData_dispute_decisions?>();
  set decisions(
          ListBuilder<GdisputeResultFragmentData_dispute_decisions?>?
              decisions) =>
      _$this._decisions = decisions;

  GdisputeResultFragmentData_disputeBuilder() {
    GdisputeResultFragmentData_dispute._initializeBuilder(this);
  }

  GdisputeResultFragmentData_disputeBuilder get _$this {
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
  void replace(GdisputeResultFragmentData_dispute other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GdisputeResultFragmentData_dispute;
  }

  @override
  void update(
      void Function(GdisputeResultFragmentData_disputeBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GdisputeResultFragmentData_dispute build() => _build();

  _$GdisputeResultFragmentData_dispute _build() {
    _$GdisputeResultFragmentData_dispute _$result;
    try {
      _$result = _$v ??
          new _$GdisputeResultFragmentData_dispute._(
              G__typename: BuiltValueNullFieldError.checkNotNull(G__typename,
                  r'GdisputeResultFragmentData_dispute', 'G__typename'),
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
            r'GdisputeResultFragmentData_dispute', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

class _$GdisputeResultFragmentData_dispute_statements
    extends GdisputeResultFragmentData_dispute_statements {
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

  factory _$GdisputeResultFragmentData_dispute_statements(
          [void Function(GdisputeResultFragmentData_dispute_statementsBuilder)?
              updates]) =>
      (new GdisputeResultFragmentData_dispute_statementsBuilder()
            ..update(updates))
          ._build();

  _$GdisputeResultFragmentData_dispute_statements._(
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
        r'GdisputeResultFragmentData_dispute_statements', 'G__typename');
  }

  @override
  GdisputeResultFragmentData_dispute_statements rebuild(
          void Function(GdisputeResultFragmentData_dispute_statementsBuilder)
              updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GdisputeResultFragmentData_dispute_statementsBuilder toBuilder() =>
      new GdisputeResultFragmentData_dispute_statementsBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GdisputeResultFragmentData_dispute_statements &&
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
            r'GdisputeResultFragmentData_dispute_statements')
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

class GdisputeResultFragmentData_dispute_statementsBuilder
    implements
        Builder<GdisputeResultFragmentData_dispute_statements,
            GdisputeResultFragmentData_dispute_statementsBuilder> {
  _$GdisputeResultFragmentData_dispute_statements? _$v;

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

  GdisputeResultFragmentData_dispute_statementsBuilder() {
    GdisputeResultFragmentData_dispute_statements._initializeBuilder(this);
  }

  GdisputeResultFragmentData_dispute_statementsBuilder get _$this {
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
  void replace(GdisputeResultFragmentData_dispute_statements other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GdisputeResultFragmentData_dispute_statements;
  }

  @override
  void update(
      void Function(GdisputeResultFragmentData_dispute_statementsBuilder)?
          updates) {
    if (updates != null) updates(this);
  }

  @override
  GdisputeResultFragmentData_dispute_statements build() => _build();

  _$GdisputeResultFragmentData_dispute_statements _build() {
    _$GdisputeResultFragmentData_dispute_statements _$result;
    try {
      _$result = _$v ??
          new _$GdisputeResultFragmentData_dispute_statements._(
              G__typename: BuiltValueNullFieldError.checkNotNull(
                  G__typename,
                  r'GdisputeResultFragmentData_dispute_statements',
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
            r'GdisputeResultFragmentData_dispute_statements',
            _$failedField,
            e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

class _$GdisputeResultFragmentData_dispute_decisions
    extends GdisputeResultFragmentData_dispute_decisions {
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

  factory _$GdisputeResultFragmentData_dispute_decisions(
          [void Function(GdisputeResultFragmentData_dispute_decisionsBuilder)?
              updates]) =>
      (new GdisputeResultFragmentData_dispute_decisionsBuilder()
            ..update(updates))
          ._build();

  _$GdisputeResultFragmentData_dispute_decisions._(
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
        r'GdisputeResultFragmentData_dispute_decisions', 'G__typename');
  }

  @override
  GdisputeResultFragmentData_dispute_decisions rebuild(
          void Function(GdisputeResultFragmentData_dispute_decisionsBuilder)
              updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GdisputeResultFragmentData_dispute_decisionsBuilder toBuilder() =>
      new GdisputeResultFragmentData_dispute_decisionsBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GdisputeResultFragmentData_dispute_decisions &&
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
            r'GdisputeResultFragmentData_dispute_decisions')
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

class GdisputeResultFragmentData_dispute_decisionsBuilder
    implements
        Builder<GdisputeResultFragmentData_dispute_decisions,
            GdisputeResultFragmentData_dispute_decisionsBuilder> {
  _$GdisputeResultFragmentData_dispute_decisions? _$v;

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

  GdisputeResultFragmentData_dispute_decisionsBuilder() {
    GdisputeResultFragmentData_dispute_decisions._initializeBuilder(this);
  }

  GdisputeResultFragmentData_dispute_decisionsBuilder get _$this {
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
  void replace(GdisputeResultFragmentData_dispute_decisions other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GdisputeResultFragmentData_dispute_decisions;
  }

  @override
  void update(
      void Function(GdisputeResultFragmentData_dispute_decisionsBuilder)?
          updates) {
    if (updates != null) updates(this);
  }

  @override
  GdisputeResultFragmentData_dispute_decisions build() => _build();

  _$GdisputeResultFragmentData_dispute_decisions _build() {
    final _$result = _$v ??
        new _$GdisputeResultFragmentData_dispute_decisions._(
            G__typename: BuiltValueNullFieldError.checkNotNull(G__typename,
                r'GdisputeResultFragmentData_dispute_decisions', 'G__typename'),
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
