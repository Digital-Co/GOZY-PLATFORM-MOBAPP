// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'get_billing_calculation.var.gql.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<GgetBillingCalculationVars> _$ggetBillingCalculationVarsSerializer =
    new _$GgetBillingCalculationVarsSerializer();

class _$GgetBillingCalculationVarsSerializer
    implements StructuredSerializer<GgetBillingCalculationVars> {
  @override
  final Iterable<Type> types = const [
    GgetBillingCalculationVars,
    _$GgetBillingCalculationVars
  ];
  @override
  final String wireName = 'GgetBillingCalculationVars';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, GgetBillingCalculationVars object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      'listId',
      serializers.serialize(object.listId, specifiedType: const FullType(int)),
      'startDate',
      serializers.serialize(object.startDate,
          specifiedType: const FullType(String)),
      'endDate',
      serializers.serialize(object.endDate,
          specifiedType: const FullType(String)),
      'guests',
      serializers.serialize(object.guests, specifiedType: const FullType(int)),
      'convertCurrency',
      serializers.serialize(object.convertCurrency,
          specifiedType: const FullType(String)),
    ];
    Object? value;
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
    value = object.isDeliveryIncluded;
    if (value != null) {
      result
        ..add('isDeliveryIncluded')
        ..add(
            serializers.serialize(value, specifiedType: const FullType(bool)));
    }
    value = object.userId;
    if (value != null) {
      result
        ..add('userId')
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
  GgetBillingCalculationVars deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GgetBillingCalculationVarsBuilder();

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
        case 'startDate':
          result.startDate = serializers.deserialize(value,
              specifiedType: const FullType(String))! as String;
          break;
        case 'endDate':
          result.endDate = serializers.deserialize(value,
              specifiedType: const FullType(String))! as String;
          break;
        case 'guests':
          result.guests = serializers.deserialize(value,
              specifiedType: const FullType(int))! as int;
          break;
        case 'convertCurrency':
          result.convertCurrency = serializers.deserialize(value,
              specifiedType: const FullType(String))! as String;
          break;
        case 'startTime':
          result.startTime = serializers.deserialize(value,
              specifiedType: const FullType(double)) as double?;
          break;
        case 'endTime':
          result.endTime = serializers.deserialize(value,
              specifiedType: const FullType(double)) as double?;
          break;
        case 'isDeliveryIncluded':
          result.isDeliveryIncluded = serializers.deserialize(value,
              specifiedType: const FullType(bool)) as bool?;
          break;
        case 'userId':
          result.userId = serializers.deserialize(value,
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

class _$GgetBillingCalculationVars extends GgetBillingCalculationVars {
  @override
  final int listId;
  @override
  final String startDate;
  @override
  final String endDate;
  @override
  final int guests;
  @override
  final String convertCurrency;
  @override
  final double? startTime;
  @override
  final double? endTime;
  @override
  final bool? isDeliveryIncluded;
  @override
  final String? userId;
  @override
  final String? promoCode;

  factory _$GgetBillingCalculationVars(
          [void Function(GgetBillingCalculationVarsBuilder)? updates]) =>
      (new GgetBillingCalculationVarsBuilder()..update(updates))._build();

  _$GgetBillingCalculationVars._(
      {required this.listId,
      required this.startDate,
      required this.endDate,
      required this.guests,
      required this.convertCurrency,
      this.startTime,
      this.endTime,
      this.isDeliveryIncluded,
      this.userId,
      this.promoCode})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        listId, r'GgetBillingCalculationVars', 'listId');
    BuiltValueNullFieldError.checkNotNull(
        startDate, r'GgetBillingCalculationVars', 'startDate');
    BuiltValueNullFieldError.checkNotNull(
        endDate, r'GgetBillingCalculationVars', 'endDate');
    BuiltValueNullFieldError.checkNotNull(
        guests, r'GgetBillingCalculationVars', 'guests');
    BuiltValueNullFieldError.checkNotNull(
        convertCurrency, r'GgetBillingCalculationVars', 'convertCurrency');
  }

  @override
  GgetBillingCalculationVars rebuild(
          void Function(GgetBillingCalculationVarsBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GgetBillingCalculationVarsBuilder toBuilder() =>
      new GgetBillingCalculationVarsBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GgetBillingCalculationVars &&
        listId == other.listId &&
        startDate == other.startDate &&
        endDate == other.endDate &&
        guests == other.guests &&
        convertCurrency == other.convertCurrency &&
        startTime == other.startTime &&
        endTime == other.endTime &&
        isDeliveryIncluded == other.isDeliveryIncluded &&
        userId == other.userId &&
        promoCode == other.promoCode;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, listId.hashCode);
    _$hash = $jc(_$hash, startDate.hashCode);
    _$hash = $jc(_$hash, endDate.hashCode);
    _$hash = $jc(_$hash, guests.hashCode);
    _$hash = $jc(_$hash, convertCurrency.hashCode);
    _$hash = $jc(_$hash, startTime.hashCode);
    _$hash = $jc(_$hash, endTime.hashCode);
    _$hash = $jc(_$hash, isDeliveryIncluded.hashCode);
    _$hash = $jc(_$hash, userId.hashCode);
    _$hash = $jc(_$hash, promoCode.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'GgetBillingCalculationVars')
          ..add('listId', listId)
          ..add('startDate', startDate)
          ..add('endDate', endDate)
          ..add('guests', guests)
          ..add('convertCurrency', convertCurrency)
          ..add('startTime', startTime)
          ..add('endTime', endTime)
          ..add('isDeliveryIncluded', isDeliveryIncluded)
          ..add('userId', userId)
          ..add('promoCode', promoCode))
        .toString();
  }
}

