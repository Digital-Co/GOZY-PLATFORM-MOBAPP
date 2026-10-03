// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'getAllReservations.var.gql.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<GgetAllReservationVars> _$ggetAllReservationVarsSerializer =
    new _$GgetAllReservationVarsSerializer();
Serializer<GcontactSupportVars> _$gcontactSupportVarsSerializer =
    new _$GcontactSupportVarsSerializer();
Serializer<GReservationStatusVars> _$gReservationStatusVarsSerializer =
    new _$GReservationStatusVarsSerializer();

class _$GgetAllReservationVarsSerializer
    implements StructuredSerializer<GgetAllReservationVars> {
  @override
  final Iterable<Type> types = const [
    GgetAllReservationVars,
    _$GgetAllReservationVars
  ];
  @override
  final String wireName = 'GgetAllReservationVars';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, GgetAllReservationVars object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[];
    Object? value;
    value = object.userType;
    if (value != null) {
      result
        ..add('userType')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.currentPage;
    if (value != null) {
      result
        ..add('currentPage')
        ..add(serializers.serialize(value, specifiedType: const FullType(int)));
    }
    value = object.dateFilter;
    if (value != null) {
      result
        ..add('dateFilter')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    return result;
  }

  @override
  GgetAllReservationVars deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GgetAllReservationVarsBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'userType':
          result.userType = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'currentPage':
          result.currentPage = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int?;
          break;
        case 'dateFilter':
          result.dateFilter = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
      }
    }

    return result.build();
  }
}

class _$GcontactSupportVarsSerializer
    implements StructuredSerializer<GcontactSupportVars> {
  @override
  final Iterable<Type> types = const [
    GcontactSupportVars,
    _$GcontactSupportVars
  ];
  @override
  final String wireName = 'GcontactSupportVars';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, GcontactSupportVars object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[];
    Object? value;
    value = object.message;
    if (value != null) {
      result
        ..add('message')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.listId;
    if (value != null) {
      result
        ..add('listId')
        ..add(serializers.serialize(value, specifiedType: const FullType(int)));
    }
    value = object.reservationId;
    if (value != null) {
      result
        ..add('reservationId')
        ..add(serializers.serialize(value, specifiedType: const FullType(int)));
    }
    value = object.userType;
    if (value != null) {
      result
        ..add('userType')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    return result;
  }

  @override
  GcontactSupportVars deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GcontactSupportVarsBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'message':
          result.message = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'listId':
          result.listId = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int?;
          break;
        case 'reservationId':
          result.reservationId = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int?;
          break;
        case 'userType':
          result.userType = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
      }
    }

    return result.build();
  }
}

class _$GReservationStatusVarsSerializer
    implements StructuredSerializer<GReservationStatusVars> {
  @override
  final Iterable<Type> types = const [
    GReservationStatusVars,
    _$GReservationStatusVars
  ];
  @override
  final String wireName = 'GReservationStatusVars';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, GReservationStatusVars object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      'threadId',
      serializers.serialize(object.threadId,
          specifiedType: const FullType(int)),
    ];
    Object? value;
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
    value = object.personCapacity;
    if (value != null) {
      result
        ..add('personCapacity')
        ..add(serializers.serialize(value, specifiedType: const FullType(int)));
    }
    value = object.reservationId;
    if (value != null) {
      result
        ..add('reservationId')
        ..add(serializers.serialize(value, specifiedType: const FullType(int)));
    }
    value = object.actionType;
    if (value != null) {
      result
        ..add('actionType')
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
    return result;
  }

  @override
  GReservationStatusVars deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GReservationStatusVarsBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'threadId':
          result.threadId = serializers.deserialize(value,
              specifiedType: const FullType(int))! as int;
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
        case 'personCapacity':
          result.personCapacity = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int?;
          break;
        case 'reservationId':
          result.reservationId = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int?;
          break;
        case 'actionType':
          result.actionType = serializers.deserialize(value,
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
      }
    }

    return result.build();
  }
}

class _$GgetAllReservationVars extends GgetAllReservationVars {
  @override
  final String? userType;
  @override
  final int? currentPage;
  @override
  final String? dateFilter;

  factory _$GgetAllReservationVars(
          [void Function(GgetAllReservationVarsBuilder)? updates]) =>
      (new GgetAllReservationVarsBuilder()..update(updates))._build();

  _$GgetAllReservationVars._({this.userType, this.currentPage, this.dateFilter})
      : super._();

