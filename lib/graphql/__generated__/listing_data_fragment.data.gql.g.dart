// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'listing_data_fragment.data.gql.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<GlistingDataFragmentData> _$glistingDataFragmentDataSerializer =
    new _$GlistingDataFragmentDataSerializer();
Serializer<GlistingDataFragmentData_cancellation>
    _$glistingDataFragmentDataCancellationSerializer =
    new _$GlistingDataFragmentData_cancellationSerializer();
Serializer<GcancellationDataFragmentData>
    _$gcancellationDataFragmentDataSerializer =
    new _$GcancellationDataFragmentDataSerializer();

class _$GlistingDataFragmentDataSerializer
    implements StructuredSerializer<GlistingDataFragmentData> {
  @override
  final Iterable<Type> types = const [
    GlistingDataFragmentData,
    _$GlistingDataFragmentData
  ];
  @override
  final String wireName = 'GlistingDataFragmentData';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, GlistingDataFragmentData object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      '__typename',
      serializers.serialize(object.G__typename,
          specifiedType: const FullType(String)),
    ];
    Object? value;
    value = object.bookingNoticeTime;
    if (value != null) {
      result
        ..add('bookingNoticeTime')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.checkInStart;
    if (value != null) {
      result
        ..add('checkInStart')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.checkInEnd;
    if (value != null) {
      result
        ..add('checkInEnd')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.maxDaysNotice;
    if (value != null) {
      result
        ..add('maxDaysNotice')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.minDay;
    if (value != null) {
      result
        ..add('minDay')
        ..add(serializers.serialize(value, specifiedType: const FullType(int)));
    }
    value = object.maxDay;
    if (value != null) {
      result
        ..add('maxDay')
        ..add(serializers.serialize(value, specifiedType: const FullType(int)));
    }
    value = object.maxDayItemLabel;
    if (value != null) {
      result
        ..add('maxDayItemLabel')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.maxDayOtherItemLabel;
    if (value != null) {
      result
        ..add('maxDayOtherItemLabel')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.minDayItemLabel;
    if (value != null) {
      result
        ..add('minDayItemLabel')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.minDayOtherItemLabel;
    if (value != null) {
      result
        ..add('minDayOtherItemLabel')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.basePrice;
    if (value != null) {
      result
        ..add('basePrice')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(double)));
    }
    value = object.delivery;
    if (value != null) {
      result
        ..add('delivery')
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
    value = object.weeklyDiscount;
    if (value != null) {
      result
        ..add('weeklyDiscount')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(double)));
    }
    value = object.monthlyDiscount;
    if (value != null) {
      result
        ..add('monthlyDiscount')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(double)));
    }
    value = object.cancellationPolicy;
    if (value != null) {
      result
        ..add('cancellationPolicy')
        ..add(serializers.serialize(value, specifiedType: const FullType(int)));
    }
    value = object.securityDeposit;
    if (value != null) {
      result
        ..add('securityDeposit')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(double)));
    }
    value = object.cancellation;
    if (value != null) {
      result
        ..add('cancellation')
        ..add(serializers.serialize(value,
            specifiedType:
                const FullType(GlistingDataFragmentData_cancellation)));
    }
    return result;
  }

  @override
  GlistingDataFragmentData deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GlistingDataFragmentDataBuilder();

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
        case 'bookingNoticeTime':
          result.bookingNoticeTime = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'checkInStart':
          result.checkInStart = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'checkInEnd':
          result.checkInEnd = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'maxDaysNotice':
          result.maxDaysNotice = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'minDay':
          result.minDay = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int?;
          break;
        case 'maxDay':
          result.maxDay = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int?;
          break;
        case 'maxDayItemLabel':
          result.maxDayItemLabel = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'maxDayOtherItemLabel':
          result.maxDayOtherItemLabel = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'minDayItemLabel':
          result.minDayItemLabel = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'minDayOtherItemLabel':
          result.minDayOtherItemLabel = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'basePrice':
          result.basePrice = serializers.deserialize(value,
              specifiedType: const FullType(double)) as double?;
          break;
        case 'delivery':
          result.delivery = serializers.deserialize(value,
              specifiedType: const FullType(double)) as double?;
          break;
        case 'currency':
          result.currency = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'weeklyDiscount':
          result.weeklyDiscount = serializers.deserialize(value,
              specifiedType: const FullType(double)) as double?;
          break;
        case 'monthlyDiscount':
          result.monthlyDiscount = serializers.deserialize(value,
              specifiedType: const FullType(double)) as double?;
          break;
        case 'cancellationPolicy':
          result.cancellationPolicy = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int?;
          break;
        case 'securityDeposit':
          result.securityDeposit = serializers.deserialize(value,
              specifiedType: const FullType(double)) as double?;
          break;
        case 'cancellation':
          result.cancellation.replace(serializers.deserialize(value,
                  specifiedType:
                      const FullType(GlistingDataFragmentData_cancellation))!
              as GlistingDataFragmentData_cancellation);
          break;
      }
    }

    return result.build();
  }
}

