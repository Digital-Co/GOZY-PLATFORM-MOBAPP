// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'thread_item_fragment.data.gql.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<GthreadItemsFragmentData> _$gthreadItemsFragmentDataSerializer =
    new _$GthreadItemsFragmentDataSerializer();

class _$GthreadItemsFragmentDataSerializer
    implements StructuredSerializer<GthreadItemsFragmentData> {
  @override
  final Iterable<Type> types = const [
    GthreadItemsFragmentData,
    _$GthreadItemsFragmentData
  ];
  @override
  final String wireName = 'GthreadItemsFragmentData';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, GthreadItemsFragmentData object,
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
    value = object.threadId;
    if (value != null) {
      result
        ..add('threadId')
        ..add(serializers.serialize(value, specifiedType: const FullType(int)));
    }
    value = object.reservationId;
    if (value != null) {
      result
        ..add('reservationId')
        ..add(serializers.serialize(value, specifiedType: const FullType(int)));
    }
    value = object.sentBy;
    if (value != null) {
      result
        ..add('sentBy')
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
    value = object.type;
    if (value != null) {
      result
        ..add('type')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.startDate;
    if (value != null) {
      result
        ..add('startDate')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.endDate;
    if (value != null) {
      result
        ..add('endDate')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.startTime;
    if (value != null) {
      result
        ..add('startTime')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(double)));
    }
    value = object.endTime;
    if (value != null) {
      result
        ..add('endTime')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(double)));
    }
    value = object.personCapacity;
    if (value != null) {
      result
        ..add('personCapacity')
        ..add(serializers.serialize(value, specifiedType: const FullType(int)));
    }
    value = object.isRead;
    if (value != null) {
      result
        ..add('isRead')
        ..add(
            serializers.serialize(value, specifiedType: const FullType(bool)));
    }
    value = object.createdAt;
    if (value != null) {
      result
        ..add('createdAt')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.status;
    if (value != null) {
      result
        ..add('status')
        ..add(serializers.serialize(value, specifiedType: const FullType(int)));
    }
    value = object.userBanStatus;
    if (value != null) {
      result
        ..add('userBanStatus')
        ..add(serializers.serialize(value, specifiedType: const FullType(int)));
    }
    return result;
  }

  @override
  GthreadItemsFragmentData deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GthreadItemsFragmentDataBuilder();

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
        case 'threadId':
          result.threadId = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int?;
          break;
        case 'reservationId':
          result.reservationId = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int?;
          break;
        case 'sentBy':
          result.sentBy = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'content':
          result.content = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'type':
          result.type = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'startDate':
          result.startDate = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'endDate':
          result.endDate = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'startTime':
          result.startTime = serializers.deserialize(value,
              specifiedType: const FullType(double)) as double?;
          break;
        case 'endTime':
          result.endTime = serializers.deserialize(value,
              specifiedType: const FullType(double)) as double?;
          break;
        case 'personCapacity':
          result.personCapacity = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int?;
          break;
        case 'isRead':
          result.isRead = serializers.deserialize(value,
              specifiedType: const FullType(bool)) as bool?;
          break;
        case 'createdAt':
          result.createdAt = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'status':
          result.status = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int?;
          break;
        case 'userBanStatus':
          result.userBanStatus = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int?;
          break;
      }
    }

    return result.build();
  }
}

class _$GthreadItemsFragmentData extends GthreadItemsFragmentData {
  @override
  final String G__typename;
  @override
  final int? id;
  @override
  final int? threadId;
  @override
  final int? reservationId;
  @override
  final String? sentBy;
  @override
  final String? content;
  @override
  final String? type;
  @override
  final String? startDate;
  @override
  final String? endDate;
  @override
  final double? startTime;
  @override
  final double? endTime;
  @override
  final int? personCapacity;
  @override
  final bool? isRead;
  @override
  final String? createdAt;
  @override
  final int? status;
  @override
  final int? userBanStatus;

  factory _$GthreadItemsFragmentData(
          [void Function(GthreadItemsFragmentDataBuilder)? updates]) =>
      (new GthreadItemsFragmentDataBuilder()..update(updates))._build();