  @override
  GgetAllReservationVars rebuild(
          void Function(GgetAllReservationVarsBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GgetAllReservationVarsBuilder toBuilder() =>
      new GgetAllReservationVarsBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GgetAllReservationVars &&
        userType == other.userType &&
        currentPage == other.currentPage &&
        dateFilter == other.dateFilter;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, userType.hashCode);
    _$hash = $jc(_$hash, currentPage.hashCode);
    _$hash = $jc(_$hash, dateFilter.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'GgetAllReservationVars')
          ..add('userType', userType)
          ..add('currentPage', currentPage)
          ..add('dateFilter', dateFilter))
        .toString();
  }
}

class GgetAllReservationVarsBuilder
    implements Builder<GgetAllReservationVars, GgetAllReservationVarsBuilder> {
  _$GgetAllReservationVars? _$v;

  String? _userType;
  String? get userType => _$this._userType;
  set userType(String? userType) => _$this._userType = userType;

  int? _currentPage;
  int? get currentPage => _$this._currentPage;
  set currentPage(int? currentPage) => _$this._currentPage = currentPage;

  String? _dateFilter;
  String? get dateFilter => _$this._dateFilter;
  set dateFilter(String? dateFilter) => _$this._dateFilter = dateFilter;

  GgetAllReservationVarsBuilder();

  GgetAllReservationVarsBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _userType = $v.userType;
      _currentPage = $v.currentPage;
      _dateFilter = $v.dateFilter;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GgetAllReservationVars other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GgetAllReservationVars;
  }

  @override
  void update(void Function(GgetAllReservationVarsBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GgetAllReservationVars build() => _build();

  _$GgetAllReservationVars _build() {
    final _$result = _$v ??
        new _$GgetAllReservationVars._(
            userType: userType,
            currentPage: currentPage,
            dateFilter: dateFilter);
    replace(_$result);
    return _$result;
  }
}

class _$GcontactSupportVars extends GcontactSupportVars {
  @override
  final String? message;
  @override
  final int? listId;
  @override
  final int? reservationId;
  @override
  final String? userType;

  factory _$GcontactSupportVars(
          [void Function(GcontactSupportVarsBuilder)? updates]) =>
      (new GcontactSupportVarsBuilder()..update(updates))._build();

  _$GcontactSupportVars._(
      {this.message, this.listId, this.reservationId, this.userType})
      : super._();

  @override
  GcontactSupportVars rebuild(
          void Function(GcontactSupportVarsBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GcontactSupportVarsBuilder toBuilder() =>
      new GcontactSupportVarsBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GcontactSupportVars &&
        message == other.message &&
        listId == other.listId &&
        reservationId == other.reservationId &&
        userType == other.userType;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, message.hashCode);
    _$hash = $jc(_$hash, listId.hashCode);
    _$hash = $jc(_$hash, reservationId.hashCode);
    _$hash = $jc(_$hash, userType.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'GcontactSupportVars')
          ..add('message', message)
          ..add('listId', listId)
          ..add('reservationId', reservationId)
          ..add('userType', userType))
        .toString();
  }
}

