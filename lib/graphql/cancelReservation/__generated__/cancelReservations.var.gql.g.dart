// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'cancelReservations.var.gql.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<GCancellationDataVars> _$gCancellationDataVarsSerializer =
    new _$GCancellationDataVarsSerializer();
Serializer<GCancelReservationVars> _$gCancelReservationVarsSerializer =
    new _$GCancelReservationVarsSerializer();

class _$GCancellationDataVarsSerializer
    implements StructuredSerializer<GCancellationDataVars> {
  @override
  final Iterable<Type> types = const [
    GCancellationDataVars,
    _$GCancellationDataVars
  ];
  @override
  final String wireName = 'GCancellationDataVars';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, GCancellationDataVars object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      'reservationId',
      serializers.serialize(object.reservationId,
          specifiedType: const FullType(int)),
      'userType',
      serializers.serialize(object.userType,
          specifiedType: const FullType(String)),
    ];
    Object? value;
    value = object.currency;
    if (value != null) {
      result
        ..add('currency')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    return result;
  }

  @override
  GCancellationDataVars deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GCancellationDataVarsBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'reservationId':
          result.reservationId = serializers.deserialize(value,
              specifiedType: const FullType(int))! as int;
          break;
        case 'userType':
          result.userType = serializers.deserialize(value,
              specifiedType: const FullType(String))! as String;
          break;
        case 'currency':
          result.currency = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
      }
    }

    return result.build();
  }
}

class _$GCancelReservationVarsSerializer
    implements StructuredSerializer<GCancelReservationVars> {
  @override
  final Iterable<Type> types = const [
    GCancelReservationVars,
    _$GCancelReservationVars
  ];
  @override
  final String wireName = 'GCancelReservationVars';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, GCancelReservationVars object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      'reservationId',
      serializers.serialize(object.reservationId,
          specifiedType: const FullType(int)),
      'cancellationPolicy',
      serializers.serialize(object.cancellationPolicy,
          specifiedType: const FullType(String)),
      'refundToGuest',
      serializers.serialize(object.refundToGuest,
          specifiedType: const FullType(double)),
      'payoutToHost',
      serializers.serialize(object.payoutToHost,
          specifiedType: const FullType(double)),
      'guestServiceFee',
      serializers.serialize(object.guestServiceFee,
          specifiedType: const FullType(double)),
      'hostServiceFee',
      serializers.serialize(object.hostServiceFee,
          specifiedType: const FullType(double)),
      'total',
      serializers.serialize(object.total,
          specifiedType: const FullType(double)),
      'currency',
      serializers.serialize(object.currency,
          specifiedType: const FullType(String)),
      'threadId',
      serializers.serialize(object.threadId,
          specifiedType: const FullType(int)),
      'cancelledBy',
      serializers.serialize(object.cancelledBy,
          specifiedType: const FullType(String)),
      'message',
      serializers.serialize(object.message,
          specifiedType: const FullType(String)),
      'checkIn',
      serializers.serialize(object.checkIn,
          specifiedType: const FullType(String)),
      'checkOut',
      serializers.serialize(object.checkOut,
          specifiedType: const FullType(String)),
      'guests',
      serializers.serialize(object.guests, specifiedType: const FullType(int)),
      'startTime',
      serializers.serialize(object.startTime,
          specifiedType: const FullType(double)),
      'endTime',
      serializers.serialize(object.endTime,
          specifiedType: const FullType(double)),
    ];

    return result;
  }

  @override
  GCancelReservationVars deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GCancelReservationVarsBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'reservationId':
          result.reservationId = serializers.deserialize(value,
              specifiedType: const FullType(int))! as int;
          break;
        case 'cancellationPolicy':
          result.cancellationPolicy = serializers.deserialize(value,
              specifiedType: const FullType(String))! as String;
          break;
        case 'refundToGuest':
          result.refundToGuest = serializers.deserialize(value,
              specifiedType: const FullType(double))! as double;
          break;
        case 'payoutToHost':
          result.payoutToHost = serializers.deserialize(value,
              specifiedType: const FullType(double))! as double;
          break;
        case 'guestServiceFee':
          result.guestServiceFee = serializers.deserialize(value,
              specifiedType: const FullType(double))! as double;
          break;
        case 'hostServiceFee':
          result.hostServiceFee = serializers.deserialize(value,
              specifiedType: const FullType(double))! as double;
          break;
        case 'total':
          result.total = serializers.deserialize(value,
              specifiedType: const FullType(double))! as double;
          break;
        case 'currency':
          result.currency = serializers.deserialize(value,
              specifiedType: const FullType(String))! as String;
          break;
        case 'threadId':
          result.threadId = serializers.deserialize(value,
              specifiedType: const FullType(int))! as int;
          break;
        case 'cancelledBy':
          result.cancelledBy = serializers.deserialize(value,
              specifiedType: const FullType(String))! as String;
          break;
        case 'message':
          result.message = serializers.deserialize(value,
              specifiedType: const FullType(String))! as String;
          break;
        case 'checkIn':
          result.checkIn = serializers.deserialize(value,
              specifiedType: const FullType(String))! as String;
          break;
        case 'checkOut':
          result.checkOut = serializers.deserialize(value,
              specifiedType: const FullType(String))! as String;
          break;
        case 'guests':
          result.guests = serializers.deserialize(value,
              specifiedType: const FullType(int))! as int;
          break;
        case 'startTime':
          result.startTime = serializers.deserialize(value,
              specifiedType: const FullType(double))! as double;
          break;
        case 'endTime':
          result.endTime = serializers.deserialize(value,
              specifiedType: const FullType(double))! as double;
          break;
      }
    }

    return result.build();
  }
}

