// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'create_reservation.var.gql.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<GcreateReservationVars> _$gcreateReservationVarsSerializer =
    new _$GcreateReservationVarsSerializer();

class _$GcreateReservationVarsSerializer
    implements StructuredSerializer<GcreateReservationVars> {
  @override
  final Iterable<Type> types = const [
    GcreateReservationVars,
    _$GcreateReservationVars
  ];
  @override
  final String wireName = 'GcreateReservationVars';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, GcreateReservationVars object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      'listId',
      serializers.serialize(object.listId, specifiedType: const FullType(int)),
      'checkIn',
      serializers.serialize(object.checkIn,
          specifiedType: const FullType(String)),
      'checkOut',
      serializers.serialize(object.checkOut,
          specifiedType: const FullType(String)),
      'guests',
      serializers.serialize(object.guests, specifiedType: const FullType(int)),
      'message',
      serializers.serialize(object.message,
          specifiedType: const FullType(String)),
      'basePrice',
      serializers.serialize(object.basePrice,
          specifiedType: const FullType(double)),
      'delivery',
      serializers.serialize(object.delivery,
          specifiedType: const FullType(double)),
      'currency',
      serializers.serialize(object.currency,
          specifiedType: const FullType(String)),
      'total',
      serializers.serialize(object.total,
          specifiedType: const FullType(double)),
      'licenseNumber',
      serializers.serialize(object.licenseNumber,
          specifiedType: const FullType(String)),
      'firstName',
      serializers.serialize(object.firstName,
          specifiedType: const FullType(String)),
      'lastName',
      serializers.serialize(object.lastName,
          specifiedType: const FullType(String)),
      'dateOfBirth',
      serializers.serialize(object.dateOfBirth,
          specifiedType: const FullType(String)),
    ];
    Object? value;
    value = object.discount;
    if (value != null) {
      result
        ..add('discount')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(double)));
    }
    value = object.discountType;
    if (value != null) {
      result
        ..add('discountType')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.guestServiceFee;
    if (value != null) {
      result
        ..add('guestServiceFee')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(double)));
    }
    value = object.hostServiceFee;
    if (value != null) {
      result
        ..add('hostServiceFee')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(double)));
    }
    value = object.bookingType;
    if (value != null) {
      result
        ..add('bookingType')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.cardToken;
    if (value != null) {
      result
        ..add('cardToken')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.paymentType;
    if (value != null) {
      result
        ..add('paymentType')
        ..add(serializers.serialize(value, specifiedType: const FullType(int)));
    }
    value = object.averagePrice;
    if (value != null) {
      result
        ..add('averagePrice')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(double)));
    }
    value = object.days;
    if (value != null) {
      result
        ..add('days')
        ..add(serializers.serialize(value, specifiedType: const FullType(int)));
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
    value = object.middleName;
    if (value != null) {
      result
        ..add('middleName')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.countryCode;
    if (value != null) {
      result
        ..add('countryCode')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.isDeliveryIncluded;
    if (value != null) {
      result
        ..add('isDeliveryIncluded')
        ..add(
            serializers.serialize(value, specifiedType: const FullType(bool)));
    }
    value = object.paymentCurrency;
    if (value != null) {
      result
        ..add('paymentCurrency')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.promoCode;
    if (value != null) {
      result
        ..add('promoCode')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    return result;
  }

  @override
  GcreateReservationVars deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GcreateReservationVarsBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'listId':
          result.listId = serializers.deserialize(value,
              specifiedType: const FullType(int))! as int;
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
        case 'message':
          result.message = serializers.deserialize(value,
              specifiedType: const FullType(String))! as String;
          break;
        case 'basePrice':
          result.basePrice = serializers.deserialize(value,
              specifiedType: const FullType(double))! as double;
          break;
        case 'delivery':
          result.delivery = serializers.deserialize(value,
              specifiedType: const FullType(double))! as double;
          break;
        case 'currency':
          result.currency = serializers.deserialize(value,
              specifiedType: const FullType(String))! as String;
          break;
        case 'discount':
          result.discount = serializers.deserialize(value,
              specifiedType: const FullType(double)) as double?;
          break;
        case 'discountType':
          result.discountType = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'guestServiceFee':
          result.guestServiceFee = serializers.deserialize(value,
              specifiedType: const FullType(double)) as double?;
          break;
        case 'hostServiceFee':
          result.hostServiceFee = serializers.deserialize(value,
              specifiedType: const FullType(double)) as double?;
          break;
        case 'total':
          result.total = serializers.deserialize(value,
              specifiedType: const FullType(double))! as double;
          break;
        case 'bookingType':
          result.bookingType = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'cardToken':
          result.cardToken = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'paymentType':
          result.paymentType = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int?;
          break;
        case 'averagePrice':
          result.averagePrice = serializers.deserialize(value,
              specifiedType: const FullType(double)) as double?;
          break;
        case 'days':
          result.days = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int?;
          break;
        case 'startTime':
          result.startTime = serializers.deserialize(value,
              specifiedType: const FullType(double)) as double?;
          break;
        case 'endTime':
          result.endTime = serializers.deserialize(value,
              specifiedType: const FullType(double)) as double?;
          break;
        case 'licenseNumber':
          result.licenseNumber = serializers.deserialize(value,
              specifiedType: const FullType(String))! as String;
          break;
        case 'firstName':
          result.firstName = serializers.deserialize(value,
              specifiedType: const FullType(String))! as String;
          break;
        case 'middleName':
          result.middleName = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'lastName':
          result.lastName = serializers.deserialize(value,
              specifiedType: const FullType(String))! as String;
          break;
        case 'dateOfBirth':
          result.dateOfBirth = serializers.deserialize(value,
              specifiedType: const FullType(String))! as String;
          break;
        case 'countryCode':
          result.countryCode = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'isDeliveryIncluded':
          result.isDeliveryIncluded = serializers.deserialize(value,
              specifiedType: const FullType(bool)) as bool?;
          break;
        case 'paymentCurrency':
          result.paymentCurrency = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'promoCode':
          result.promoCode = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
      }
    }

    return result.build();
  }
}