class GcontactSupportVarsBuilder
    implements Builder<GcontactSupportVars, GcontactSupportVarsBuilder> {
  _$GcontactSupportVars? _$v;

  String? _message;
  String? get message => _$this._message;
  set message(String? message) => _$this._message = message;

  int? _listId;
  int? get listId => _$this._listId;
  set listId(int? listId) => _$this._listId = listId;

  int? _reservationId;
  int? get reservationId => _$this._reservationId;
  set reservationId(int? reservationId) =>
      _$this._reservationId = reservationId;

  String? _userType;
  String? get userType => _$this._userType;
  set userType(String? userType) => _$this._userType = userType;

  GcontactSupportVarsBuilder();

  GcontactSupportVarsBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _message = $v.message;
      _listId = $v.listId;
      _reservationId = $v.reservationId;
      _userType = $v.userType;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GcontactSupportVars other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GcontactSupportVars;
  }

  @override
  void update(void Function(GcontactSupportVarsBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GcontactSupportVars build() => _build();

  _$GcontactSupportVars _build() {
    final _$result = _$v ??
        new _$GcontactSupportVars._(
            message: message,
            listId: listId,
            reservationId: reservationId,
            userType: userType);
    replace(_$result);
    return _$result;
  }
}

class _$GReservationStatusVars extends GReservationStatusVars {
  @override
  final int threadId;
  @override
  final String? content;
  @override
  final String? type;
  @override
  final String? startDate;
  @override
  final String? endDate;
  @override
  final int? personCapacity;
  @override
  final int? reservationId;
  @override
  final String? actionType;
  @override
  final double? startTime;
  @override
  final double? endTime;

  factory _$GReservationStatusVars(
          [void Function(GReservationStatusVarsBuilder)? updates]) =>
      (new GReservationStatusVarsBuilder()..update(updates))._build();

  _$GReservationStatusVars._(
      {required this.threadId,
      this.content,
      this.type,
      this.startDate,
      this.endDate,
      this.personCapacity,
      this.reservationId,
      this.actionType,
      this.startTime,
      this.endTime})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        threadId, r'GReservationStatusVars', 'threadId');
  }

  @override
  GReservationStatusVars rebuild(
          void Function(GReservationStatusVarsBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GReservationStatusVarsBuilder toBuilder() =>
      new GReservationStatusVarsBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GReservationStatusVars &&
        threadId == other.threadId &&
        content == other.content &&
        type == other.type &&
        startDate == other.startDate &&
        endDate == other.endDate &&
        personCapacity == other.personCapacity &&
        reservationId == other.reservationId &&
        actionType == other.actionType &&
        startTime == other.startTime &&
        endTime == other.endTime;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, threadId.hashCode);
    _$hash = $jc(_$hash, content.hashCode);
    _$hash = $jc(_$hash, type.hashCode);
    _$hash = $jc(_$hash, startDate.hashCode);
    _$hash = $jc(_$hash, endDate.hashCode);
    _$hash = $jc(_$hash, personCapacity.hashCode);
    _$hash = $jc(_$hash, reservationId.hashCode);
    _$hash = $jc(_$hash, actionType.hashCode);
    _$hash = $jc(_$hash, startTime.hashCode);
    _$hash = $jc(_$hash, endTime.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'GReservationStatusVars')
          ..add('threadId', threadId)
          ..add('content', content)
          ..add('type', type)
          ..add('startDate', startDate)
          ..add('endDate', endDate)
          ..add('personCapacity', personCapacity)
          ..add('reservationId', reservationId)
          ..add('actionType', actionType)
          ..add('startTime', startTime)
          ..add('endTime', endTime))
        .toString();
  }
}

class GReservationStatusVarsBuilder
    implements Builder<GReservationStatusVars, GReservationStatusVarsBuilder> {
  _$GReservationStatusVars? _$v;

  int? _threadId;
  int? get threadId => _$this._threadId;
  set threadId(int? threadId) => _$this._threadId = threadId;

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

  int? _personCapacity;
  int? get personCapacity => _$this._personCapacity;
  set personCapacity(int? personCapacity) =>
      _$this._personCapacity = personCapacity;

  int? _reservationId;
  int? get reservationId => _$this._reservationId;
  set reservationId(int? reservationId) =>
      _$this._reservationId = reservationId;

  String? _actionType;
  String? get actionType => _$this._actionType;
  set actionType(String? actionType) => _$this._actionType = actionType;

  double? _startTime;
  double? get startTime => _$this._startTime;
  set startTime(double? startTime) => _$this._startTime = startTime;

  double? _endTime;
  double? get endTime => _$this._endTime;
  set endTime(double? endTime) => _$this._endTime = endTime;

  GReservationStatusVarsBuilder();

  GReservationStatusVarsBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _threadId = $v.threadId;
      _content = $v.content;
      _type = $v.type;
      _startDate = $v.startDate;
      _endDate = $v.endDate;
      _personCapacity = $v.personCapacity;
      _reservationId = $v.reservationId;
      _actionType = $v.actionType;
      _startTime = $v.startTime;
      _endTime = $v.endTime;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GReservationStatusVars other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GReservationStatusVars;
  }

  @override
  void update(void Function(GReservationStatusVarsBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GReservationStatusVars build() => _build();

  _$GReservationStatusVars _build() {
    final _$result = _$v ??
        new _$GReservationStatusVars._(
            threadId: BuiltValueNullFieldError.checkNotNull(
                threadId, r'GReservationStatusVars', 'threadId'),
            content: content,
            type: type,
            startDate: startDate,
            endDate: endDate,
            personCapacity: personCapacity,
            reservationId: reservationId,
            actionType: actionType,
            startTime: startTime,
            endTime: endTime);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