class _$GlistingDataFragmentData_cancellationSerializer
    implements StructuredSerializer<GlistingDataFragmentData_cancellation> {
  @override
  final Iterable<Type> types = const [
    GlistingDataFragmentData_cancellation,
    _$GlistingDataFragmentData_cancellation
  ];
  @override
  final String wireName = 'GlistingDataFragmentData_cancellation';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, GlistingDataFragmentData_cancellation object,
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
    value = object.policyName;
    if (value != null) {
      result
        ..add('policyName')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.policyContent;
    if (value != null) {
      result
        ..add('policyContent')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.priorDays;
    if (value != null) {
      result
        ..add('priorDays')
        ..add(serializers.serialize(value, specifiedType: const FullType(int)));
    }
    value = object.subTitle;
    if (value != null) {
      result
        ..add('subTitle')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.subContent;
    if (value != null) {
      result
        ..add('subContent')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.content1;
    if (value != null) {
      result
        ..add('content1')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.content2;
    if (value != null) {
      result
        ..add('content2')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.content3;
    if (value != null) {
      result
        ..add('content3')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.accommodationPriorCheckIn;
    if (value != null) {
      result
        ..add('accommodationPriorCheckIn')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(double)));
    }
    value = object.accommodationBeforeCheckIn;
    if (value != null) {
      result
        ..add('accommodationBeforeCheckIn')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(double)));
    }
    value = object.accommodationDuringCheckIn;
    if (value != null) {
      result
        ..add('accommodationDuringCheckIn')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(double)));
    }
    value = object.guestFeePriorCheckIn;
    if (value != null) {
      result
        ..add('guestFeePriorCheckIn')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(double)));
    }
    value = object.guestFeeBeforeCheckIn;
    if (value != null) {
      result
        ..add('guestFeeBeforeCheckIn')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(double)));
    }
    value = object.guestFeeDuringCheckIn;
    if (value != null) {
      result
        ..add('guestFeeDuringCheckIn')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(double)));
    }
    value = object.hostFeePriorCheckIn;
    if (value != null) {
      result
        ..add('hostFeePriorCheckIn')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(double)));
    }
    value = object.hostFeeBeforeCheckIn;
    if (value != null) {
      result
        ..add('hostFeeBeforeCheckIn')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(double)));
    }
    value = object.hostFeeDuringCheckIn;
    if (value != null) {
      result
        ..add('hostFeeDuringCheckIn')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(double)));
    }
    value = object.isEnable;
    if (value != null) {
      result
        ..add('isEnable')
        ..add(
            serializers.serialize(value, specifiedType: const FullType(bool)));
    }
    value = object.status;
    if (value != null) {
      result
        ..add('status')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    return result;
  }

  @override
  GlistingDataFragmentData_cancellation deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GlistingDataFragmentData_cancellationBuilder();

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
        case 'policyName':
          result.policyName = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'policyContent':
          result.policyContent = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'priorDays':
          result.priorDays = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int?;
          break;
        case 'subTitle':
          result.subTitle = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'subContent':
          result.subContent = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'content1':
          result.content1 = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'content2':
          result.content2 = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'content3':
          result.content3 = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'accommodationPriorCheckIn':
          result.accommodationPriorCheckIn = serializers.deserialize(value,
              specifiedType: const FullType(double)) as double?;
          break;
        case 'accommodationBeforeCheckIn':
          result.accommodationBeforeCheckIn = serializers.deserialize(value,
              specifiedType: const FullType(double)) as double?;
          break;
        case 'accommodationDuringCheckIn':
          result.accommodationDuringCheckIn = serializers.deserialize(value,
              specifiedType: const FullType(double)) as double?;
          break;
        case 'guestFeePriorCheckIn':
          result.guestFeePriorCheckIn = serializers.deserialize(value,
              specifiedType: const FullType(double)) as double?;
          break;
        case 'guestFeeBeforeCheckIn':
          result.guestFeeBeforeCheckIn = serializers.deserialize(value,
              specifiedType: const FullType(double)) as double?;
          break;
        case 'guestFeeDuringCheckIn':
          result.guestFeeDuringCheckIn = serializers.deserialize(value,
              specifiedType: const FullType(double)) as double?;
          break;
        case 'hostFeePriorCheckIn':
          result.hostFeePriorCheckIn = serializers.deserialize(value,
              specifiedType: const FullType(double)) as double?;
          break;
        case 'hostFeeBeforeCheckIn':
          result.hostFeeBeforeCheckIn = serializers.deserialize(value,
              specifiedType: const FullType(double)) as double?;
          break;
        case 'hostFeeDuringCheckIn':
          result.hostFeeDuringCheckIn = serializers.deserialize(value,
              specifiedType: const FullType(double)) as double?;
          break;
        case 'isEnable':
          result.isEnable = serializers.deserialize(value,
              specifiedType: const FullType(bool)) as bool?;
          break;
        case 'status':
          result.status = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
      }
    }

    return result.build();
  }
}

class _$GcancellationDataFragmentDataSerializer
    implements StructuredSerializer<GcancellationDataFragmentData> {
  @override
  final Iterable<Type> types = const [
    GcancellationDataFragmentData,
    _$GcancellationDataFragmentData
  ];
  @override
  final String wireName = 'GcancellationDataFragmentData';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, GcancellationDataFragmentData object,
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
    value = object.policyName;
    if (value != null) {
      result
        ..add('policyName')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.policyContent;
    if (value != null) {
      result
        ..add('policyContent')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.priorDays;
    if (value != null) {
      result
        ..add('priorDays')
        ..add(serializers.serialize(value, specifiedType: const FullType(int)));
    }
    value = object.subTitle;
    if (value != null) {
      result
        ..add('subTitle')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.subContent;
    if (value != null) {
      result
        ..add('subContent')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.content1;
    if (value != null) {
      result
        ..add('content1')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.content2;
    if (value != null) {
      result
        ..add('content2')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.content3;
    if (value != null) {
      result
        ..add('content3')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.accommodationPriorCheckIn;
    if (value != null) {
      result
        ..add('accommodationPriorCheckIn')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(double)));
    }
    value = object.accommodationBeforeCheckIn;
    if (value != null) {
      result
        ..add('accommodationBeforeCheckIn')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(double)));
    }
    value = object.accommodationDuringCheckIn;
    if (value != null) {
      result
        ..add('accommodationDuringCheckIn')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(double)));
    }
    value = object.guestFeePriorCheckIn;
    if (value != null) {
      result
        ..add('guestFeePriorCheckIn')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(double)));
    }
    value = object.guestFeeBeforeCheckIn;
    if (value != null) {
      result
        ..add('guestFeeBeforeCheckIn')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(double)));
    }
    value = object.guestFeeDuringCheckIn;
    if (value != null) {
      result
        ..add('guestFeeDuringCheckIn')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(double)));
    }
    value = object.hostFeePriorCheckIn;
    if (value != null) {
      result
        ..add('hostFeePriorCheckIn')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(double)));
    }
    value = object.hostFeeBeforeCheckIn;
    if (value != null) {
      result
        ..add('hostFeeBeforeCheckIn')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(double)));
    }
    value = object.hostFeeDuringCheckIn;
    if (value != null) {
      result
        ..add('hostFeeDuringCheckIn')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(double)));
    }
    value = object.isEnable;
    if (value != null) {
      result
        ..add('isEnable')
        ..add(
            serializers.serialize(value, specifiedType: const FullType(bool)));
    }
    value = object.status;
    if (value != null) {
      result
        ..add('status')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    return result;
  }

  @override
  GcancellationDataFragmentData deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GcancellationDataFragmentDataBuilder();

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
        case 'policyName':
          result.policyName = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'policyContent':
          result.policyContent = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'priorDays':
          result.priorDays = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int?;
          break;
        case 'subTitle':
          result.subTitle = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'subContent':
          result.subContent = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'content1':
          result.content1 = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'content2':
          result.content2 = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'content3':
          result.content3 = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'accommodationPriorCheckIn':
          result.accommodationPriorCheckIn = serializers.deserialize(value,
              specifiedType: const FullType(double)) as double?;
          break;
        case 'accommodationBeforeCheckIn':
          result.accommodationBeforeCheckIn = serializers.deserialize(value,
              specifiedType: const FullType(double)) as double?;
          break;
        case 'accommodationDuringCheckIn':
          result.accommodationDuringCheckIn = serializers.deserialize(value,
              specifiedType: const FullType(double)) as double?;
          break;
        case 'guestFeePriorCheckIn':
          result.guestFeePriorCheckIn = serializers.deserialize(value,
              specifiedType: const FullType(double)) as double?;
          break;
        case 'guestFeeBeforeCheckIn':
          result.guestFeeBeforeCheckIn = serializers.deserialize(value,
              specifiedType: const FullType(double)) as double?;
          break;
        case 'guestFeeDuringCheckIn':
          result.guestFeeDuringCheckIn = serializers.deserialize(value,
              specifiedType: const FullType(double)) as double?;
          break;
        case 'hostFeePriorCheckIn':
          result.hostFeePriorCheckIn = serializers.deserialize(value,
              specifiedType: const FullType(double)) as double?;
          break;
        case 'hostFeeBeforeCheckIn':
          result.hostFeeBeforeCheckIn = serializers.deserialize(value,
              specifiedType: const FullType(double)) as double?;
          break;
        case 'hostFeeDuringCheckIn':
          result.hostFeeDuringCheckIn = serializers.deserialize(value,
              specifiedType: const FullType(double)) as double?;
          break;
        case 'isEnable':
          result.isEnable = serializers.deserialize(value,
              specifiedType: const FullType(bool)) as bool?;
          break;
        case 'status':
          result.status = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
      }
    }

    return result.build();
  }
}