class _$GCancellationDataVars extends GCancellationDataVars {
  @override
  final int reservationId;
  @override
  final String userType;
  @override
  final String? currency;

  factory _$GCancellationDataVars(
          [void Function(GCancellationDataVarsBuilder)? updates]) =>
      (new GCancellationDataVarsBuilder()..update(updates))._build();

  _$GCancellationDataVars._(
      {required this.reservationId, required this.userType, this.currency})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        reservationId, r'GCancellationDataVars', 'reservationId');
    BuiltValueNullFieldError.checkNotNull(
        userType, r'GCancellationDataVars', 'userType');
  }

  @override
  GCancellationDataVars rebuild(
          void Function(GCancellationDataVarsBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GCancellationDataVarsBuilder toBuilder() =>
      new GCancellationDataVarsBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GCancellationDataVars &&
        reservationId == other.reservationId &&
        userType == other.userType &&
        currency == other.currency;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, reservationId.hashCode);
    _$hash = $jc(_$hash, userType.hashCode);
    _$hash = $jc(_$hash, currency.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'GCancellationDataVars')
          ..add('reservationId', reservationId)
          ..add('userType', userType)
          ..add('currency', currency))
        .toString();
  }
}

class GCancellationDataVarsBuilder
    implements Builder<GCancellationDataVars, GCancellationDataVarsBuilder> {
  _$GCancellationDataVars? _$v;

  int? _reservationId;
  int? get reservationId => _$this._reservationId;
  set reservationId(int? reservationId) =>
      _$this._reservationId = reservationId;

  String? _userType;
  String? get userType => _$this._userType;
  set userType(String? userType) => _$this._userType = userType;

  String? _currency;
  String? get currency => _$this._currency;
  set currency(String? currency) => _$this._currency = currency;

  GCancellationDataVarsBuilder();

  GCancellationDataVarsBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _reservationId = $v.reservationId;
      _userType = $v.userType;
      _currency = $v.currency;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GCancellationDataVars other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GCancellationDataVars;
  }

  @override
  void update(void Function(GCancellationDataVarsBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GCancellationDataVars build() => _build();

  _$GCancellationDataVars _build() {
    final _$result = _$v ??
        new _$GCancellationDataVars._(
            reservationId: BuiltValueNullFieldError.checkNotNull(
                reservationId, r'GCancellationDataVars', 'reservationId'),
            userType: BuiltValueNullFieldError.checkNotNull(
                userType, r'GCancellationDataVars', 'userType'),
            currency: currency);
    replace(_$result);
    return _$result;
  }
}

class _$GCancelReservationVars extends GCancelReservationVars {
  @override
  final int reservationId;
  @override
  final String cancellationPolicy;
  @override
  final double refundToGuest;
  @override
  final double payoutToHost;
  @override
  final double guestServiceFee;
  @override
  final double hostServiceFee;
  @override
  final double total;
  @override
  final String currency;
  @override
  final int threadId;
  @override
  final String cancelledBy;
  @override
  final String message;
  @override
  final String checkIn;
  @override
  final String checkOut;
  @override
  final int guests;
  @override
  final double startTime;
  @override
  final double endTime;

  factory _$GCancelReservationVars(
          [void Function(GCancelReservationVarsBuilder)? updates]) =>
      (new GCancelReservationVarsBuilder()..update(updates))._build();

  _$GCancelReservationVars._(
      {required this.reservationId,
      required this.cancellationPolicy,
      required this.refundToGuest,
      required this.payoutToHost,
      required this.guestServiceFee,
      required this.hostServiceFee,
      required this.total,
      required this.currency,
      required this.threadId,
      required this.cancelledBy,
      required this.message,
      required this.checkIn,
      required this.checkOut,
      required this.guests,
      required this.startTime,
      required this.endTime})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        reservationId, r'GCancelReservationVars', 'reservationId');
    BuiltValueNullFieldError.checkNotNull(
        cancellationPolicy, r'GCancelReservationVars', 'cancellationPolicy');
    BuiltValueNullFieldError.checkNotNull(
        refundToGuest, r'GCancelReservationVars', 'refundToGuest');
    BuiltValueNullFieldError.checkNotNull(
        payoutToHost, r'GCancelReservationVars', 'payoutToHost');
    BuiltValueNullFieldError.checkNotNull(
        guestServiceFee, r'GCancelReservationVars', 'guestServiceFee');
    BuiltValueNullFieldError.checkNotNull(
        hostServiceFee, r'GCancelReservationVars', 'hostServiceFee');
    BuiltValueNullFieldError.checkNotNull(
        total, r'GCancelReservationVars', 'total');
    BuiltValueNullFieldError.checkNotNull(
        currency, r'GCancelReservationVars', 'currency');
    BuiltValueNullFieldError.checkNotNull(
        threadId, r'GCancelReservationVars', 'threadId');
    BuiltValueNullFieldError.checkNotNull(
        cancelledBy, r'GCancelReservationVars', 'cancelledBy');
    BuiltValueNullFieldError.checkNotNull(
        message, r'GCancelReservationVars', 'message');
    BuiltValueNullFieldError.checkNotNull(
        checkIn, r'GCancelReservationVars', 'checkIn');
    BuiltValueNullFieldError.checkNotNull(
        checkOut, r'GCancelReservationVars', 'checkOut');
    BuiltValueNullFieldError.checkNotNull(
        guests, r'GCancelReservationVars', 'guests');
    BuiltValueNullFieldError.checkNotNull(
        startTime, r'GCancelReservationVars', 'startTime');
    BuiltValueNullFieldError.checkNotNull(
        endTime, r'GCancelReservationVars', 'endTime');
  }

  @override
  GCancelReservationVars rebuild(
          void Function(GCancelReservationVarsBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GCancelReservationVarsBuilder toBuilder() =>
      new GCancelReservationVarsBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GCancelReservationVars &&
        reservationId == other.reservationId &&
        cancellationPolicy == other.cancellationPolicy &&
        refundToGuest == other.refundToGuest &&
        payoutToHost == other.payoutToHost &&
        guestServiceFee == other.guestServiceFee &&
        hostServiceFee == other.hostServiceFee &&
        total == other.total &&
        currency == other.currency &&
        threadId == other.threadId &&
        cancelledBy == other.cancelledBy &&
        message == other.message &&
        checkIn == other.checkIn &&
        checkOut == other.checkOut &&
        guests == other.guests &&
        startTime == other.startTime &&
        endTime == other.endTime;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, reservationId.hashCode);
    _$hash = $jc(_$hash, cancellationPolicy.hashCode);
    _$hash = $jc(_$hash, refundToGuest.hashCode);
    _$hash = $jc(_$hash, payoutToHost.hashCode);
    _$hash = $jc(_$hash, guestServiceFee.hashCode);
    _$hash = $jc(_$hash, hostServiceFee.hashCode);
    _$hash = $jc(_$hash, total.hashCode);
    _$hash = $jc(_$hash, currency.hashCode);
    _$hash = $jc(_$hash, threadId.hashCode);
    _$hash = $jc(_$hash, cancelledBy.hashCode);
    _$hash = $jc(_$hash, message.hashCode);
    _$hash = $jc(_$hash, checkIn.hashCode);
    _$hash = $jc(_$hash, checkOut.hashCode);
    _$hash = $jc(_$hash, guests.hashCode);
    _$hash = $jc(_$hash, startTime.hashCode);
    _$hash = $jc(_$hash, endTime.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'GCancelReservationVars')
          ..add('reservationId', reservationId)
          ..add('cancellationPolicy', cancellationPolicy)
          ..add('refundToGuest', refundToGuest)
          ..add('payoutToHost', payoutToHost)
          ..add('guestServiceFee', guestServiceFee)
          ..add('hostServiceFee', hostServiceFee)
          ..add('total', total)
          ..add('currency', currency)
          ..add('threadId', threadId)
          ..add('cancelledBy', cancelledBy)
          ..add('message', message)
          ..add('checkIn', checkIn)
          ..add('checkOut', checkOut)
          ..add('guests', guests)
          ..add('startTime', startTime)
          ..add('endTime', endTime))
        .toString();
  }
}