class _$GcreateReservationVars extends GcreateReservationVars {
  @override
  final int listId;
  @override
  final String checkIn;
  @override
  final String checkOut;
  @override
  final int guests;
  @override
  final String message;
  @override
  final double basePrice;
  @override
  final double delivery;
  @override
  final String currency;
  @override
  final double? discount;
  @override
  final String? discountType;
  @override
  final double? guestServiceFee;
  @override
  final double? hostServiceFee;
  @override
  final double total;
  @override
  final String? bookingType;
  @override
  final String? cardToken;
  @override
  final int? paymentType;
  @override
  final double? averagePrice;
  @override
  final int? days;
  @override
  final double? startTime;
  @override
  final double? endTime;
  @override
  final String licenseNumber;
  @override
  final String firstName;
  @override
  final String? middleName;
  @override
  final String lastName;
  @override
  final String dateOfBirth;
  @override
  final String? countryCode;
  @override
  final bool? isDeliveryIncluded;
  @override
  final String? paymentCurrency;
  @override
  final String? promoCode;

  factory _$GcreateReservationVars(
          [void Function(GcreateReservationVarsBuilder)? updates]) =>
      (new GcreateReservationVarsBuilder()..update(updates))._build();

  _$GcreateReservationVars._(
      {required this.listId,
      required this.checkIn,
      required this.checkOut,
      required this.guests,
      required this.message,
      required this.basePrice,
      required this.delivery,
      required this.currency,
      this.discount,
      this.discountType,
      this.guestServiceFee,
      this.hostServiceFee,
      required this.total,
      this.bookingType,
      this.cardToken,
      this.paymentType,
      this.averagePrice,
      this.days,
      this.startTime,
      this.endTime,
      required this.licenseNumber,
      required this.firstName,
      this.middleName,
      required this.lastName,
      required this.dateOfBirth,
      this.countryCode,
      this.isDeliveryIncluded,
      this.paymentCurrency,
      this.promoCode})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        listId, r'GcreateReservationVars', 'listId');
    BuiltValueNullFieldError.checkNotNull(
        checkIn, r'GcreateReservationVars', 'checkIn');
    BuiltValueNullFieldError.checkNotNull(
        checkOut, r'GcreateReservationVars', 'checkOut');
    BuiltValueNullFieldError.checkNotNull(
        guests, r'GcreateReservationVars', 'guests');
    BuiltValueNullFieldError.checkNotNull(
        message, r'GcreateReservationVars', 'message');
    BuiltValueNullFieldError.checkNotNull(
        basePrice, r'GcreateReservationVars', 'basePrice');
    BuiltValueNullFieldError.checkNotNull(
        delivery, r'GcreateReservationVars', 'delivery');
    BuiltValueNullFieldError.checkNotNull(
        currency, r'GcreateReservationVars', 'currency');
    BuiltValueNullFieldError.checkNotNull(
        total, r'GcreateReservationVars', 'total');
    BuiltValueNullFieldError.checkNotNull(
        licenseNumber, r'GcreateReservationVars', 'licenseNumber');
    BuiltValueNullFieldError.checkNotNull(
        firstName, r'GcreateReservationVars', 'firstName');
    BuiltValueNullFieldError.checkNotNull(
        lastName, r'GcreateReservationVars', 'lastName');
    BuiltValueNullFieldError.checkNotNull(
        dateOfBirth, r'GcreateReservationVars', 'dateOfBirth');
  }

  @override
  GcreateReservationVars rebuild(
          void Function(GcreateReservationVarsBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GcreateReservationVarsBuilder toBuilder() =>
      new GcreateReservationVarsBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GcreateReservationVars &&
        listId == other.listId &&
        checkIn == other.checkIn &&
        checkOut == other.checkOut &&
        guests == other.guests &&
        message == other.message &&
        basePrice == other.basePrice &&
        delivery == other.delivery &&
        currency == other.currency &&
        discount == other.discount &&
        discountType == other.discountType &&
        guestServiceFee == other.guestServiceFee &&
        hostServiceFee == other.hostServiceFee &&
        total == other.total &&
        bookingType == other.bookingType &&
        cardToken == other.cardToken &&
        paymentType == other.paymentType &&
        averagePrice == other.averagePrice &&
        days == other.days &&
        startTime == other.startTime &&
        endTime == other.endTime &&
        licenseNumber == other.licenseNumber &&
        firstName == other.firstName &&
        middleName == other.middleName &&
        lastName == other.lastName &&
        dateOfBirth == other.dateOfBirth &&
        countryCode == other.countryCode &&
        isDeliveryIncluded == other.isDeliveryIncluded &&
        paymentCurrency == other.paymentCurrency &&
        promoCode == other.promoCode;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, listId.hashCode);
    _$hash = $jc(_$hash, checkIn.hashCode);
    _$hash = $jc(_$hash, checkOut.hashCode);
    _$hash = $jc(_$hash, guests.hashCode);
    _$hash = $jc(_$hash, message.hashCode);
    _$hash = $jc(_$hash, basePrice.hashCode);
    _$hash = $jc(_$hash, delivery.hashCode);
    _$hash = $jc(_$hash, currency.hashCode);
    _$hash = $jc(_$hash, discount.hashCode);
    _$hash = $jc(_$hash, discountType.hashCode);
    _$hash = $jc(_$hash, guestServiceFee.hashCode);
    _$hash = $jc(_$hash, hostServiceFee.hashCode);
    _$hash = $jc(_$hash, total.hashCode);
    _$hash = $jc(_$hash, bookingType.hashCode);
    _$hash = $jc(_$hash, cardToken.hashCode);
    _$hash = $jc(_$hash, paymentType.hashCode);
    _$hash = $jc(_$hash, averagePrice.hashCode);
    _$hash = $jc(_$hash, days.hashCode);
    _$hash = $jc(_$hash, startTime.hashCode);
    _$hash = $jc(_$hash, endTime.hashCode);
    _$hash = $jc(_$hash, licenseNumber.hashCode);
    _$hash = $jc(_$hash, firstName.hashCode);
    _$hash = $jc(_$hash, middleName.hashCode);
    _$hash = $jc(_$hash, lastName.hashCode);
    _$hash = $jc(_$hash, dateOfBirth.hashCode);
    _$hash = $jc(_$hash, countryCode.hashCode);
    _$hash = $jc(_$hash, isDeliveryIncluded.hashCode);
    _$hash = $jc(_$hash, paymentCurrency.hashCode);
    _$hash = $jc(_$hash, promoCode.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'GcreateReservationVars')
          ..add('listId', listId)
          ..add('checkIn', checkIn)
          ..add('checkOut', checkOut)
          ..add('guests', guests)
          ..add('message', message)
          ..add('basePrice', basePrice)
          ..add('delivery', delivery)
          ..add('currency', currency)
          ..add('discount', discount)
          ..add('discountType', discountType)
          ..add('guestServiceFee', guestServiceFee)
          ..add('hostServiceFee', hostServiceFee)
          ..add('total', total)
          ..add('bookingType', bookingType)
          ..add('cardToken', cardToken)
          ..add('paymentType', paymentType)
          ..add('averagePrice', averagePrice)
          ..add('days', days)
          ..add('startTime', startTime)
          ..add('endTime', endTime)
          ..add('licenseNumber', licenseNumber)
          ..add('firstName', firstName)
          ..add('middleName', middleName)
          ..add('lastName', lastName)
          ..add('dateOfBirth', dateOfBirth)
          ..add('countryCode', countryCode)
          ..add('isDeliveryIncluded', isDeliveryIncluded)
          ..add('paymentCurrency', paymentCurrency)
          ..add('promoCode', promoCode))
        .toString();
  }
}