class _$GlistingDataFragmentData extends GlistingDataFragmentData {
  @override
  final String G__typename;
  @override
  final String? bookingNoticeTime;
  @override
  final String? checkInStart;
  @override
  final String? checkInEnd;
  @override
  final String? maxDaysNotice;
  @override
  final int? minDay;
  @override
  final int? maxDay;
  @override
  final String? maxDayItemLabel;
  @override
  final String? maxDayOtherItemLabel;
  @override
  final String? minDayItemLabel;
  @override
  final String? minDayOtherItemLabel;
  @override
  final double? basePrice;
  @override
  final double? delivery;
  @override
  final String? currency;
  @override
  final double? weeklyDiscount;
  @override
  final double? monthlyDiscount;
  @override
  final int? cancellationPolicy;
  @override
  final double? securityDeposit;
  @override
  final GlistingDataFragmentData_cancellation? cancellation;

  factory _$GlistingDataFragmentData(
          [void Function(GlistingDataFragmentDataBuilder)? updates]) =>
      (new GlistingDataFragmentDataBuilder()..update(updates))._build();

  _$GlistingDataFragmentData._(
      {required this.G__typename,
      this.bookingNoticeTime,
      this.checkInStart,
      this.checkInEnd,
      this.maxDaysNotice,
      this.minDay,
      this.maxDay,
      this.maxDayItemLabel,
      this.maxDayOtherItemLabel,
      this.minDayItemLabel,
      this.minDayOtherItemLabel,
      this.basePrice,
      this.delivery,
      this.currency,
      this.weeklyDiscount,
      this.monthlyDiscount,
      this.cancellationPolicy,
      this.securityDeposit,
      this.cancellation})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        G__typename, r'GlistingDataFragmentData', 'G__typename');
  }

  @override
  GlistingDataFragmentData rebuild(
          void Function(GlistingDataFragmentDataBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GlistingDataFragmentDataBuilder toBuilder() =>
      new GlistingDataFragmentDataBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GlistingDataFragmentData &&
        G__typename == other.G__typename &&
        bookingNoticeTime == other.bookingNoticeTime &&
        checkInStart == other.checkInStart &&
        checkInEnd == other.checkInEnd &&
        maxDaysNotice == other.maxDaysNotice &&
        minDay == other.minDay &&
        maxDay == other.maxDay &&
        maxDayItemLabel == other.maxDayItemLabel &&
        maxDayOtherItemLabel == other.maxDayOtherItemLabel &&
        minDayItemLabel == other.minDayItemLabel &&
        minDayOtherItemLabel == other.minDayOtherItemLabel &&
        basePrice == other.basePrice &&
        delivery == other.delivery &&
        currency == other.currency &&
        weeklyDiscount == other.weeklyDiscount &&
        monthlyDiscount == other.monthlyDiscount &&
        cancellationPolicy == other.cancellationPolicy &&
        securityDeposit == other.securityDeposit &&
        cancellation == other.cancellation;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, G__typename.hashCode);
    _$hash = $jc(_$hash, bookingNoticeTime.hashCode);
    _$hash = $jc(_$hash, checkInStart.hashCode);
    _$hash = $jc(_$hash, checkInEnd.hashCode);
    _$hash = $jc(_$hash, maxDaysNotice.hashCode);
    _$hash = $jc(_$hash, minDay.hashCode);
    _$hash = $jc(_$hash, maxDay.hashCode);
    _$hash = $jc(_$hash, maxDayItemLabel.hashCode);
    _$hash = $jc(_$hash, maxDayOtherItemLabel.hashCode);
    _$hash = $jc(_$hash, minDayItemLabel.hashCode);
    _$hash = $jc(_$hash, minDayOtherItemLabel.hashCode);
    _$hash = $jc(_$hash, basePrice.hashCode);
    _$hash = $jc(_$hash, delivery.hashCode);
    _$hash = $jc(_$hash, currency.hashCode);
    _$hash = $jc(_$hash, weeklyDiscount.hashCode);
    _$hash = $jc(_$hash, monthlyDiscount.hashCode);
    _$hash = $jc(_$hash, cancellationPolicy.hashCode);
    _$hash = $jc(_$hash, securityDeposit.hashCode);
    _$hash = $jc(_$hash, cancellation.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'GlistingDataFragmentData')
          ..add('G__typename', G__typename)
          ..add('bookingNoticeTime', bookingNoticeTime)
          ..add('checkInStart', checkInStart)
          ..add('checkInEnd', checkInEnd)
          ..add('maxDaysNotice', maxDaysNotice)
          ..add('minDay', minDay)
          ..add('maxDay', maxDay)
          ..add('maxDayItemLabel', maxDayItemLabel)
          ..add('maxDayOtherItemLabel', maxDayOtherItemLabel)
          ..add('minDayItemLabel', minDayItemLabel)
          ..add('minDayOtherItemLabel', minDayOtherItemLabel)
          ..add('basePrice', basePrice)
          ..add('delivery', delivery)
          ..add('currency', currency)
          ..add('weeklyDiscount', weeklyDiscount)
          ..add('monthlyDiscount', monthlyDiscount)
          ..add('cancellationPolicy', cancellationPolicy)
          ..add('securityDeposit', securityDeposit)
          ..add('cancellation', cancellation))
        .toString();
  }
}