  _$GthreadItemsFragmentData._(
      {required this.G__typename,
      this.id,
      this.threadId,
      this.reservationId,
      this.sentBy,
      this.content,
      this.type,
      this.startDate,
      this.endDate,
      this.startTime,
      this.endTime,
      this.personCapacity,
      this.isRead,
      this.createdAt,
      this.status,
      this.userBanStatus})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        G__typename, r'GthreadItemsFragmentData', 'G__typename');
  }

  @override
  GthreadItemsFragmentData rebuild(
          void Function(GthreadItemsFragmentDataBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GthreadItemsFragmentDataBuilder toBuilder() =>
      new GthreadItemsFragmentDataBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GthreadItemsFragmentData &&
        G__typename == other.G__typename &&
        id == other.id &&
        threadId == other.threadId &&
        reservationId == other.reservationId &&
        sentBy == other.sentBy &&
        content == other.content &&
        type == other.type &&
        startDate == other.startDate &&
        endDate == other.endDate &&
        startTime == other.startTime &&
        endTime == other.endTime &&
        personCapacity == other.personCapacity &&
        isRead == other.isRead &&
        createdAt == other.createdAt &&
        status == other.status &&
        userBanStatus == other.userBanStatus;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, G__typename.hashCode);
    _$hash = $jc(_$hash, id.hashCode);
    _$hash = $jc(_$hash, threadId.hashCode);
    _$hash = $jc(_$hash, reservationId.hashCode);
    _$hash = $jc(_$hash, sentBy.hashCode);
    _$hash = $jc(_$hash, content.hashCode);
    _$hash = $jc(_$hash, type.hashCode);
    _$hash = $jc(_$hash, startDate.hashCode);
    _$hash = $jc(_$hash, endDate.hashCode);
    _$hash = $jc(_$hash, startTime.hashCode);
    _$hash = $jc(_$hash, endTime.hashCode);
    _$hash = $jc(_$hash, personCapacity.hashCode);
    _$hash = $jc(_$hash, isRead.hashCode);
    _$hash = $jc(_$hash, createdAt.hashCode);
    _$hash = $jc(_$hash, status.hashCode);
    _$hash = $jc(_$hash, userBanStatus.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'GthreadItemsFragmentData')
          ..add('G__typename', G__typename)
          ..add('id', id)
          ..add('threadId', threadId)
          ..add('reservationId', reservationId)
          ..add('sentBy', sentBy)
          ..add('content', content)
          ..add('type', type)
          ..add('startDate', startDate)
          ..add('endDate', endDate)
          ..add('startTime', startTime)
          ..add('endTime', endTime)
          ..add('personCapacity', personCapacity)
          ..add('isRead', isRead)
          ..add('createdAt', createdAt)
          ..add('status', status)
          ..add('userBanStatus', userBanStatus))
        .toString();
  }
}

class GthreadItemsFragmentDataBuilder
    implements
        Builder<GthreadItemsFragmentData, GthreadItemsFragmentDataBuilder> {
  _$GthreadItemsFragmentData? _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  int? _id;
  int? get id => _$this._id;
  set id(int? id) => _$this._id = id;

  int? _threadId;
  int? get threadId => _$this._threadId;
  set threadId(int? threadId) => _$this._threadId = threadId;

  int? _reservationId;
  int? get reservationId => _$this._reservationId;
  set reservationId(int? reservationId) =>
      _$this._reservationId = reservationId;

  String? _sentBy;
  String? get sentBy => _$this._sentBy;
  set sentBy(String? sentBy) => _$this._sentBy = sentBy;

  String? _content;
  String? get content => _$this._content;
  set content(String? content) => _$this._content = content;

  String? _type;
  String? get type => _$this._type;
  set type(String? type) => _$this._type = type;

  String? _startDate;
  String? get startDate => _$this._startDate;
  set startDate(String? startDate) => _$this._startDate = startDate;

  String? _endDate;
  String? get endDate => _$this._endDate;
  set endDate(String? endDate) => _$this._endDate = endDate;

  double? _startTime;
  double? get startTime => _$this._startTime;
  set startTime(double? startTime) => _$this._startTime = startTime;

  double? _endTime;
  double? get endTime => _$this._endTime;
  set endTime(double? endTime) => _$this._endTime = endTime;

  int? _personCapacity;
  int? get personCapacity => _$this._personCapacity;
  set personCapacity(int? personCapacity) =>
      _$this._personCapacity = personCapacity;

  bool? _isRead;
  bool? get isRead => _$this._isRead;
  set isRead(bool? isRead) => _$this._isRead = isRead;

  String? _createdAt;
  String? get createdAt => _$this._createdAt;
  set createdAt(String? createdAt) => _$this._createdAt = createdAt;

  int? _status;
  int? get status => _$this._status;
  set status(int? status) => _$this._status = status;

  int? _userBanStatus;
  int? get userBanStatus => _$this._userBanStatus;
  set userBanStatus(int? userBanStatus) =>
      _$this._userBanStatus = userBanStatus;

  GthreadItemsFragmentDataBuilder() {
    GthreadItemsFragmentData._initializeBuilder(this);
  }

  GthreadItemsFragmentDataBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _G__typename = $v.G__typename;
      _id = $v.id;
      _threadId = $v.threadId;
      _reservationId = $v.reservationId;
      _sentBy = $v.sentBy;
      _content = $v.content;
      _type = $v.type;
      _startDate = $v.startDate;
      _endDate = $v.endDate;
      _startTime = $v.startTime;
      _endTime = $v.endTime;
      _personCapacity = $v.personCapacity;
      _isRead = $v.isRead;
      _createdAt = $v.createdAt;
      _status = $v.status;
      _userBanStatus = $v.userBanStatus;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GthreadItemsFragmentData other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GthreadItemsFragmentData;
  }

  @override
  void update(void Function(GthreadItemsFragmentDataBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GthreadItemsFragmentData build() => _build();

  _$GthreadItemsFragmentData _build() {
    final _$result = _$v ??
        new _$GthreadItemsFragmentData._(
            G__typename: BuiltValueNullFieldError.checkNotNull(
                G__typename, r'GthreadItemsFragmentData', 'G__typename'),
            id: id,
            threadId: threadId,
            reservationId: reservationId,
            sentBy: sentBy,
            content: content,
            type: type,
            startDate: startDate,
            endDate: endDate,
            startTime: startTime,
            endTime: endTime,
            personCapacity: personCapacity,
            isRead: isRead,
            createdAt: createdAt,
            status: status,
            userBanStatus: userBanStatus);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