class GcreateReservationVarsBuilder
    implements Builder<GcreateReservationVars, GcreateReservationVarsBuilder> {
  _$GcreateReservationVars? _$v;

  int? _listId;
  int? get listId => _$this._listId;
  set listId(int? listId) => _$this._listId = listId;

  String? _checkIn;
  String? get checkIn => _$this._checkIn;
  set checkIn(String? checkIn) => _$this._checkIn = checkIn;

  String? _checkOut;
  String? get checkOut => _$this._checkOut;
  set checkOut(String? checkOut) => _$this._checkOut = checkOut;

  int? _guests;
  int? get guests => _$this._guests;
  set guests(int? guests) => _$this._guests = guests;

  String? _message;
  String? get message => _$this._message;
  set message(String? message) => _$this._message = message;

  double? _basePrice;
  double? get basePrice => _$this._basePrice;
  set basePrice(double? basePrice) => _$this._basePrice = basePrice;

  double? _delivery;
  double? get delivery => _$this._delivery;
  set delivery(double? delivery) => _$this._delivery = delivery;

  String? _currency;
  String? get currency => _$this._currency;
  set currency(String? currency) => _$this._currency = currency;

  double? _discount;
  double? get discount => _$this._discount;
  set discount(double? discount) => _$this._discount = discount;

  String? _discountType;
  String? get discountType => _$this._discountType;
  set discountType(String? discountType) => _$this._discountType = discountType;

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

  String? _bookingType;
  String? get bookingType => _$this._bookingType;
  set bookingType(String? bookingType) => _$this._bookingType = bookingType;

  String? _cardToken;
  String? get cardToken => _$this._cardToken;
  set cardToken(String? cardToken) => _$this._cardToken = cardToken;

  int? _paymentType;
  int? get paymentType => _$this._paymentType;
  set paymentType(int? paymentType) => _$this._paymentType = paymentType;

  double? _averagePrice;
  double? get averagePrice => _$this._averagePrice;
  set averagePrice(double? averagePrice) => _$this._averagePrice = averagePrice;

  int? _days;
  int? get days => _$this._days;
  set days(int? days) => _$this._days = days;

  double? _startTime;
  double? get startTime => _$this._startTime;
  set startTime(double? startTime) => _$this._startTime = startTime;

  double? _endTime;
  double? get endTime => _$this._endTime;
  set endTime(double? endTime) => _$this._endTime = endTime;

  String? _licenseNumber;
  String? get licenseNumber => _$this._licenseNumber;
  set licenseNumber(String? licenseNumber) =>
      _$this._licenseNumber = licenseNumber;

  String? _firstName;
  String? get firstName => _$this._firstName;
  set firstName(String? firstName) => _$this._firstName = firstName;

  String? _middleName;
  String? get middleName => _$this._middleName;
  set middleName(String? middleName) => _$this._middleName = middleName;

  String? _lastName;
  String? get lastName => _$this._lastName;
  set lastName(String? lastName) => _$this._lastName = lastName;

  String? _dateOfBirth;
  String? get dateOfBirth => _$this._dateOfBirth;
  set dateOfBirth(String? dateOfBirth) => _$this._dateOfBirth = dateOfBirth;

  String? _countryCode;
  String? get countryCode => _$this._countryCode;
  set countryCode(String? countryCode) => _$this._countryCode = countryCode;

  bool? _isDeliveryIncluded;
  bool? get isDeliveryIncluded => _$this._isDeliveryIncluded;
  set isDeliveryIncluded(bool? isDeliveryIncluded) =>
      _$this._isDeliveryIncluded = isDeliveryIncluded;

  String? _paymentCurrency;
  String? get paymentCurrency => _$this._paymentCurrency;
  set paymentCurrency(String? paymentCurrency) =>
      _$this._paymentCurrency = paymentCurrency;

  String? _promoCode;
  String? get promoCode => _$this._promoCode;
  set promoCode(String? promoCode) => _$this._promoCode = promoCode;

  GcreateReservationVarsBuilder();

  GcreateReservationVarsBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _listId = $v.listId;
      _checkIn = $v.checkIn;
      _checkOut = $v.checkOut;
      _guests = $v.guests;
      _message = $v.message;
      _basePrice = $v.basePrice;
      _delivery = $v.delivery;
      _currency = $v.currency;
      _discount = $v.discount;
      _discountType = $v.discountType;
      _guestServiceFee = $v.guestServiceFee;
      _hostServiceFee = $v.hostServiceFee;
      _total = $v.total;
      _bookingType = $v.bookingType;
      _cardToken = $v.cardToken;
      _paymentType = $v.paymentType;
      _averagePrice = $v.averagePrice;
      _days = $v.days;
      _startTime = $v.startTime;
      _endTime = $v.endTime;
      _licenseNumber = $v.licenseNumber;
      _firstName = $v.firstName;
      _middleName = $v.middleName;
      _lastName = $v.lastName;
      _dateOfBirth = $v.dateOfBirth;
      _countryCode = $v.countryCode;
      _isDeliveryIncluded = $v.isDeliveryIncluded;
      _paymentCurrency = $v.paymentCurrency;
      _promoCode = $v.promoCode;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GcreateReservationVars other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GcreateReservationVars;
  }

  @override
  void update(void Function(GcreateReservationVarsBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GcreateReservationVars build() => _build();

  _$GcreateReservationVars _build() {
    final _$result = _$v ??
        new _$GcreateReservationVars._(
            listId: BuiltValueNullFieldError.checkNotNull(
                listId, r'GcreateReservationVars', 'listId'),
            checkIn: BuiltValueNullFieldError.checkNotNull(
                checkIn, r'GcreateReservationVars', 'checkIn'),
            checkOut: BuiltValueNullFieldError.checkNotNull(
                checkOut, r'GcreateReservationVars', 'checkOut'),
            guests: BuiltValueNullFieldError.checkNotNull(
                guests, r'GcreateReservationVars', 'guests'),
            message: BuiltValueNullFieldError.checkNotNull(
                message, r'GcreateReservationVars', 'message'),
            basePrice: BuiltValueNullFieldError.checkNotNull(
                basePrice, r'GcreateReservationVars', 'basePrice'),
            delivery: BuiltValueNullFieldError.checkNotNull(
                delivery, r'GcreateReservationVars', 'delivery'),
            currency: BuiltValueNullFieldError.checkNotNull(
                currency, r'GcreateReservationVars', 'currency'),
            discount: discount,
            discountType: discountType,
            guestServiceFee: guestServiceFee,
            hostServiceFee: hostServiceFee,
            total:
                BuiltValueNullFieldError.checkNotNull(total, r'GcreateReservationVars', 'total'),
            bookingType: bookingType,
            cardToken: cardToken,
            paymentType: paymentType,
            averagePrice: averagePrice,
            days: days,
            startTime: startTime,
            endTime: endTime,
            licenseNumber: BuiltValueNullFieldError.checkNotNull(licenseNumber, r'GcreateReservationVars', 'licenseNumber'),
            firstName: BuiltValueNullFieldError.checkNotNull(firstName, r'GcreateReservationVars', 'firstName'),
            middleName: middleName,
            lastName: BuiltValueNullFieldError.checkNotNull(lastName, r'GcreateReservationVars', 'lastName'),
            dateOfBirth: BuiltValueNullFieldError.checkNotNull(dateOfBirth, r'GcreateReservationVars', 'dateOfBirth'),
            countryCode: countryCode,
            isDeliveryIncluded: isDeliveryIncluded,
            paymentCurrency: paymentCurrency,
            promoCode: promoCode);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