class GlistingDataFragmentDataBuilder
    implements
        Builder<GlistingDataFragmentData, GlistingDataFragmentDataBuilder> {
  _$GlistingDataFragmentData? _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  String? _bookingNoticeTime;
  String? get bookingNoticeTime => _$this._bookingNoticeTime;
  set bookingNoticeTime(String? bookingNoticeTime) =>
      _$this._bookingNoticeTime = bookingNoticeTime;

  String? _checkInStart;
  String? get checkInStart => _$this._checkInStart;
  set checkInStart(String? checkInStart) => _$this._checkInStart = checkInStart;

  String? _checkInEnd;
  String? get checkInEnd => _$this._checkInEnd;
  set checkInEnd(String? checkInEnd) => _$this._checkInEnd = checkInEnd;

  String? _maxDaysNotice;
  String? get maxDaysNotice => _$this._maxDaysNotice;
  set maxDaysNotice(String? maxDaysNotice) =>
      _$this._maxDaysNotice = maxDaysNotice;

  int? _minDay;
  int? get minDay => _$this._minDay;
  set minDay(int? minDay) => _$this._minDay = minDay;

  int? _maxDay;
  int? get maxDay => _$this._maxDay;
  set maxDay(int? maxDay) => _$this._maxDay = maxDay;

  String? _maxDayItemLabel;
  String? get maxDayItemLabel => _$this._maxDayItemLabel;
  set maxDayItemLabel(String? maxDayItemLabel) =>
      _$this._maxDayItemLabel = maxDayItemLabel;

  String? _maxDayOtherItemLabel;
  String? get maxDayOtherItemLabel => _$this._maxDayOtherItemLabel;
  set maxDayOtherItemLabel(String? maxDayOtherItemLabel) =>
      _$this._maxDayOtherItemLabel = maxDayOtherItemLabel;

  String? _minDayItemLabel;
  String? get minDayItemLabel => _$this._minDayItemLabel;
  set minDayItemLabel(String? minDayItemLabel) =>
      _$this._minDayItemLabel = minDayItemLabel;

  String? _minDayOtherItemLabel;
  String? get minDayOtherItemLabel => _$this._minDayOtherItemLabel;
  set minDayOtherItemLabel(String? minDayOtherItemLabel) =>
      _$this._minDayOtherItemLabel = minDayOtherItemLabel;

  double? _basePrice;
  double? get basePrice => _$this._basePrice;
  set basePrice(double? basePrice) => _$this._basePrice = basePrice;

  double? _delivery;
  double? get delivery => _$this._delivery;
  set delivery(double? delivery) => _$this._delivery = delivery;

  String? _currency;
  String? get currency => _$this._currency;
  set currency(String? currency) => _$this._currency = currency;

  double? _weeklyDiscount;
  double? get weeklyDiscount => _$this._weeklyDiscount;
  set weeklyDiscount(double? weeklyDiscount) =>
      _$this._weeklyDiscount = weeklyDiscount;

  double? _monthlyDiscount;
  double? get monthlyDiscount => _$this._monthlyDiscount;
  set monthlyDiscount(double? monthlyDiscount) =>
      _$this._monthlyDiscount = monthlyDiscount;

  int? _cancellationPolicy;
  int? get cancellationPolicy => _$this._cancellationPolicy;
  set cancellationPolicy(int? cancellationPolicy) =>
      _$this._cancellationPolicy = cancellationPolicy;

  double? _securityDeposit;
  double? get securityDeposit => _$this._securityDeposit;
  set securityDeposit(double? securityDeposit) =>
      _$this._securityDeposit = securityDeposit;

  GlistingDataFragmentData_cancellationBuilder? _cancellation;
  GlistingDataFragmentData_cancellationBuilder get cancellation =>
      _$this._cancellation ??=
          new GlistingDataFragmentData_cancellationBuilder();
  set cancellation(
          GlistingDataFragmentData_cancellationBuilder? cancellation) =>
      _$this._cancellation = cancellation;

  GlistingDataFragmentDataBuilder() {
    GlistingDataFragmentData._initializeBuilder(this);
  }

  GlistingDataFragmentDataBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _G__typename = $v.G__typename;
      _bookingNoticeTime = $v.bookingNoticeTime;
      _checkInStart = $v.checkInStart;
      _checkInEnd = $v.checkInEnd;
      _maxDaysNotice = $v.maxDaysNotice;
      _minDay = $v.minDay;
      _maxDay = $v.maxDay;
      _maxDayItemLabel = $v.maxDayItemLabel;
      _maxDayOtherItemLabel = $v.maxDayOtherItemLabel;
      _minDayItemLabel = $v.minDayItemLabel;
      _minDayOtherItemLabel = $v.minDayOtherItemLabel;
      _basePrice = $v.basePrice;
      _delivery = $v.delivery;
      _currency = $v.currency;
      _weeklyDiscount = $v.weeklyDiscount;
      _monthlyDiscount = $v.monthlyDiscount;
      _cancellationPolicy = $v.cancellationPolicy;
      _securityDeposit = $v.securityDeposit;
      _cancellation = $v.cancellation?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GlistingDataFragmentData other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GlistingDataFragmentData;
  }

  @override
  void update(void Function(GlistingDataFragmentDataBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GlistingDataFragmentData build() => _build();

  _$GlistingDataFragmentData _build() {
    _$GlistingDataFragmentData _$result;
    try {
      _$result = _$v ??
          new _$GlistingDataFragmentData._(
              G__typename: BuiltValueNullFieldError.checkNotNull(
                  G__typename, r'GlistingDataFragmentData', 'G__typename'),
              bookingNoticeTime: bookingNoticeTime,
              checkInStart: checkInStart,
              checkInEnd: checkInEnd,
              maxDaysNotice: maxDaysNotice,
              minDay: minDay,
              maxDay: maxDay,
              maxDayItemLabel: maxDayItemLabel,
              maxDayOtherItemLabel: maxDayOtherItemLabel,
              minDayItemLabel: minDayItemLabel,
              minDayOtherItemLabel: minDayOtherItemLabel,
              basePrice: basePrice,
              delivery: delivery,
              currency: currency,
              weeklyDiscount: weeklyDiscount,
              monthlyDiscount: monthlyDiscount,
              cancellationPolicy: cancellationPolicy,
              securityDeposit: securityDeposit,
              cancellation: _cancellation?.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'cancellation';
        _cancellation?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'GlistingDataFragmentData', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

class _$GlistingDataFragmentData_cancellation
    extends GlistingDataFragmentData_cancellation {
  @override
  final String G__typename;
  @override
  final int? id;
  @override
  final String? policyName;
  @override
  final String? policyContent;
  @override
  final int? priorDays;
  @override
  final String? subTitle;
  @override
  final String? subContent;
  @override
  final String? content1;
  @override
  final String? content2;
  @override
  final String? content3;
  @override
  final double? accommodationPriorCheckIn;
  @override
  final double? accommodationBeforeCheckIn;
  @override
  final double? accommodationDuringCheckIn;
  @override
  final double? guestFeePriorCheckIn;
  @override
  final double? guestFeeBeforeCheckIn;
  @override
  final double? guestFeeDuringCheckIn;
  @override
  final double? hostFeePriorCheckIn;
  @override
  final double? hostFeeBeforeCheckIn;
  @override
  final double? hostFeeDuringCheckIn;
  @override
  final bool? isEnable;
  @override
  final String? status;

  factory _$GlistingDataFragmentData_cancellation(
          [void Function(GlistingDataFragmentData_cancellationBuilder)?
              updates]) =>
      (new GlistingDataFragmentData_cancellationBuilder()..update(updates))
          ._build();

  _$GlistingDataFragmentData_cancellation._(
      {required this.G__typename,
      this.id,
      this.policyName,
      this.policyContent,
      this.priorDays,
      this.subTitle,
      this.subContent,
      this.content1,
      this.content2,
      this.content3,
      this.accommodationPriorCheckIn,
      this.accommodationBeforeCheckIn,
      this.accommodationDuringCheckIn,
      this.guestFeePriorCheckIn,
      this.guestFeeBeforeCheckIn,
      this.guestFeeDuringCheckIn,
      this.hostFeePriorCheckIn,
      this.hostFeeBeforeCheckIn,
      this.hostFeeDuringCheckIn,
      this.isEnable,
      this.status})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        G__typename, r'GlistingDataFragmentData_cancellation', 'G__typename');
  }

  @override
  GlistingDataFragmentData_cancellation rebuild(
          void Function(GlistingDataFragmentData_cancellationBuilder)
              updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GlistingDataFragmentData_cancellationBuilder toBuilder() =>
      new GlistingDataFragmentData_cancellationBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GlistingDataFragmentData_cancellation &&
        G__typename == other.G__typename &&
        id == other.id &&
        policyName == other.policyName &&
        policyContent == other.policyContent &&
        priorDays == other.priorDays &&
        subTitle == other.subTitle &&
        subContent == other.subContent &&
        content1 == other.content1 &&
        content2 == other.content2 &&
        content3 == other.content3 &&
        accommodationPriorCheckIn == other.accommodationPriorCheckIn &&
        accommodationBeforeCheckIn == other.accommodationBeforeCheckIn &&
        accommodationDuringCheckIn == other.accommodationDuringCheckIn &&
        guestFeePriorCheckIn == other.guestFeePriorCheckIn &&
        guestFeeBeforeCheckIn == other.guestFeeBeforeCheckIn &&
        guestFeeDuringCheckIn == other.guestFeeDuringCheckIn &&
        hostFeePriorCheckIn == other.hostFeePriorCheckIn &&
        hostFeeBeforeCheckIn == other.hostFeeBeforeCheckIn &&
        hostFeeDuringCheckIn == other.hostFeeDuringCheckIn &&
        isEnable == other.isEnable &&
        status == other.status;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, G__typename.hashCode);
    _$hash = $jc(_$hash, id.hashCode);
    _$hash = $jc(_$hash, policyName.hashCode);
    _$hash = $jc(_$hash, policyContent.hashCode);
    _$hash = $jc(_$hash, priorDays.hashCode);
    _$hash = $jc(_$hash, subTitle.hashCode);
    _$hash = $jc(_$hash, subContent.hashCode);
    _$hash = $jc(_$hash, content1.hashCode);
    _$hash = $jc(_$hash, content2.hashCode);
    _$hash = $jc(_$hash, content3.hashCode);
    _$hash = $jc(_$hash, accommodationPriorCheckIn.hashCode);
    _$hash = $jc(_$hash, accommodationBeforeCheckIn.hashCode);
    _$hash = $jc(_$hash, accommodationDuringCheckIn.hashCode);
    _$hash = $jc(_$hash, guestFeePriorCheckIn.hashCode);
    _$hash = $jc(_$hash, guestFeeBeforeCheckIn.hashCode);
    _$hash = $jc(_$hash, guestFeeDuringCheckIn.hashCode);
    _$hash = $jc(_$hash, hostFeePriorCheckIn.hashCode);
    _$hash = $jc(_$hash, hostFeeBeforeCheckIn.hashCode);
    _$hash = $jc(_$hash, hostFeeDuringCheckIn.hashCode);
    _$hash = $jc(_$hash, isEnable.hashCode);
    _$hash = $jc(_$hash, status.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(
            r'GlistingDataFragmentData_cancellation')
          ..add('G__typename', G__typename)
          ..add('id', id)
          ..add('policyName', policyName)
          ..add('policyContent', policyContent)
          ..add('priorDays', priorDays)
          ..add('subTitle', subTitle)
          ..add('subContent', subContent)
          ..add('content1', content1)
          ..add('content2', content2)
          ..add('content3', content3)
          ..add('accommodationPriorCheckIn', accommodationPriorCheckIn)
          ..add('accommodationBeforeCheckIn', accommodationBeforeCheckIn)
          ..add('accommodationDuringCheckIn', accommodationDuringCheckIn)
          ..add('guestFeePriorCheckIn', guestFeePriorCheckIn)
          ..add('guestFeeBeforeCheckIn', guestFeeBeforeCheckIn)
          ..add('guestFeeDuringCheckIn', guestFeeDuringCheckIn)
          ..add('hostFeePriorCheckIn', hostFeePriorCheckIn)
          ..add('hostFeeBeforeCheckIn', hostFeeBeforeCheckIn)
          ..add('hostFeeDuringCheckIn', hostFeeDuringCheckIn)
          ..add('isEnable', isEnable)
          ..add('status', status))
        .toString();
  }
}

class GlistingDataFragmentData_cancellationBuilder
    implements
        Builder<GlistingDataFragmentData_cancellation,
            GlistingDataFragmentData_cancellationBuilder> {
  _$GlistingDataFragmentData_cancellation? _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  int? _id;
  int? get id => _$this._id;
  set id(int? id) => _$this._id = id;

  String? _policyName;
  String? get policyName => _$this._policyName;
  set policyName(String? policyName) => _$this._policyName = policyName;

  String? _policyContent;
  String? get policyContent => _$this._policyContent;
  set policyContent(String? policyContent) =>
      _$this._policyContent = policyContent;

  int? _priorDays;
  int? get priorDays => _$this._priorDays;
  set priorDays(int? priorDays) => _$this._priorDays = priorDays;

  String? _subTitle;
  String? get subTitle => _$this._subTitle;
  set subTitle(String? subTitle) => _$this._subTitle = subTitle;

  String? _subContent;
  String? get subContent => _$this._subContent;
  set subContent(String? subContent) => _$this._subContent = subContent;

  String? _content1;
  String? get content1 => _$this._content1;
  set content1(String? content1) => _$this._content1 = content1;

  String? _content2;
  String? get content2 => _$this._content2;
  set content2(String? content2) => _$this._content2 = content2;

  String? _content3;
  String? get content3 => _$this._content3;
  set content3(String? content3) => _$this._content3 = content3;

  double? _accommodationPriorCheckIn;
  double? get accommodationPriorCheckIn => _$this._accommodationPriorCheckIn;
  set accommodationPriorCheckIn(double? accommodationPriorCheckIn) =>
      _$this._accommodationPriorCheckIn = accommodationPriorCheckIn;

  double? _accommodationBeforeCheckIn;
  double? get accommodationBeforeCheckIn => _$this._accommodationBeforeCheckIn;
  set accommodationBeforeCheckIn(double? accommodationBeforeCheckIn) =>
      _$this._accommodationBeforeCheckIn = accommodationBeforeCheckIn;

  double? _accommodationDuringCheckIn;
  double? get accommodationDuringCheckIn => _$this._accommodationDuringCheckIn;
  set accommodationDuringCheckIn(double? accommodationDuringCheckIn) =>
      _$this._accommodationDuringCheckIn = accommodationDuringCheckIn;

  double? _guestFeePriorCheckIn;
  double? get guestFeePriorCheckIn => _$this._guestFeePriorCheckIn;
  set guestFeePriorCheckIn(double? guestFeePriorCheckIn) =>
      _$this._guestFeePriorCheckIn = guestFeePriorCheckIn;

  double? _guestFeeBeforeCheckIn;
  double? get guestFeeBeforeCheckIn => _$this._guestFeeBeforeCheckIn;
  set guestFeeBeforeCheckIn(double? guestFeeBeforeCheckIn) =>
      _$this._guestFeeBeforeCheckIn = guestFeeBeforeCheckIn;

  double? _guestFeeDuringCheckIn;
  double? get guestFeeDuringCheckIn => _$this._guestFeeDuringCheckIn;
  set guestFeeDuringCheckIn(double? guestFeeDuringCheckIn) =>
      _$this._guestFeeDuringCheckIn = guestFeeDuringCheckIn;

  double? _hostFeePriorCheckIn;
  double? get hostFeePriorCheckIn => _$this._hostFeePriorCheckIn;
  set hostFeePriorCheckIn(double? hostFeePriorCheckIn) =>
      _$this._hostFeePriorCheckIn = hostFeePriorCheckIn;

  double? _hostFeeBeforeCheckIn;
  double? get hostFeeBeforeCheckIn => _$this._hostFeeBeforeCheckIn;
  set hostFeeBeforeCheckIn(double? hostFeeBeforeCheckIn) =>
      _$this._hostFeeBeforeCheckIn = hostFeeBeforeCheckIn;

  double? _hostFeeDuringCheckIn;
  double? get hostFeeDuringCheckIn => _$this._hostFeeDuringCheckIn;
  set hostFeeDuringCheckIn(double? hostFeeDuringCheckIn) =>
      _$this._hostFeeDuringCheckIn = hostFeeDuringCheckIn;

  bool? _isEnable;
  bool? get isEnable => _$this._isEnable;
  set isEnable(bool? isEnable) => _$this._isEnable = isEnable;

  String? _status;
  String? get status => _$this._status;
  set status(String? status) => _$this._status = status;

  GlistingDataFragmentData_cancellationBuilder() {
    GlistingDataFragmentData_cancellation._initializeBuilder(this);
  }

  GlistingDataFragmentData_cancellationBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _G__typename = $v.G__typename;
      _id = $v.id;
      _policyName = $v.policyName;
      _policyContent = $v.policyContent;
      _priorDays = $v.priorDays;
      _subTitle = $v.subTitle;
      _subContent = $v.subContent;
      _content1 = $v.content1;
      _content2 = $v.content2;
      _content3 = $v.content3;
      _accommodationPriorCheckIn = $v.accommodationPriorCheckIn;
      _accommodationBeforeCheckIn = $v.accommodationBeforeCheckIn;
      _accommodationDuringCheckIn = $v.accommodationDuringCheckIn;
      _guestFeePriorCheckIn = $v.guestFeePriorCheckIn;
      _guestFeeBeforeCheckIn = $v.guestFeeBeforeCheckIn;
      _guestFeeDuringCheckIn = $v.guestFeeDuringCheckIn;
      _hostFeePriorCheckIn = $v.hostFeePriorCheckIn;
      _hostFeeBeforeCheckIn = $v.hostFeeBeforeCheckIn;
      _hostFeeDuringCheckIn = $v.hostFeeDuringCheckIn;
      _isEnable = $v.isEnable;
      _status = $v.status;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GlistingDataFragmentData_cancellation other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GlistingDataFragmentData_cancellation;
  }

  @override
  void update(
      void Function(GlistingDataFragmentData_cancellationBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GlistingDataFragmentData_cancellation build() => _build();

  _$GlistingDataFragmentData_cancellation _build() {
    final _$result = _$v ??
        new _$GlistingDataFragmentData_cancellation._(
            G__typename: BuiltValueNullFieldError.checkNotNull(G__typename,
                r'GlistingDataFragmentData_cancellation', 'G__typename'),
            id: id,
            policyName: policyName,
            policyContent: policyContent,
            priorDays: priorDays,
            subTitle: subTitle,
            subContent: subContent,
            content1: content1,
            content2: content2,
            content3: content3,
            accommodationPriorCheckIn: accommodationPriorCheckIn,
            accommodationBeforeCheckIn: accommodationBeforeCheckIn,
            accommodationDuringCheckIn: accommodationDuringCheckIn,
            guestFeePriorCheckIn: guestFeePriorCheckIn,
            guestFeeBeforeCheckIn: guestFeeBeforeCheckIn,
            guestFeeDuringCheckIn: guestFeeDuringCheckIn,
            hostFeePriorCheckIn: hostFeePriorCheckIn,
            hostFeeBeforeCheckIn: hostFeeBeforeCheckIn,
            hostFeeDuringCheckIn: hostFeeDuringCheckIn,
            isEnable: isEnable,
            status: status);
    replace(_$result);
    return _$result;
  }
}

class _$GcancellationDataFragmentData extends GcancellationDataFragmentData {
  @override
  final String G__typename;
  @override
  final int? id;
  @override
  final String? policyName;
  @override
  final String? policyContent;
  @override
  final int? priorDays;
  @override
  final String? subTitle;
  @override
  final String? subContent;
  @override
  final String? content1;
  @override
  final String? content2;
  @override
  final String? content3;
  @override
  final double? accommodationPriorCheckIn;
  @override
  final double? accommodationBeforeCheckIn;
  @override
  final double? accommodationDuringCheckIn;
  @override
  final double? guestFeePriorCheckIn;
  @override
  final double? guestFeeBeforeCheckIn;
  @override
  final double? guestFeeDuringCheckIn;
  @override
  final double? hostFeePriorCheckIn;
  @override
  final double? hostFeeBeforeCheckIn;
  @override
  final double? hostFeeDuringCheckIn;
  @override
  final bool? isEnable;
  @override
  final String? status;

  factory _$GcancellationDataFragmentData(
          [void Function(GcancellationDataFragmentDataBuilder)? updates]) =>
      (new GcancellationDataFragmentDataBuilder()..update(updates))._build();

  _$GcancellationDataFragmentData._(
      {required this.G__typename,
      this.id,
      this.policyName,
      this.policyContent,
      this.priorDays,
      this.subTitle,
      this.subContent,
      this.content1,
      this.content2,
      this.content3,
      this.accommodationPriorCheckIn,
      this.accommodationBeforeCheckIn,
      this.accommodationDuringCheckIn,
      this.guestFeePriorCheckIn,
      this.guestFeeBeforeCheckIn,
      this.guestFeeDuringCheckIn,
      this.hostFeePriorCheckIn,
      this.hostFeeBeforeCheckIn,
      this.hostFeeDuringCheckIn,
      this.isEnable,
      this.status})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        G__typename, r'GcancellationDataFragmentData', 'G__typename');
  }

  @override
  GcancellationDataFragmentData rebuild(
          void Function(GcancellationDataFragmentDataBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GcancellationDataFragmentDataBuilder toBuilder() =>
      new GcancellationDataFragmentDataBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GcancellationDataFragmentData &&
        G__typename == other.G__typename &&
        id == other.id &&
        policyName == other.policyName &&
        policyContent == other.policyContent &&
        priorDays == other.priorDays &&
        subTitle == other.subTitle &&
        subContent == other.subContent &&
        content1 == other.content1 &&
        content2 == other.content2 &&
        content3 == other.content3 &&
        accommodationPriorCheckIn == other.accommodationPriorCheckIn &&
        accommodationBeforeCheckIn == other.accommodationBeforeCheckIn &&
        accommodationDuringCheckIn == other.accommodationDuringCheckIn &&
        guestFeePriorCheckIn == other.guestFeePriorCheckIn &&
        guestFeeBeforeCheckIn == other.guestFeeBeforeCheckIn &&
        guestFeeDuringCheckIn == other.guestFeeDuringCheckIn &&
        hostFeePriorCheckIn == other.hostFeePriorCheckIn &&
        hostFeeBeforeCheckIn == other.hostFeeBeforeCheckIn &&
        hostFeeDuringCheckIn == other.hostFeeDuringCheckIn &&
        isEnable == other.isEnable &&
        status == other.status;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, G__typename.hashCode);
    _$hash = $jc(_$hash, id.hashCode);
    _$hash = $jc(_$hash, policyName.hashCode);
    _$hash = $jc(_$hash, policyContent.hashCode);
    _$hash = $jc(_$hash, priorDays.hashCode);
    _$hash = $jc(_$hash, subTitle.hashCode);
    _$hash = $jc(_$hash, subContent.hashCode);
    _$hash = $jc(_$hash, content1.hashCode);
    _$hash = $jc(_$hash, content2.hashCode);
    _$hash = $jc(_$hash, content3.hashCode);
    _$hash = $jc(_$hash, accommodationPriorCheckIn.hashCode);
    _$hash = $jc(_$hash, accommodationBeforeCheckIn.hashCode);
    _$hash = $jc(_$hash, accommodationDuringCheckIn.hashCode);
    _$hash = $jc(_$hash, guestFeePriorCheckIn.hashCode);
    _$hash = $jc(_$hash, guestFeeBeforeCheckIn.hashCode);
    _$hash = $jc(_$hash, guestFeeDuringCheckIn.hashCode);
    _$hash = $jc(_$hash, hostFeePriorCheckIn.hashCode);
    _$hash = $jc(_$hash, hostFeeBeforeCheckIn.hashCode);
    _$hash = $jc(_$hash, hostFeeDuringCheckIn.hashCode);
    _$hash = $jc(_$hash, isEnable.hashCode);
    _$hash = $jc(_$hash, status.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'GcancellationDataFragmentData')
          ..add('G__typename', G__typename)
          ..add('id', id)
          ..add('policyName', policyName)
          ..add('policyContent', policyContent)
          ..add('priorDays', priorDays)
          ..add('subTitle', subTitle)
          ..add('subContent', subContent)
          ..add('content1', content1)
          ..add('content2', content2)
          ..add('content3', content3)
          ..add('accommodationPriorCheckIn', accommodationPriorCheckIn)
          ..add('accommodationBeforeCheckIn', accommodationBeforeCheckIn)
          ..add('accommodationDuringCheckIn', accommodationDuringCheckIn)
          ..add('guestFeePriorCheckIn', guestFeePriorCheckIn)
          ..add('guestFeeBeforeCheckIn', guestFeeBeforeCheckIn)
          ..add('guestFeeDuringCheckIn', guestFeeDuringCheckIn)
          ..add('hostFeePriorCheckIn', hostFeePriorCheckIn)
          ..add('hostFeeBeforeCheckIn', hostFeeBeforeCheckIn)
          ..add('hostFeeDuringCheckIn', hostFeeDuringCheckIn)
          ..add('isEnable', isEnable)
          ..add('status', status))
        .toString();
  }
}