class GCancelReservationVarsBuilder
    implements Builder<GCancelReservationVars, GCancelReservationVarsBuilder> {
  _$GCancelReservationVars? _$v;

  int? _reservationId;
  int? get reservationId => _$this._reservationId;
  set reservationId(int? reservationId) =>
      _$this._reservationId = reservationId;

  String? _cancellationPolicy;
  String? get cancellationPolicy => _$this._cancellationPolicy;
  set cancellationPolicy(String? cancellationPolicy) =>
      _$this._cancellationPolicy = cancellationPolicy;

  double? _refundToGuest;
  double? get refundToGuest => _$this._refundToGuest;
  set refundToGuest(double? refundToGuest) =>
      _$this._refundToGuest = refundToGuest;

  double? _payoutToHost;
  double? get payoutToHost => _$this._payoutToHost;
  set payoutToHost(double? payoutToHost) => _$this._payoutToHost = payoutToHost;

  double? _guestServiceFee;
  double? get guestServiceFee => _$this._guestServiceFee;
  set guestServiceFee(double? guestServiceFee) =>
      _$this._guestServiceFee = guestServiceFee;

  double? _hostServiceFee;
  double? get hostServiceFee => _$this._hostServiceFee;
  set hostServiceFee(double? hostServiceFee) =>
      _$this._hostServiceFee = hostServiceFee;

  double? _total;
  double? get total => _$this._total;
  set total(double? total) => _$this._total = total;

  String? _currency;
  String? get currency => _$this._currency;
  set currency(String? currency) => _$this._currency = currency;

  int? _threadId;
  int? get threadId => _$this._threadId;
  set threadId(int? threadId) => _$this._threadId = threadId;

  String? _cancelledBy;
  String? get cancelledBy => _$this._cancelledBy;
  set cancelledBy(String? cancelledBy) => _$this._cancelledBy = cancelledBy;

  String? _message;
  String? get message => _$this._message;
  set message(String? message) => _$this._message = message;

  String? _checkIn;
  String? get checkIn => _$this._checkIn;
  set checkIn(String? checkIn) => _$this._checkIn = checkIn;

  String? _checkOut;
  String? get checkOut => _$this._checkOut;
  set checkOut(String? checkOut) => _$this._checkOut = checkOut;

  int? _guests;
  int? get guests => _$this._guests;
  set guests(int? guests) => _$this._guests = guests;

  double? _startTime;
  double? get startTime => _$this._startTime;
  set startTime(double? startTime) => _$this._startTime = startTime;

  double? _endTime;
  double? get endTime => _$this._endTime;
  set endTime(double? endTime) => _$this._endTime = endTime;

  GCancelReservationVarsBuilder();

  GCancelReservationVarsBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _reservationId = $v.reservationId;
      _cancellationPolicy = $v.cancellationPolicy;
      _refundToGuest = $v.refundToGuest;
      _payoutToHost = $v.payoutToHost;
      _guestServiceFee = $v.guestServiceFee;
      _hostServiceFee = $v.hostServiceFee;
      _total = $v.total;
      _currency = $v.currency;
      _threadId = $v.threadId;
      _cancelledBy = $v.cancelledBy;
      _message = $v.message;
      _checkIn = $v.checkIn;
      _checkOut = $v.checkOut;
      _guests = $v.guests;
      _startTime = $v.startTime;
      _endTime = $v.endTime;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GCancelReservationVars other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GCancelReservationVars;
  }

  @override
  void update(void Function(GCancelReservationVarsBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GCancelReservationVars build() => _build();

  _$GCancelReservationVars _build() {
    final _$result = _$v ??
        new _$GCancelReservationVars._(
            reservationId: BuiltValueNullFieldError.checkNotNull(
                reservationId, r'GCancelReservationVars', 'reservationId'),
            cancellationPolicy: BuiltValueNullFieldError.checkNotNull(
                cancellationPolicy, r'GCancelReservationVars', 'cancellationPolicy'),
            refundToGuest: BuiltValueNullFieldError.checkNotNull(
                refundToGuest, r'GCancelReservationVars', 'refundToGuest'),
            payoutToHost: BuiltValueNullFieldError.checkNotNull(
                payoutToHost, r'GCancelReservationVars', 'payoutToHost'),
            guestServiceFee: BuiltValueNullFieldError.checkNotNull(
                guestServiceFee, r'GCancelReservationVars', 'guestServiceFee'),
            hostServiceFee: BuiltValueNullFieldError.checkNotNull(
                hostServiceFee, r'GCancelReservationVars', 'hostServiceFee'),
            total: BuiltValueNullFieldError.checkNotNull(
                total, r'GCancelReservationVars', 'total'),
            currency:
                BuiltValueNullFieldError.checkNotNull(currency, r'GCancelReservationVars', 'currency'),
            threadId: BuiltValueNullFieldError.checkNotNull(threadId, r'GCancelReservationVars', 'threadId'),
            cancelledBy: BuiltValueNullFieldError.checkNotNull(cancelledBy, r'GCancelReservationVars', 'cancelledBy'),
            message: BuiltValueNullFieldError.checkNotNull(message, r'GCancelReservationVars', 'message'),
            checkIn: BuiltValueNullFieldError.checkNotNull(checkIn, r'GCancelReservationVars', 'checkIn'),
            checkOut: BuiltValueNullFieldError.checkNotNull(checkOut, r'GCancelReservationVars', 'checkOut'),
            guests: BuiltValueNullFieldError.checkNotNull(guests, r'GCancelReservationVars', 'guests'),
            startTime: BuiltValueNullFieldError.checkNotNull(startTime, r'GCancelReservationVars', 'startTime'),
            endTime: BuiltValueNullFieldError.checkNotNull(endTime, r'GCancelReservationVars', 'endTime'));
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