class GgetBillingCalculationVarsBuilder
    implements
        Builder<GgetBillingCalculationVars, GgetBillingCalculationVarsBuilder> {
  _$GgetBillingCalculationVars? _$v;

  int? _listId;
  int? get listId => _$this._listId;
  set listId(int? listId) => _$this._listId = listId;

  String? _startDate;
  String? get startDate => _$this._startDate;
  set startDate(String? startDate) => _$this._startDate = startDate;

  String? _endDate;
  String? get endDate => _$this._endDate;
  set endDate(String? endDate) => _$this._endDate = endDate;

  int? _guests;
  int? get guests => _$this._guests;
  set guests(int? guests) => _$this._guests = guests;

  String? _convertCurrency;
  String? get convertCurrency => _$this._convertCurrency;
  set convertCurrency(String? convertCurrency) =>
      _$this._convertCurrency = convertCurrency;

  double? _startTime;
  double? get startTime => _$this._startTime;
  set startTime(double? startTime) => _$this._startTime = startTime;

  double? _endTime;
  double? get endTime => _$this._endTime;
  set endTime(double? endTime) => _$this._endTime = endTime;

  bool? _isDeliveryIncluded;
  bool? get isDeliveryIncluded => _$this._isDeliveryIncluded;
  set isDeliveryIncluded(bool? isDeliveryIncluded) =>
      _$this._isDeliveryIncluded = isDeliveryIncluded;

  String? _userId;
  String? get userId => _$this._userId;
  set userId(String? userId) => _$this._userId = userId;

  String? _promoCode;
  String? get promoCode => _$this._promoCode;
  set promoCode(String? promoCode) => _$this._promoCode = promoCode;

  GgetBillingCalculationVarsBuilder();

  GgetBillingCalculationVarsBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _listId = $v.listId;
      _startDate = $v.startDate;
      _endDate = $v.endDate;
      _guests = $v.guests;
      _convertCurrency = $v.convertCurrency;
      _startTime = $v.startTime;
      _endTime = $v.endTime;
      _isDeliveryIncluded = $v.isDeliveryIncluded;
      _userId = $v.userId;
      _promoCode = $v.promoCode;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GgetBillingCalculationVars other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GgetBillingCalculationVars;
  }

  @override
  void update(void Function(GgetBillingCalculationVarsBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GgetBillingCalculationVars build() => _build();

  _$GgetBillingCalculationVars _build() {
    final _$result = _$v ??
        new _$GgetBillingCalculationVars._(
            listId: BuiltValueNullFieldError.checkNotNull(
                listId, r'GgetBillingCalculationVars', 'listId'),
            startDate: BuiltValueNullFieldError.checkNotNull(
                startDate, r'GgetBillingCalculationVars', 'startDate'),
            endDate: BuiltValueNullFieldError.checkNotNull(
                endDate, r'GgetBillingCalculationVars', 'endDate'),
            guests: BuiltValueNullFieldError.checkNotNull(
                guests, r'GgetBillingCalculationVars', 'guests'),
            convertCurrency: BuiltValueNullFieldError.checkNotNull(
                convertCurrency,
                r'GgetBillingCalculationVars',
                'convertCurrency'),
            startTime: startTime,
            endTime: endTime,
            isDeliveryIncluded: isDeliveryIncluded,
            userId: userId,
            promoCode: promoCode);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