class GcancellationDataFragmentDataBuilder
    implements
        Builder<GcancellationDataFragmentData,
            GcancellationDataFragmentDataBuilder> {
  _$GcancellationDataFragmentData? _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  int? _id;
  int? get id => _$this._id;
  set id(int? id) => _$this._id = id;

  String? _policyName;
  String? get policyName => _$this._policyName;
  set policyName(String? policyName) => _$this._policyName = policyName;

  String? _policyContent;
  String? get policyContent => _$this._policyContent;
  set policyContent(String? policyContent) =>
      _$this._policyContent = policyContent;

  int? _priorDays;
  int? get priorDays => _$this._priorDays;
  set priorDays(int? priorDays) => _$this._priorDays = priorDays;

  String? _subTitle;
  String? get subTitle => _$this._subTitle;
  set subTitle(String? subTitle) => _$this._subTitle = subTitle;

  String? _subContent;
  String? get subContent => _$this._subContent;
  set subContent(String? subContent) => _$this._subContent = subContent;

  String? _content1;
  String? get content1 => _$this._content1;
  set content1(String? content1) => _$this._content1 = content1;

  String? _content2;
  String? get content2 => _$this._content2;
  set content2(String? content2) => _$this._content2 = content2;

  String? _content3;
  String? get content3 => _$this._content3;
  set content3(String? content3) => _$this._content3 = content3;

  double? _accommodationPriorCheckIn;
  double? get accommodationPriorCheckIn => _$this._accommodationPriorCheckIn;
  set accommodationPriorCheckIn(double? accommodationPriorCheckIn) =>
      _$this._accommodationPriorCheckIn = accommodationPriorCheckIn;

  double? _accommodationBeforeCheckIn;
  double? get accommodationBeforeCheckIn => _$this._accommodationBeforeCheckIn;
  set accommodationBeforeCheckIn(double? accommodationBeforeCheckIn) =>
      _$this._accommodationBeforeCheckIn = accommodationBeforeCheckIn;

  double? _accommodationDuringCheckIn;
  double? get accommodationDuringCheckIn => _$this._accommodationDuringCheckIn;
  set accommodationDuringCheckIn(double? accommodationDuringCheckIn) =>
      _$this._accommodationDuringCheckIn = accommodationDuringCheckIn;

  double? _guestFeePriorCheckIn;
  double? get guestFeePriorCheckIn => _$this._guestFeePriorCheckIn;
  set guestFeePriorCheckIn(double? guestFeePriorCheckIn) =>
      _$this._guestFeePriorCheckIn = guestFeePriorCheckIn;

  double? _guestFeeBeforeCheckIn;
  double? get guestFeeBeforeCheckIn => _$this._guestFeeBeforeCheckIn;
  set guestFeeBeforeCheckIn(double? guestFeeBeforeCheckIn) =>
      _$this._guestFeeBeforeCheckIn = guestFeeBeforeCheckIn;

  double? _guestFeeDuringCheckIn;
  double? get guestFeeDuringCheckIn => _$this._guestFeeDuringCheckIn;
  set guestFeeDuringCheckIn(double? guestFeeDuringCheckIn) =>
      _$this._guestFeeDuringCheckIn = guestFeeDuringCheckIn;

  double? _hostFeePriorCheckIn;
  double? get hostFeePriorCheckIn => _$this._hostFeePriorCheckIn;
  set hostFeePriorCheckIn(double? hostFeePriorCheckIn) =>
      _$this._hostFeePriorCheckIn = hostFeePriorCheckIn;

  double? _hostFeeBeforeCheckIn;
  double? get hostFeeBeforeCheckIn => _$this._hostFeeBeforeCheckIn;
  set hostFeeBeforeCheckIn(double? hostFeeBeforeCheckIn) =>
      _$this._hostFeeBeforeCheckIn = hostFeeBeforeCheckIn;

  double? _hostFeeDuringCheckIn;
  double? get hostFeeDuringCheckIn => _$this._hostFeeDuringCheckIn;
  set hostFeeDuringCheckIn(double? hostFeeDuringCheckIn) =>
      _$this._hostFeeDuringCheckIn = hostFeeDuringCheckIn;

  bool? _isEnable;
  bool? get isEnable => _$this._isEnable;
  set isEnable(bool? isEnable) => _$this._isEnable = isEnable;

  String? _status;
  String? get status => _$this._status;
  set status(String? status) => _$this._status = status;

  GcancellationDataFragmentDataBuilder() {
    GcancellationDataFragmentData._initializeBuilder(this);
  }

  GcancellationDataFragmentDataBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _G__typename = $v.G__typename;
      _id = $v.id;
      _policyName = $v.policyName;
      _policyContent = $v.policyContent;
      _priorDays = $v.priorDays;
      _subTitle = $v.subTitle;
      _subContent = $v.subContent;
      _content1 = $v.content1;
      _content2 = $v.content2;
      _content3 = $v.content3;
      _accommodationPriorCheckIn = $v.accommodationPriorCheckIn;
      _accommodationBeforeCheckIn = $v.accommodationBeforeCheckIn;
      _accommodationDuringCheckIn = $v.accommodationDuringCheckIn;
      _guestFeePriorCheckIn = $v.guestFeePriorCheckIn;
      _guestFeeBeforeCheckIn = $v.guestFeeBeforeCheckIn;
      _guestFeeDuringCheckIn = $v.guestFeeDuringCheckIn;
      _hostFeePriorCheckIn = $v.hostFeePriorCheckIn;
      _hostFeeBeforeCheckIn = $v.hostFeeBeforeCheckIn;
      _hostFeeDuringCheckIn = $v.hostFeeDuringCheckIn;
      _isEnable = $v.isEnable;
      _status = $v.status;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GcancellationDataFragmentData other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GcancellationDataFragmentData;
  }

  @override
  void update(void Function(GcancellationDataFragmentDataBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GcancellationDataFragmentData build() => _build();

  _$GcancellationDataFragmentData _build() {
    final _$result = _$v ??
        new _$GcancellationDataFragmentData._(
            G__typename: BuiltValueNullFieldError.checkNotNull(
                G__typename, r'GcancellationDataFragmentData', 'G__typename'),
            id: id,
            policyName: policyName,
            policyContent: policyContent,
            priorDays: priorDays,
            subTitle: subTitle,
            subContent: subContent,
            content1: content1,
            content2: content2,
            content3: content3,
            accommodationPriorCheckIn: accommodationPriorCheckIn,
            accommodationBeforeCheckIn: accommodationBeforeCheckIn,
            accommodationDuringCheckIn: accommodationDuringCheckIn,
            guestFeePriorCheckIn: guestFeePriorCheckIn,
            guestFeeBeforeCheckIn: guestFeeBeforeCheckIn,
            guestFeeDuringCheckIn: guestFeeDuringCheckIn,
            hostFeePriorCheckIn: hostFeePriorCheckIn,
            hostFeeBeforeCheckIn: hostFeeBeforeCheckIn,
            hostFeeDuringCheckIn: hostFeeDuringCheckIn,
            isEnable: isEnable,
            status: status);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
