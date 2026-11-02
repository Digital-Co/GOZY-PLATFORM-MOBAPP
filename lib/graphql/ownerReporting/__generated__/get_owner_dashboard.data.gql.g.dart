// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'get_owner_dashboard.data.gql.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<GgetOwnerDashboardData> _$ggetOwnerDashboardDataSerializer =
    new _$GgetOwnerDashboardDataSerializer();
Serializer<GgetOwnerDashboardData_getOwnerDashboard>
    _$ggetOwnerDashboardDataGetOwnerDashboardSerializer =
    new _$GgetOwnerDashboardData_getOwnerDashboardSerializer();
Serializer<GgetOwnerDashboardData_getOwnerDashboard_period>
    _$ggetOwnerDashboardDataGetOwnerDashboardPeriodSerializer =
    new _$GgetOwnerDashboardData_getOwnerDashboard_periodSerializer();
Serializer<GgetOwnerDashboardData_getOwnerDashboard_indicators>
    _$ggetOwnerDashboardDataGetOwnerDashboardIndicatorsSerializer =
    new _$GgetOwnerDashboardData_getOwnerDashboard_indicatorsSerializer();
Serializer<GgetOwnerDashboardData_getOwnerDashboard_indicators_netRevenue>
    _$ggetOwnerDashboardDataGetOwnerDashboardIndicatorsNetRevenueSerializer =
    new _$GgetOwnerDashboardData_getOwnerDashboard_indicators_netRevenueSerializer();
Serializer<GgetOwnerDashboardData_getOwnerDashboard_indicators_volume>
    _$ggetOwnerDashboardDataGetOwnerDashboardIndicatorsVolumeSerializer =
    new _$GgetOwnerDashboardData_getOwnerDashboard_indicators_volumeSerializer();
Serializer<GgetOwnerDashboardData_getOwnerDashboard_indicators_bookings>
    _$ggetOwnerDashboardDataGetOwnerDashboardIndicatorsBookingsSerializer =
    new _$GgetOwnerDashboardData_getOwnerDashboard_indicators_bookingsSerializer();
Serializer<GgetOwnerDashboardData_getOwnerDashboard_indicators_rentedDays>
    _$ggetOwnerDashboardDataGetOwnerDashboardIndicatorsRentedDaysSerializer =
    new _$GgetOwnerDashboardData_getOwnerDashboard_indicators_rentedDaysSerializer();
Serializer<GgetOwnerDashboardData_getOwnerDashboard_indicators_occupancy>
    _$ggetOwnerDashboardDataGetOwnerDashboardIndicatorsOccupancySerializer =
    new _$GgetOwnerDashboardData_getOwnerDashboard_indicators_occupancySerializer();
Serializer<GgetOwnerDashboardData_getOwnerDashboard_indicators_cancellations>
    _$ggetOwnerDashboardDataGetOwnerDashboardIndicatorsCancellationsSerializer =
    new _$GgetOwnerDashboardData_getOwnerDashboard_indicators_cancellationsSerializer();
Serializer<GgetOwnerDashboardData_getOwnerDashboard_revenue>
    _$ggetOwnerDashboardDataGetOwnerDashboardRevenueSerializer =
    new _$GgetOwnerDashboardData_getOwnerDashboard_revenueSerializer();
Serializer<GgetOwnerDashboardData_getOwnerDashboard_series>
    _$ggetOwnerDashboardDataGetOwnerDashboardSeriesSerializer =
    new _$GgetOwnerDashboardData_getOwnerDashboard_seriesSerializer();
Serializer<GgetOwnerDashboardData_getOwnerDashboard_series_points>
    _$ggetOwnerDashboardDataGetOwnerDashboardSeriesPointsSerializer =
    new _$GgetOwnerDashboardData_getOwnerDashboard_series_pointsSerializer();
Serializer<GgetOwnerDashboardData_getOwnerDashboard_vehicles>
    _$ggetOwnerDashboardDataGetOwnerDashboardVehiclesSerializer =
    new _$GgetOwnerDashboardData_getOwnerDashboard_vehiclesSerializer();
Serializer<GgetOwnerDashboardData_getOwnerDashboard_vehicleOptions>
    _$ggetOwnerDashboardDataGetOwnerDashboardVehicleOptionsSerializer =
    new _$GgetOwnerDashboardData_getOwnerDashboard_vehicleOptionsSerializer();
Serializer<GgetOwnerDashboardData_getOwnerDashboard_reservationsSplit>
    _$ggetOwnerDashboardDataGetOwnerDashboardReservationsSplitSerializer =
    new _$GgetOwnerDashboardData_getOwnerDashboard_reservationsSplitSerializer();
Serializer<GgetOwnerDashboardData_getOwnerDashboard_recentActivity>
    _$ggetOwnerDashboardDataGetOwnerDashboardRecentActivitySerializer =
    new _$GgetOwnerDashboardData_getOwnerDashboard_recentActivitySerializer();
Serializer<GgetOwnerDashboardData_getOwnerDashboard_operational>
    _$ggetOwnerDashboardDataGetOwnerDashboardOperationalSerializer =
    new _$GgetOwnerDashboardData_getOwnerDashboard_operationalSerializer();

class _$GgetOwnerDashboardDataSerializer
    implements StructuredSerializer<GgetOwnerDashboardData> {
  @override
  final Iterable<Type> types = const [
    GgetOwnerDashboardData,
    _$GgetOwnerDashboardData
  ];
  @override
  final String wireName = 'GgetOwnerDashboardData';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, GgetOwnerDashboardData object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      '__typename',
      serializers.serialize(object.G__typename,
          specifiedType: const FullType(String)),
    ];
    Object? value;
    value = object.getOwnerDashboard;
    if (value != null) {
      result
        ..add('getOwnerDashboard')
        ..add(serializers.serialize(value,
            specifiedType:
                const FullType(GgetOwnerDashboardData_getOwnerDashboard)));
    }
    return result;
  }

  @override
  GgetOwnerDashboardData deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GgetOwnerDashboardDataBuilder();

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
        case 'getOwnerDashboard':
          result.getOwnerDashboard.replace(serializers.deserialize(value,
                  specifiedType:
                      const FullType(GgetOwnerDashboardData_getOwnerDashboard))!
              as GgetOwnerDashboardData_getOwnerDashboard);
          break;
      }
    }

    return result.build();
  }
}

class _$GgetOwnerDashboardData_getOwnerDashboardSerializer
    implements StructuredSerializer<GgetOwnerDashboardData_getOwnerDashboard> {
  @override
  final Iterable<Type> types = const [
    GgetOwnerDashboardData_getOwnerDashboard,
    _$GgetOwnerDashboardData_getOwnerDashboard
  ];
  @override
  final String wireName = 'GgetOwnerDashboardData_getOwnerDashboard';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, GgetOwnerDashboardData_getOwnerDashboard object,
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
    value = object.convertCurrency;
    if (value != null) {
      result
        ..add('convertCurrency')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.period;
    if (value != null) {
      result
        ..add('period')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(
                GgetOwnerDashboardData_getOwnerDashboard_period)));
    }
    value = object.indicators;
    if (value != null) {
      result
        ..add('indicators')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(
                GgetOwnerDashboardData_getOwnerDashboard_indicators)));
    }
    value = object.revenue;
    if (value != null) {
      result
        ..add('revenue')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(
                GgetOwnerDashboardData_getOwnerDashboard_revenue)));
    }
    value = object.series;
    if (value != null) {
      result
        ..add('series')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(
                GgetOwnerDashboardData_getOwnerDashboard_series)));
    }
    value = object.vehicleCount;
    if (value != null) {
      result
        ..add('vehicleCount')
        ..add(serializers.serialize(value, specifiedType: const FullType(int)));
    }
    value = object.vehicles;
    if (value != null) {
      result
        ..add('vehicles')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(BuiltList, const [
              const FullType.nullable(
                  GgetOwnerDashboardData_getOwnerDashboard_vehicles)
            ])));
    }
    value = object.vehicleOptions;
    if (value != null) {
      result
        ..add('vehicleOptions')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(BuiltList, const [
              const FullType.nullable(
                  GgetOwnerDashboardData_getOwnerDashboard_vehicleOptions)
            ])));
    }
    value = object.reservationsSplit;
    if (value != null) {
      result
        ..add('reservationsSplit')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(
                GgetOwnerDashboardData_getOwnerDashboard_reservationsSplit)));
    }
    value = object.recentActivity;
    if (value != null) {
      result
        ..add('recentActivity')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(BuiltList, const [
              const FullType.nullable(
                  GgetOwnerDashboardData_getOwnerDashboard_recentActivity)
            ])));
    }
    value = object.operational;
    if (value != null) {
      result
        ..add('operational')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(
                GgetOwnerDashboardData_getOwnerDashboard_operational)));
    }
    return result;
  }

  @override
  GgetOwnerDashboardData_getOwnerDashboard deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GgetOwnerDashboardData_getOwnerDashboardBuilder();

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
        case 'convertCurrency':
          result.convertCurrency = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'period':
          result.period.replace(serializers.deserialize(value,
                  specifiedType: const FullType(
                      GgetOwnerDashboardData_getOwnerDashboard_period))!
              as GgetOwnerDashboardData_getOwnerDashboard_period);
          break;
        case 'indicators':
          result.indicators.replace(serializers.deserialize(value,
                  specifiedType: const FullType(
                      GgetOwnerDashboardData_getOwnerDashboard_indicators))!
              as GgetOwnerDashboardData_getOwnerDashboard_indicators);
          break;
        case 'revenue':
          result.revenue.replace(serializers.deserialize(value,
                  specifiedType: const FullType(
                      GgetOwnerDashboardData_getOwnerDashboard_revenue))!
              as GgetOwnerDashboardData_getOwnerDashboard_revenue);
          break;
        case 'series':
          result.series.replace(serializers.deserialize(value,
                  specifiedType: const FullType(
                      GgetOwnerDashboardData_getOwnerDashboard_series))!
              as GgetOwnerDashboardData_getOwnerDashboard_series);
          break;
        case 'vehicleCount':
          result.vehicleCount = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int?;
          break;
        case 'vehicles':
          result.vehicles.replace(serializers.deserialize(value,
              specifiedType: const FullType(BuiltList, const [
                const FullType.nullable(
                    GgetOwnerDashboardData_getOwnerDashboard_vehicles)
              ]))! as BuiltList<Object?>);
          break;
        case 'vehicleOptions':
          result.vehicleOptions.replace(serializers.deserialize(value,
              specifiedType: const FullType(BuiltList, const [
                const FullType.nullable(
                    GgetOwnerDashboardData_getOwnerDashboard_vehicleOptions)
              ]))! as BuiltList<Object?>);
          break;
        case 'reservationsSplit':
          result.reservationsSplit.replace(serializers.deserialize(value,
                  specifiedType: const FullType(
                      GgetOwnerDashboardData_getOwnerDashboard_reservationsSplit))!
              as GgetOwnerDashboardData_getOwnerDashboard_reservationsSplit);
          break;
        case 'recentActivity':
          result.recentActivity.replace(serializers.deserialize(value,
              specifiedType: const FullType(BuiltList, const [
                const FullType.nullable(
                    GgetOwnerDashboardData_getOwnerDashboard_recentActivity)
              ]))! as BuiltList<Object?>);
          break;
        case 'operational':
          result.operational.replace(serializers.deserialize(value,
                  specifiedType: const FullType(
                      GgetOwnerDashboardData_getOwnerDashboard_operational))!
              as GgetOwnerDashboardData_getOwnerDashboard_operational);
          break;
      }
    }

    return result.build();
  }
}

class _$GgetOwnerDashboardData_getOwnerDashboard_periodSerializer
    implements
        StructuredSerializer<GgetOwnerDashboardData_getOwnerDashboard_period> {
  @override
  final Iterable<Type> types = const [
    GgetOwnerDashboardData_getOwnerDashboard_period,
    _$GgetOwnerDashboardData_getOwnerDashboard_period
  ];
  @override
  final String wireName = 'GgetOwnerDashboardData_getOwnerDashboard_period';

  @override
  Iterable<Object?> serialize(Serializers serializers,
      GgetOwnerDashboardData_getOwnerDashboard_period object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      '__typename',
      serializers.serialize(object.G__typename,
          specifiedType: const FullType(String)),
    ];
    Object? value;
    value = object.preset;
    if (value != null) {
      result
        ..add('preset')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.start;
    if (value != null) {
      result
        ..add('start')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.end;
    if (value != null) {
      result
        ..add('end')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.days;
    if (value != null) {
      result
        ..add('days')
        ..add(serializers.serialize(value, specifiedType: const FullType(int)));
    }
    value = object.previousStart;
    if (value != null) {
      result
        ..add('previousStart')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.previousEnd;
    if (value != null) {
      result
        ..add('previousEnd')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.previousDays;
    if (value != null) {
      result
        ..add('previousDays')
        ..add(serializers.serialize(value, specifiedType: const FullType(int)));
    }
    return result;
  }

  @override
  GgetOwnerDashboardData_getOwnerDashboard_period deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GgetOwnerDashboardData_getOwnerDashboard_periodBuilder();

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
        case 'preset':
          result.preset = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'start':
          result.start = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'end':
          result.end = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'days':
          result.days = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int?;
          break;
        case 'previousStart':
          result.previousStart = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'previousEnd':
          result.previousEnd = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'previousDays':
          result.previousDays = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int?;
          break;
      }
    }

    return result.build();
  }
}

class _$GgetOwnerDashboardData_getOwnerDashboard_indicatorsSerializer
    implements
        StructuredSerializer<
            GgetOwnerDashboardData_getOwnerDashboard_indicators> {
  @override
  final Iterable<Type> types = const [
    GgetOwnerDashboardData_getOwnerDashboard_indicators,
    _$GgetOwnerDashboardData_getOwnerDashboard_indicators
  ];
  @override
  final String wireName = 'GgetOwnerDashboardData_getOwnerDashboard_indicators';

  @override
  Iterable<Object?> serialize(Serializers serializers,
      GgetOwnerDashboardData_getOwnerDashboard_indicators object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      '__typename',
      serializers.serialize(object.G__typename,
          specifiedType: const FullType(String)),
    ];
    Object? value;
    value = object.netRevenue;
    if (value != null) {
      result
        ..add('netRevenue')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(
                GgetOwnerDashboardData_getOwnerDashboard_indicators_netRevenue)));
    }
    value = object.volume;
    if (value != null) {
      result
        ..add('volume')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(
                GgetOwnerDashboardData_getOwnerDashboard_indicators_volume)));
    }
    value = object.bookings;
    if (value != null) {
      result
        ..add('bookings')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(
                GgetOwnerDashboardData_getOwnerDashboard_indicators_bookings)));
    }
    value = object.rentedDays;
    if (value != null) {
      result
        ..add('rentedDays')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(
                GgetOwnerDashboardData_getOwnerDashboard_indicators_rentedDays)));
    }
    value = object.occupancy;
    if (value != null) {
      result
        ..add('occupancy')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(
                GgetOwnerDashboardData_getOwnerDashboard_indicators_occupancy)));
    }
    value = object.cancellations;
    if (value != null) {
      result
        ..add('cancellations')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(
                GgetOwnerDashboardData_getOwnerDashboard_indicators_cancellations)));
    }
    return result;
  }

  @override
  GgetOwnerDashboardData_getOwnerDashboard_indicators deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result =
        new GgetOwnerDashboardData_getOwnerDashboard_indicatorsBuilder();

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
        case 'netRevenue':
          result.netRevenue.replace(serializers.deserialize(value,
                  specifiedType: const FullType(
                      GgetOwnerDashboardData_getOwnerDashboard_indicators_netRevenue))!
              as GgetOwnerDashboardData_getOwnerDashboard_indicators_netRevenue);
          break;
        case 'volume':
          result.volume.replace(serializers.deserialize(value,
                  specifiedType: const FullType(
                      GgetOwnerDashboardData_getOwnerDashboard_indicators_volume))!
              as GgetOwnerDashboardData_getOwnerDashboard_indicators_volume);
          break;
        case 'bookings':
          result.bookings.replace(serializers.deserialize(value,
                  specifiedType: const FullType(
                      GgetOwnerDashboardData_getOwnerDashboard_indicators_bookings))!
              as GgetOwnerDashboardData_getOwnerDashboard_indicators_bookings);
          break;
        case 'rentedDays':
          result.rentedDays.replace(serializers.deserialize(value,
                  specifiedType: const FullType(
                      GgetOwnerDashboardData_getOwnerDashboard_indicators_rentedDays))!
              as GgetOwnerDashboardData_getOwnerDashboard_indicators_rentedDays);
          break;
        case 'occupancy':
          result.occupancy.replace(serializers.deserialize(value,
                  specifiedType: const FullType(
                      GgetOwnerDashboardData_getOwnerDashboard_indicators_occupancy))!
              as GgetOwnerDashboardData_getOwnerDashboard_indicators_occupancy);
          break;
        case 'cancellations':
          result.cancellations.replace(serializers.deserialize(value,
                  specifiedType: const FullType(
                      GgetOwnerDashboardData_getOwnerDashboard_indicators_cancellations))!
              as GgetOwnerDashboardData_getOwnerDashboard_indicators_cancellations);
          break;
      }
    }

    return result.build();
  }
}

class _$GgetOwnerDashboardData_getOwnerDashboard_indicators_netRevenueSerializer
    implements
        StructuredSerializer<
            GgetOwnerDashboardData_getOwnerDashboard_indicators_netRevenue> {
  @override
  final Iterable<Type> types = const [
    GgetOwnerDashboardData_getOwnerDashboard_indicators_netRevenue,
    _$GgetOwnerDashboardData_getOwnerDashboard_indicators_netRevenue
  ];
  @override
  final String wireName =
      'GgetOwnerDashboardData_getOwnerDashboard_indicators_netRevenue';

  @override
  Iterable<Object?> serialize(Serializers serializers,
      GgetOwnerDashboardData_getOwnerDashboard_indicators_netRevenue object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      '__typename',
      serializers.serialize(object.G__typename,
          specifiedType: const FullType(String)),
    ];
    Object? value;
    value = object.value;
    if (value != null) {
      result
        ..add('value')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(double)));
    }
    value = object.previous;
    if (value != null) {
      result
        ..add('previous')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(double)));
    }
    value = object.change;
    if (value != null) {
      result
        ..add('change')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(double)));
    }
    value = object.trend;
    if (value != null) {
      result
        ..add('trend')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.favorable;
    if (value != null) {
      result
        ..add('favorable')
        ..add(
            serializers.serialize(value, specifiedType: const FullType(bool)));
    }
    return result;
  }

  @override
  GgetOwnerDashboardData_getOwnerDashboard_indicators_netRevenue deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result =
        new GgetOwnerDashboardData_getOwnerDashboard_indicators_netRevenueBuilder();

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
        case 'value':
          result.value = serializers.deserialize(value,
              specifiedType: const FullType(double)) as double?;
          break;
        case 'previous':
          result.previous = serializers.deserialize(value,
              specifiedType: const FullType(double)) as double?;
          break;
        case 'change':
          result.change = serializers.deserialize(value,
              specifiedType: const FullType(double)) as double?;
          break;
        case 'trend':
          result.trend = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'favorable':
          result.favorable = serializers.deserialize(value,
              specifiedType: const FullType(bool)) as bool?;
          break;
      }
    }

    return result.build();
  }
}

class _$GgetOwnerDashboardData_getOwnerDashboard_indicators_volumeSerializer
    implements
        StructuredSerializer<
            GgetOwnerDashboardData_getOwnerDashboard_indicators_volume> {
  @override
  final Iterable<Type> types = const [
    GgetOwnerDashboardData_getOwnerDashboard_indicators_volume,
    _$GgetOwnerDashboardData_getOwnerDashboard_indicators_volume
  ];
  @override
  final String wireName =
      'GgetOwnerDashboardData_getOwnerDashboard_indicators_volume';

  @override
  Iterable<Object?> serialize(Serializers serializers,
      GgetOwnerDashboardData_getOwnerDashboard_indicators_volume object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      '__typename',
      serializers.serialize(object.G__typename,
          specifiedType: const FullType(String)),
    ];
    Object? value;
    value = object.value;
    if (value != null) {
      result
        ..add('value')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(double)));
    }
    value = object.previous;
    if (value != null) {
      result
        ..add('previous')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(double)));
    }
    value = object.change;
    if (value != null) {
      result
        ..add('change')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(double)));
    }
    value = object.trend;
    if (value != null) {
      result
        ..add('trend')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.favorable;
    if (value != null) {
      result
        ..add('favorable')
        ..add(
            serializers.serialize(value, specifiedType: const FullType(bool)));
    }
    return result;
  }

  @override
  GgetOwnerDashboardData_getOwnerDashboard_indicators_volume deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result =
        new GgetOwnerDashboardData_getOwnerDashboard_indicators_volumeBuilder();

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
        case 'value':
          result.value = serializers.deserialize(value,
              specifiedType: const FullType(double)) as double?;
          break;
        case 'previous':
          result.previous = serializers.deserialize(value,
              specifiedType: const FullType(double)) as double?;
          break;
        case 'change':
          result.change = serializers.deserialize(value,
              specifiedType: const FullType(double)) as double?;
          break;
        case 'trend':
          result.trend = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'favorable':
          result.favorable = serializers.deserialize(value,
              specifiedType: const FullType(bool)) as bool?;
          break;
      }
    }

    return result.build();
  }
}

class _$GgetOwnerDashboardData_getOwnerDashboard_indicators_bookingsSerializer
    implements
        StructuredSerializer<
            GgetOwnerDashboardData_getOwnerDashboard_indicators_bookings> {
  @override
  final Iterable<Type> types = const [
    GgetOwnerDashboardData_getOwnerDashboard_indicators_bookings,
    _$GgetOwnerDashboardData_getOwnerDashboard_indicators_bookings
  ];
  @override
  final String wireName =
      'GgetOwnerDashboardData_getOwnerDashboard_indicators_bookings';

  @override
  Iterable<Object?> serialize(Serializers serializers,
      GgetOwnerDashboardData_getOwnerDashboard_indicators_bookings object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      '__typename',
      serializers.serialize(object.G__typename,
          specifiedType: const FullType(String)),
    ];
    Object? value;
    value = object.value;
    if (value != null) {
      result
        ..add('value')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(double)));
    }
    value = object.previous;
    if (value != null) {
      result
        ..add('previous')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(double)));
    }
    value = object.change;
    if (value != null) {
      result
        ..add('change')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(double)));
    }
    value = object.trend;
    if (value != null) {
      result
        ..add('trend')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.favorable;
    if (value != null) {
      result
        ..add('favorable')
        ..add(
            serializers.serialize(value, specifiedType: const FullType(bool)));
    }
    return result;
  }

  @override
  GgetOwnerDashboardData_getOwnerDashboard_indicators_bookings deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result =
        new GgetOwnerDashboardData_getOwnerDashboard_indicators_bookingsBuilder();

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
        case 'value':
          result.value = serializers.deserialize(value,
              specifiedType: const FullType(double)) as double?;
          break;
        case 'previous':
          result.previous = serializers.deserialize(value,
              specifiedType: const FullType(double)) as double?;
          break;
        case 'change':
          result.change = serializers.deserialize(value,
              specifiedType: const FullType(double)) as double?;
          break;
        case 'trend':
          result.trend = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'favorable':
          result.favorable = serializers.deserialize(value,
              specifiedType: const FullType(bool)) as bool?;
          break;
      }
    }

    return result.build();
  }
}

class _$GgetOwnerDashboardData_getOwnerDashboard_indicators_rentedDaysSerializer
    implements
        StructuredSerializer<
            GgetOwnerDashboardData_getOwnerDashboard_indicators_rentedDays> {
  @override
  final Iterable<Type> types = const [
    GgetOwnerDashboardData_getOwnerDashboard_indicators_rentedDays,
    _$GgetOwnerDashboardData_getOwnerDashboard_indicators_rentedDays
  ];
  @override
  final String wireName =
      'GgetOwnerDashboardData_getOwnerDashboard_indicators_rentedDays';

  @override
  Iterable<Object?> serialize(Serializers serializers,
      GgetOwnerDashboardData_getOwnerDashboard_indicators_rentedDays object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      '__typename',
      serializers.serialize(object.G__typename,
          specifiedType: const FullType(String)),
    ];
    Object? value;
    value = object.value;
    if (value != null) {
      result
        ..add('value')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(double)));
    }
    value = object.previous;
    if (value != null) {
      result
        ..add('previous')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(double)));
    }
    value = object.change;
    if (value != null) {
      result
        ..add('change')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(double)));
    }
    value = object.trend;
    if (value != null) {
      result
        ..add('trend')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.favorable;
    if (value != null) {
      result
        ..add('favorable')
        ..add(
            serializers.serialize(value, specifiedType: const FullType(bool)));
    }
    return result;
  }

  @override
  GgetOwnerDashboardData_getOwnerDashboard_indicators_rentedDays deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result =
        new GgetOwnerDashboardData_getOwnerDashboard_indicators_rentedDaysBuilder();

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
        case 'value':
          result.value = serializers.deserialize(value,
              specifiedType: const FullType(double)) as double?;
          break;
        case 'previous':
          result.previous = serializers.deserialize(value,
              specifiedType: const FullType(double)) as double?;
          break;
        case 'change':
          result.change = serializers.deserialize(value,
              specifiedType: const FullType(double)) as double?;
          break;
        case 'trend':
          result.trend = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'favorable':
          result.favorable = serializers.deserialize(value,
              specifiedType: const FullType(bool)) as bool?;
          break;
      }
    }

    return result.build();
  }
}

class _$GgetOwnerDashboardData_getOwnerDashboard_indicators_occupancySerializer
    implements
        StructuredSerializer<
            GgetOwnerDashboardData_getOwnerDashboard_indicators_occupancy> {
  @override
  final Iterable<Type> types = const [
    GgetOwnerDashboardData_getOwnerDashboard_indicators_occupancy,
    _$GgetOwnerDashboardData_getOwnerDashboard_indicators_occupancy
  ];
  @override
  final String wireName =
      'GgetOwnerDashboardData_getOwnerDashboard_indicators_occupancy';

  @override
  Iterable<Object?> serialize(Serializers serializers,
      GgetOwnerDashboardData_getOwnerDashboard_indicators_occupancy object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      '__typename',
      serializers.serialize(object.G__typename,
          specifiedType: const FullType(String)),
    ];
    Object? value;
    value = object.value;
    if (value != null) {
      result
        ..add('value')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(double)));
    }
    value = object.previous;
    if (value != null) {
      result
        ..add('previous')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(double)));
    }
    value = object.change;
    if (value != null) {
      result
        ..add('change')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(double)));
    }
    value = object.trend;
    if (value != null) {
      result
        ..add('trend')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.favorable;
    if (value != null) {
      result
        ..add('favorable')
        ..add(
            serializers.serialize(value, specifiedType: const FullType(bool)));
    }
    return result;
  }

  @override
  GgetOwnerDashboardData_getOwnerDashboard_indicators_occupancy deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result =
        new GgetOwnerDashboardData_getOwnerDashboard_indicators_occupancyBuilder();

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
        case 'value':
          result.value = serializers.deserialize(value,
              specifiedType: const FullType(double)) as double?;
          break;
        case 'previous':
          result.previous = serializers.deserialize(value,
              specifiedType: const FullType(double)) as double?;
          break;
        case 'change':
          result.change = serializers.deserialize(value,
              specifiedType: const FullType(double)) as double?;
          break;
        case 'trend':
          result.trend = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'favorable':
          result.favorable = serializers.deserialize(value,
              specifiedType: const FullType(bool)) as bool?;
          break;
      }
    }

    return result.build();
  }
}

class _$GgetOwnerDashboardData_getOwnerDashboard_indicators_cancellationsSerializer
    implements
        StructuredSerializer<
            GgetOwnerDashboardData_getOwnerDashboard_indicators_cancellations> {
  @override
  final Iterable<Type> types = const [
    GgetOwnerDashboardData_getOwnerDashboard_indicators_cancellations,
    _$GgetOwnerDashboardData_getOwnerDashboard_indicators_cancellations
  ];
  @override
  final String wireName =
      'GgetOwnerDashboardData_getOwnerDashboard_indicators_cancellations';

  @override
  Iterable<Object?> serialize(Serializers serializers,
      GgetOwnerDashboardData_getOwnerDashboard_indicators_cancellations object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      '__typename',
      serializers.serialize(object.G__typename,
          specifiedType: const FullType(String)),
    ];
    Object? value;
    value = object.value;
    if (value != null) {
      result
        ..add('value')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(double)));
    }
    value = object.previous;
    if (value != null) {
      result
        ..add('previous')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(double)));
    }
    value = object.change;
    if (value != null) {
      result
        ..add('change')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(double)));
    }
    value = object.trend;
    if (value != null) {
      result
        ..add('trend')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.favorable;
    if (value != null) {
      result
        ..add('favorable')
        ..add(
            serializers.serialize(value, specifiedType: const FullType(bool)));
    }
    return result;
  }

  @override
  GgetOwnerDashboardData_getOwnerDashboard_indicators_cancellations deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result =
        new GgetOwnerDashboardData_getOwnerDashboard_indicators_cancellationsBuilder();

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
        case 'value':
          result.value = serializers.deserialize(value,
              specifiedType: const FullType(double)) as double?;
          break;
        case 'previous':
          result.previous = serializers.deserialize(value,
              specifiedType: const FullType(double)) as double?;
          break;
        case 'change':
          result.change = serializers.deserialize(value,
              specifiedType: const FullType(double)) as double?;
          break;
        case 'trend':
          result.trend = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'favorable':
          result.favorable = serializers.deserialize(value,
              specifiedType: const FullType(bool)) as bool?;
          break;
      }
    }

    return result.build();
  }
}

class _$GgetOwnerDashboardData_getOwnerDashboard_revenueSerializer
    implements
        StructuredSerializer<GgetOwnerDashboardData_getOwnerDashboard_revenue> {
  @override
  final Iterable<Type> types = const [
    GgetOwnerDashboardData_getOwnerDashboard_revenue,
    _$GgetOwnerDashboardData_getOwnerDashboard_revenue
  ];
  @override
  final String wireName = 'GgetOwnerDashboardData_getOwnerDashboard_revenue';

  @override
  Iterable<Object?> serialize(Serializers serializers,
      GgetOwnerDashboardData_getOwnerDashboard_revenue object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      '__typename',
      serializers.serialize(object.G__typename,
          specifiedType: const FullType(String)),
    ];
    Object? value;
    value = object.netRevenue;
    if (value != null) {
      result
        ..add('netRevenue')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(double)));
    }
    value = object.upcoming;
    if (value != null) {
      result
        ..add('upcoming')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(double)));
    }
    value = object.pendingPayout;
    if (value != null) {
      result
        ..add('pendingPayout')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(double)));
    }
    value = object.paid;
    if (value != null) {
      result
        ..add('paid')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(double)));
    }
    value = object.paidAmount;
    if (value != null) {
      result
        ..add('paidAmount')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(double)));
    }
    return result;
  }

  @override
  GgetOwnerDashboardData_getOwnerDashboard_revenue deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result =
        new GgetOwnerDashboardData_getOwnerDashboard_revenueBuilder();

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
        case 'netRevenue':
          result.netRevenue = serializers.deserialize(value,
              specifiedType: const FullType(double)) as double?;
          break;
        case 'upcoming':
          result.upcoming = serializers.deserialize(value,
              specifiedType: const FullType(double)) as double?;
          break;
        case 'pendingPayout':
          result.pendingPayout = serializers.deserialize(value,
              specifiedType: const FullType(double)) as double?;
          break;
        case 'paid':
          result.paid = serializers.deserialize(value,
              specifiedType: const FullType(double)) as double?;
          break;
        case 'paidAmount':
          result.paidAmount = serializers.deserialize(value,
              specifiedType: const FullType(double)) as double?;
          break;
      }
    }

    return result.build();
  }
}

class _$GgetOwnerDashboardData_getOwnerDashboard_seriesSerializer
    implements
        StructuredSerializer<GgetOwnerDashboardData_getOwnerDashboard_series> {
  @override
  final Iterable<Type> types = const [
    GgetOwnerDashboardData_getOwnerDashboard_series,
    _$GgetOwnerDashboardData_getOwnerDashboard_series
  ];
  @override
  final String wireName = 'GgetOwnerDashboardData_getOwnerDashboard_series';

  @override
  Iterable<Object?> serialize(Serializers serializers,
      GgetOwnerDashboardData_getOwnerDashboard_series object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      '__typename',
      serializers.serialize(object.G__typename,
          specifiedType: const FullType(String)),
    ];
    Object? value;
    value = object.granularity;
    if (value != null) {
      result
        ..add('granularity')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.start;
    if (value != null) {
      result
        ..add('start')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.end;
    if (value != null) {
      result
        ..add('end')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.points;
    if (value != null) {
      result
        ..add('points')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(BuiltList, const [
              const FullType.nullable(
                  GgetOwnerDashboardData_getOwnerDashboard_series_points)
            ])));
    }
    return result;
  }

  @override
  GgetOwnerDashboardData_getOwnerDashboard_series deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GgetOwnerDashboardData_getOwnerDashboard_seriesBuilder();

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
        case 'granularity':
          result.granularity = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'start':
          result.start = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'end':
          result.end = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'points':
          result.points.replace(serializers.deserialize(value,
              specifiedType: const FullType(BuiltList, const [
                const FullType.nullable(
                    GgetOwnerDashboardData_getOwnerDashboard_series_points)
              ]))! as BuiltList<Object?>);
          break;
      }
    }

    return result.build();
  }
}

class _$GgetOwnerDashboardData_getOwnerDashboard_series_pointsSerializer
    implements
        StructuredSerializer<
            GgetOwnerDashboardData_getOwnerDashboard_series_points> {
  @override
  final Iterable<Type> types = const [
    GgetOwnerDashboardData_getOwnerDashboard_series_points,
    _$GgetOwnerDashboardData_getOwnerDashboard_series_points
  ];
  @override
  final String wireName =
      'GgetOwnerDashboardData_getOwnerDashboard_series_points';

  @override
  Iterable<Object?> serialize(Serializers serializers,
      GgetOwnerDashboardData_getOwnerDashboard_series_points object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      '__typename',
      serializers.serialize(object.G__typename,
          specifiedType: const FullType(String)),
    ];
    Object? value;
    value = object.key;
    if (value != null) {
      result
        ..add('key')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.start;
    if (value != null) {
      result
        ..add('start')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.end;
    if (value != null) {
      result
        ..add('end')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.netRevenue;
    if (value != null) {
      result
        ..add('netRevenue')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(double)));
    }
    value = object.bookings;
    if (value != null) {
      result
        ..add('bookings')
        ..add(serializers.serialize(value, specifiedType: const FullType(int)));
    }
    return result;
  }

  @override
  GgetOwnerDashboardData_getOwnerDashboard_series_points deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result =
        new GgetOwnerDashboardData_getOwnerDashboard_series_pointsBuilder();

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
        case 'key':
          result.key = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'start':
          result.start = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'end':
          result.end = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'netRevenue':
          result.netRevenue = serializers.deserialize(value,
              specifiedType: const FullType(double)) as double?;
          break;
        case 'bookings':
          result.bookings = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int?;
          break;
      }
    }

    return result.build();
  }
}

class _$GgetOwnerDashboardData_getOwnerDashboard_vehiclesSerializer
    implements
        StructuredSerializer<
            GgetOwnerDashboardData_getOwnerDashboard_vehicles> {
  @override
  final Iterable<Type> types = const [
    GgetOwnerDashboardData_getOwnerDashboard_vehicles,
    _$GgetOwnerDashboardData_getOwnerDashboard_vehicles
  ];
  @override
  final String wireName = 'GgetOwnerDashboardData_getOwnerDashboard_vehicles';

  @override
  Iterable<Object?> serialize(Serializers serializers,
      GgetOwnerDashboardData_getOwnerDashboard_vehicles object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      '__typename',
      serializers.serialize(object.G__typename,
          specifiedType: const FullType(String)),
    ];
    Object? value;
    value = object.listId;
    if (value != null) {
      result
        ..add('listId')
        ..add(serializers.serialize(value, specifiedType: const FullType(int)));
    }
    value = object.title;
    if (value != null) {
      result
        ..add('title')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.photo;
    if (value != null) {
      result
        ..add('photo')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.isOnline;
    if (value != null) {
      result
        ..add('isOnline')
        ..add(
            serializers.serialize(value, specifiedType: const FullType(bool)));
    }
    value = object.bookings;
    if (value != null) {
      result
        ..add('bookings')
        ..add(serializers.serialize(value, specifiedType: const FullType(int)));
    }
    value = object.rentedDays;
    if (value != null) {
      result
        ..add('rentedDays')
        ..add(serializers.serialize(value, specifiedType: const FullType(int)));
    }
    value = object.occupancy;
    if (value != null) {
      result
        ..add('occupancy')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(double)));
    }
    value = object.netRevenue;
    if (value != null) {
      result
        ..add('netRevenue')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(double)));
    }
    return result;
  }

  @override
  GgetOwnerDashboardData_getOwnerDashboard_vehicles deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result =
        new GgetOwnerDashboardData_getOwnerDashboard_vehiclesBuilder();

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
        case 'listId':
          result.listId = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int?;
          break;
        case 'title':
          result.title = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'photo':
          result.photo = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'isOnline':
          result.isOnline = serializers.deserialize(value,
              specifiedType: const FullType(bool)) as bool?;
          break;
        case 'bookings':
          result.bookings = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int?;
          break;
        case 'rentedDays':
          result.rentedDays = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int?;
          break;
        case 'occupancy':
          result.occupancy = serializers.deserialize(value,
              specifiedType: const FullType(double)) as double?;
          break;
        case 'netRevenue':
          result.netRevenue = serializers.deserialize(value,
              specifiedType: const FullType(double)) as double?;
          break;
      }
    }

    return result.build();
  }
}

class _$GgetOwnerDashboardData_getOwnerDashboard_vehicleOptionsSerializer
    implements
        StructuredSerializer<
            GgetOwnerDashboardData_getOwnerDashboard_vehicleOptions> {
  @override
  final Iterable<Type> types = const [
    GgetOwnerDashboardData_getOwnerDashboard_vehicleOptions,
    _$GgetOwnerDashboardData_getOwnerDashboard_vehicleOptions
  ];
  @override
  final String wireName =
      'GgetOwnerDashboardData_getOwnerDashboard_vehicleOptions';

  @override
  Iterable<Object?> serialize(Serializers serializers,
      GgetOwnerDashboardData_getOwnerDashboard_vehicleOptions object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      '__typename',
      serializers.serialize(object.G__typename,
          specifiedType: const FullType(String)),
    ];
    Object? value;
    value = object.listId;
    if (value != null) {
      result
        ..add('listId')
        ..add(serializers.serialize(value, specifiedType: const FullType(int)));
    }
    value = object.title;
    if (value != null) {
      result
        ..add('title')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.isOnline;
    if (value != null) {
      result
        ..add('isOnline')
        ..add(
            serializers.serialize(value, specifiedType: const FullType(bool)));
    }
    return result;
  }

  @override
  GgetOwnerDashboardData_getOwnerDashboard_vehicleOptions deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result =
        new GgetOwnerDashboardData_getOwnerDashboard_vehicleOptionsBuilder();

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
        case 'listId':
          result.listId = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int?;
          break;
        case 'title':
          result.title = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'isOnline':
          result.isOnline = serializers.deserialize(value,
              specifiedType: const FullType(bool)) as bool?;
          break;
      }
    }

    return result.build();
  }
}

class _$GgetOwnerDashboardData_getOwnerDashboard_reservationsSplitSerializer
    implements
        StructuredSerializer<
            GgetOwnerDashboardData_getOwnerDashboard_reservationsSplit> {
  @override
  final Iterable<Type> types = const [
    GgetOwnerDashboardData_getOwnerDashboard_reservationsSplit,
    _$GgetOwnerDashboardData_getOwnerDashboard_reservationsSplit
  ];
  @override
  final String wireName =
      'GgetOwnerDashboardData_getOwnerDashboard_reservationsSplit';

  @override
  Iterable<Object?> serialize(Serializers serializers,
      GgetOwnerDashboardData_getOwnerDashboard_reservationsSplit object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      '__typename',
      serializers.serialize(object.G__typename,
          specifiedType: const FullType(String)),
    ];
    Object? value;
    value = object.completed;
    if (value != null) {
      result
        ..add('completed')
        ..add(serializers.serialize(value, specifiedType: const FullType(int)));
    }
    value = object.upcoming;
    if (value != null) {
      result
        ..add('upcoming')
        ..add(serializers.serialize(value, specifiedType: const FullType(int)));
    }
    value = object.cancelled;
    if (value != null) {
      result
        ..add('cancelled')
        ..add(serializers.serialize(value, specifiedType: const FullType(int)));
    }
    return result;
  }

  @override
  GgetOwnerDashboardData_getOwnerDashboard_reservationsSplit deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result =
        new GgetOwnerDashboardData_getOwnerDashboard_reservationsSplitBuilder();

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
        case 'completed':
          result.completed = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int?;
          break;
        case 'upcoming':
          result.upcoming = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int?;
          break;
        case 'cancelled':
          result.cancelled = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int?;
          break;
      }
    }

    return result.build();
  }
}

class _$GgetOwnerDashboardData_getOwnerDashboard_recentActivitySerializer
    implements
        StructuredSerializer<
            GgetOwnerDashboardData_getOwnerDashboard_recentActivity> {
  @override
  final Iterable<Type> types = const [
    GgetOwnerDashboardData_getOwnerDashboard_recentActivity,
    _$GgetOwnerDashboardData_getOwnerDashboard_recentActivity
  ];
  @override
  final String wireName =
      'GgetOwnerDashboardData_getOwnerDashboard_recentActivity';

  @override
  Iterable<Object?> serialize(Serializers serializers,
      GgetOwnerDashboardData_getOwnerDashboard_recentActivity object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      '__typename',
      serializers.serialize(object.G__typename,
          specifiedType: const FullType(String)),
    ];
    Object? value;
    value = object.reservationId;
    if (value != null) {
      result
        ..add('reservationId')
        ..add(serializers.serialize(value, specifiedType: const FullType(int)));
    }
    value = object.confirmationCode;
    if (value != null) {
      result
        ..add('confirmationCode')
        ..add(serializers.serialize(value, specifiedType: const FullType(int)));
    }
    value = object.listId;
    if (value != null) {
      result
        ..add('listId')
        ..add(serializers.serialize(value, specifiedType: const FullType(int)));
    }
    value = object.title;
    if (value != null) {
      result
        ..add('title')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.photo;
    if (value != null) {
      result
        ..add('photo')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.guestName;
    if (value != null) {
      result
        ..add('guestName')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.checkIn;
    if (value != null) {
      result
        ..add('checkIn')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.checkOut;
    if (value != null) {
      result
        ..add('checkOut')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.state;
    if (value != null) {
      result
        ..add('state')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.revenueStatus;
    if (value != null) {
      result
        ..add('revenueStatus')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.netRevenue;
    if (value != null) {
      result
        ..add('netRevenue')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(double)));
    }
    return result;
  }

  @override
  GgetOwnerDashboardData_getOwnerDashboard_recentActivity deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result =
        new GgetOwnerDashboardData_getOwnerDashboard_recentActivityBuilder();

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
        case 'reservationId':
          result.reservationId = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int?;
          break;
        case 'confirmationCode':
          result.confirmationCode = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int?;
          break;
        case 'listId':
          result.listId = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int?;
          break;
        case 'title':
          result.title = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'photo':
          result.photo = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'guestName':
          result.guestName = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'checkIn':
          result.checkIn = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'checkOut':
          result.checkOut = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'state':
          result.state = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'revenueStatus':
          result.revenueStatus = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'netRevenue':
          result.netRevenue = serializers.deserialize(value,
              specifiedType: const FullType(double)) as double?;
          break;
      }
    }

    return result.build();
  }
}

class _$GgetOwnerDashboardData_getOwnerDashboard_operationalSerializer
    implements
        StructuredSerializer<
            GgetOwnerDashboardData_getOwnerDashboard_operational> {
  @override
  final Iterable<Type> types = const [
    GgetOwnerDashboardData_getOwnerDashboard_operational,
    _$GgetOwnerDashboardData_getOwnerDashboard_operational
  ];
  @override
  final String wireName =
      'GgetOwnerDashboardData_getOwnerDashboard_operational';

  @override
  Iterable<Object?> serialize(Serializers serializers,
      GgetOwnerDashboardData_getOwnerDashboard_operational object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      '__typename',
      serializers.serialize(object.G__typename,
          specifiedType: const FullType(String)),
    ];
    Object? value;
    value = object.onlineVehicles;
    if (value != null) {
      result
        ..add('onlineVehicles')
        ..add(serializers.serialize(value, specifiedType: const FullType(int)));
    }
    value = object.pausedVehicles;
    if (value != null) {
      result
        ..add('pausedVehicles')
        ..add(serializers.serialize(value, specifiedType: const FullType(int)));
    }
    value = object.totalDuration;
    if (value != null) {
      result
        ..add('totalDuration')
        ..add(serializers.serialize(value, specifiedType: const FullType(int)));
    }
    value = object.averageDuration;
    if (value != null) {
      result
        ..add('averageDuration')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(double)));
    }
    return result;
  }

  @override
  GgetOwnerDashboardData_getOwnerDashboard_operational deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result =
        new GgetOwnerDashboardData_getOwnerDashboard_operationalBuilder();

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
        case 'onlineVehicles':
          result.onlineVehicles = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int?;
          break;
        case 'pausedVehicles':
          result.pausedVehicles = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int?;
          break;
        case 'totalDuration':
          result.totalDuration = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int?;
          break;
        case 'averageDuration':
          result.averageDuration = serializers.deserialize(value,
              specifiedType: const FullType(double)) as double?;
          break;
      }
    }

    return result.build();
  }
}

class _$GgetOwnerDashboardData extends GgetOwnerDashboardData {
  @override
  final String G__typename;
  @override
  final GgetOwnerDashboardData_getOwnerDashboard? getOwnerDashboard;

  factory _$GgetOwnerDashboardData(
          [void Function(GgetOwnerDashboardDataBuilder)? updates]) =>
      (new GgetOwnerDashboardDataBuilder()..update(updates))._build();

  _$GgetOwnerDashboardData._(
      {required this.G__typename, this.getOwnerDashboard})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        G__typename, r'GgetOwnerDashboardData', 'G__typename');
  }

  @override
  GgetOwnerDashboardData rebuild(
          void Function(GgetOwnerDashboardDataBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GgetOwnerDashboardDataBuilder toBuilder() =>
      new GgetOwnerDashboardDataBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GgetOwnerDashboardData &&
        G__typename == other.G__typename &&
        getOwnerDashboard == other.getOwnerDashboard;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, G__typename.hashCode);
    _$hash = $jc(_$hash, getOwnerDashboard.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'GgetOwnerDashboardData')
          ..add('G__typename', G__typename)
          ..add('getOwnerDashboard', getOwnerDashboard))
        .toString();
  }
}

class GgetOwnerDashboardDataBuilder
    implements Builder<GgetOwnerDashboardData, GgetOwnerDashboardDataBuilder> {
  _$GgetOwnerDashboardData? _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  GgetOwnerDashboardData_getOwnerDashboardBuilder? _getOwnerDashboard;
  GgetOwnerDashboardData_getOwnerDashboardBuilder get getOwnerDashboard =>
      _$this._getOwnerDashboard ??=
          new GgetOwnerDashboardData_getOwnerDashboardBuilder();
  set getOwnerDashboard(
          GgetOwnerDashboardData_getOwnerDashboardBuilder? getOwnerDashboard) =>
      _$this._getOwnerDashboard = getOwnerDashboard;

  GgetOwnerDashboardDataBuilder() {
    GgetOwnerDashboardData._initializeBuilder(this);
  }

  GgetOwnerDashboardDataBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _G__typename = $v.G__typename;
      _getOwnerDashboard = $v.getOwnerDashboard?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GgetOwnerDashboardData other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GgetOwnerDashboardData;
  }

  @override
  void update(void Function(GgetOwnerDashboardDataBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GgetOwnerDashboardData build() => _build();

  _$GgetOwnerDashboardData _build() {
    _$GgetOwnerDashboardData _$result;
    try {
      _$result = _$v ??
          new _$GgetOwnerDashboardData._(
              G__typename: BuiltValueNullFieldError.checkNotNull(
                  G__typename, r'GgetOwnerDashboardData', 'G__typename'),
              getOwnerDashboard: _getOwnerDashboard?.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'getOwnerDashboard';
        _getOwnerDashboard?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'GgetOwnerDashboardData', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

class _$GgetOwnerDashboardData_getOwnerDashboard
    extends GgetOwnerDashboardData_getOwnerDashboard {
  @override
  final String G__typename;
  @override
  final int? status;
  @override
  final String? errorMessage;
  @override
  final String? convertCurrency;
  @override
  final GgetOwnerDashboardData_getOwnerDashboard_period? period;
  @override
  final GgetOwnerDashboardData_getOwnerDashboard_indicators? indicators;
  @override
  final GgetOwnerDashboardData_getOwnerDashboard_revenue? revenue;
  @override
  final GgetOwnerDashboardData_getOwnerDashboard_series? series;
  @override
  final int? vehicleCount;
  @override
  final BuiltList<GgetOwnerDashboardData_getOwnerDashboard_vehicles?>? vehicles;
  @override
  final BuiltList<GgetOwnerDashboardData_getOwnerDashboard_vehicleOptions?>?
      vehicleOptions;
  @override
  final GgetOwnerDashboardData_getOwnerDashboard_reservationsSplit?
      reservationsSplit;
  @override
  final BuiltList<GgetOwnerDashboardData_getOwnerDashboard_recentActivity?>?
      recentActivity;
  @override
  final GgetOwnerDashboardData_getOwnerDashboard_operational? operational;

  factory _$GgetOwnerDashboardData_getOwnerDashboard(
          [void Function(GgetOwnerDashboardData_getOwnerDashboardBuilder)?
              updates]) =>
      (new GgetOwnerDashboardData_getOwnerDashboardBuilder()..update(updates))
          ._build();

  _$GgetOwnerDashboardData_getOwnerDashboard._(
      {required this.G__typename,
      this.status,
      this.errorMessage,
      this.convertCurrency,
      this.period,
      this.indicators,
      this.revenue,
      this.series,
      this.vehicleCount,
      this.vehicles,
      this.vehicleOptions,
      this.reservationsSplit,
      this.recentActivity,
      this.operational})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(G__typename,
        r'GgetOwnerDashboardData_getOwnerDashboard', 'G__typename');
  }

  @override
  GgetOwnerDashboardData_getOwnerDashboard rebuild(
          void Function(GgetOwnerDashboardData_getOwnerDashboardBuilder)
              updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GgetOwnerDashboardData_getOwnerDashboardBuilder toBuilder() =>
      new GgetOwnerDashboardData_getOwnerDashboardBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GgetOwnerDashboardData_getOwnerDashboard &&
        G__typename == other.G__typename &&
        status == other.status &&
        errorMessage == other.errorMessage &&
        convertCurrency == other.convertCurrency &&
        period == other.period &&
        indicators == other.indicators &&
        revenue == other.revenue &&
        series == other.series &&
        vehicleCount == other.vehicleCount &&
        vehicles == other.vehicles &&
        vehicleOptions == other.vehicleOptions &&
        reservationsSplit == other.reservationsSplit &&
        recentActivity == other.recentActivity &&
        operational == other.operational;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, G__typename.hashCode);
    _$hash = $jc(_$hash, status.hashCode);
    _$hash = $jc(_$hash, errorMessage.hashCode);
    _$hash = $jc(_$hash, convertCurrency.hashCode);
    _$hash = $jc(_$hash, period.hashCode);
    _$hash = $jc(_$hash, indicators.hashCode);
    _$hash = $jc(_$hash, revenue.hashCode);
    _$hash = $jc(_$hash, series.hashCode);
    _$hash = $jc(_$hash, vehicleCount.hashCode);
    _$hash = $jc(_$hash, vehicles.hashCode);
    _$hash = $jc(_$hash, vehicleOptions.hashCode);
    _$hash = $jc(_$hash, reservationsSplit.hashCode);
    _$hash = $jc(_$hash, recentActivity.hashCode);
    _$hash = $jc(_$hash, operational.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(
            r'GgetOwnerDashboardData_getOwnerDashboard')
          ..add('G__typename', G__typename)
          ..add('status', status)
          ..add('errorMessage', errorMessage)
          ..add('convertCurrency', convertCurrency)
          ..add('period', period)
          ..add('indicators', indicators)
          ..add('revenue', revenue)
          ..add('series', series)
          ..add('vehicleCount', vehicleCount)
          ..add('vehicles', vehicles)
          ..add('vehicleOptions', vehicleOptions)
          ..add('reservationsSplit', reservationsSplit)
          ..add('recentActivity', recentActivity)
          ..add('operational', operational))
        .toString();
  }
}

class GgetOwnerDashboardData_getOwnerDashboardBuilder
    implements
        Builder<GgetOwnerDashboardData_getOwnerDashboard,
            GgetOwnerDashboardData_getOwnerDashboardBuilder> {
  _$GgetOwnerDashboardData_getOwnerDashboard? _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  int? _status;
  int? get status => _$this._status;
  set status(int? status) => _$this._status = status;

  String? _errorMessage;
  String? get errorMessage => _$this._errorMessage;
  set errorMessage(String? errorMessage) => _$this._errorMessage = errorMessage;

  String? _convertCurrency;
  String? get convertCurrency => _$this._convertCurrency;
  set convertCurrency(String? convertCurrency) =>
      _$this._convertCurrency = convertCurrency;

  GgetOwnerDashboardData_getOwnerDashboard_periodBuilder? _period;
  GgetOwnerDashboardData_getOwnerDashboard_periodBuilder get period =>
      _$this._period ??=
          new GgetOwnerDashboardData_getOwnerDashboard_periodBuilder();
  set period(GgetOwnerDashboardData_getOwnerDashboard_periodBuilder? period) =>
      _$this._period = period;

  GgetOwnerDashboardData_getOwnerDashboard_indicatorsBuilder? _indicators;
  GgetOwnerDashboardData_getOwnerDashboard_indicatorsBuilder get indicators =>
      _$this._indicators ??=
          new GgetOwnerDashboardData_getOwnerDashboard_indicatorsBuilder();
  set indicators(
          GgetOwnerDashboardData_getOwnerDashboard_indicatorsBuilder?
              indicators) =>
      _$this._indicators = indicators;

  GgetOwnerDashboardData_getOwnerDashboard_revenueBuilder? _revenue;
  GgetOwnerDashboardData_getOwnerDashboard_revenueBuilder get revenue =>
      _$this._revenue ??=
          new GgetOwnerDashboardData_getOwnerDashboard_revenueBuilder();
  set revenue(
          GgetOwnerDashboardData_getOwnerDashboard_revenueBuilder? revenue) =>
      _$this._revenue = revenue;

  GgetOwnerDashboardData_getOwnerDashboard_seriesBuilder? _series;
  GgetOwnerDashboardData_getOwnerDashboard_seriesBuilder get series =>
      _$this._series ??=
          new GgetOwnerDashboardData_getOwnerDashboard_seriesBuilder();
  set series(GgetOwnerDashboardData_getOwnerDashboard_seriesBuilder? series) =>
      _$this._series = series;

  int? _vehicleCount;
  int? get vehicleCount => _$this._vehicleCount;
  set vehicleCount(int? vehicleCount) => _$this._vehicleCount = vehicleCount;

  ListBuilder<GgetOwnerDashboardData_getOwnerDashboard_vehicles?>? _vehicles;
  ListBuilder<GgetOwnerDashboardData_getOwnerDashboard_vehicles?>
      get vehicles => _$this._vehicles ??=
          new ListBuilder<GgetOwnerDashboardData_getOwnerDashboard_vehicles?>();
  set vehicles(
          ListBuilder<GgetOwnerDashboardData_getOwnerDashboard_vehicles?>?
              vehicles) =>
      _$this._vehicles = vehicles;

  ListBuilder<GgetOwnerDashboardData_getOwnerDashboard_vehicleOptions?>?
      _vehicleOptions;
  ListBuilder<GgetOwnerDashboardData_getOwnerDashboard_vehicleOptions?>
      get vehicleOptions => _$this._vehicleOptions ??= new ListBuilder<
          GgetOwnerDashboardData_getOwnerDashboard_vehicleOptions?>();
  set vehicleOptions(
          ListBuilder<GgetOwnerDashboardData_getOwnerDashboard_vehicleOptions?>?
              vehicleOptions) =>
      _$this._vehicleOptions = vehicleOptions;

  GgetOwnerDashboardData_getOwnerDashboard_reservationsSplitBuilder?
      _reservationsSplit;
  GgetOwnerDashboardData_getOwnerDashboard_reservationsSplitBuilder
      get reservationsSplit => _$this._reservationsSplit ??=
          new GgetOwnerDashboardData_getOwnerDashboard_reservationsSplitBuilder();
  set reservationsSplit(
          GgetOwnerDashboardData_getOwnerDashboard_reservationsSplitBuilder?
              reservationsSplit) =>
      _$this._reservationsSplit = reservationsSplit;

  ListBuilder<GgetOwnerDashboardData_getOwnerDashboard_recentActivity?>?
      _recentActivity;
  ListBuilder<GgetOwnerDashboardData_getOwnerDashboard_recentActivity?>
      get recentActivity => _$this._recentActivity ??= new ListBuilder<
          GgetOwnerDashboardData_getOwnerDashboard_recentActivity?>();
  set recentActivity(
          ListBuilder<GgetOwnerDashboardData_getOwnerDashboard_recentActivity?>?
              recentActivity) =>
      _$this._recentActivity = recentActivity;

  GgetOwnerDashboardData_getOwnerDashboard_operationalBuilder? _operational;
  GgetOwnerDashboardData_getOwnerDashboard_operationalBuilder get operational =>
      _$this._operational ??=
          new GgetOwnerDashboardData_getOwnerDashboard_operationalBuilder();
  set operational(
          GgetOwnerDashboardData_getOwnerDashboard_operationalBuilder?
              operational) =>
      _$this._operational = operational;

  GgetOwnerDashboardData_getOwnerDashboardBuilder() {
    GgetOwnerDashboardData_getOwnerDashboard._initializeBuilder(this);
  }

  GgetOwnerDashboardData_getOwnerDashboardBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _G__typename = $v.G__typename;
      _status = $v.status;
      _errorMessage = $v.errorMessage;
      _convertCurrency = $v.convertCurrency;
      _period = $v.period?.toBuilder();
      _indicators = $v.indicators?.toBuilder();
      _revenue = $v.revenue?.toBuilder();
      _series = $v.series?.toBuilder();
      _vehicleCount = $v.vehicleCount;
      _vehicles = $v.vehicles?.toBuilder();
      _vehicleOptions = $v.vehicleOptions?.toBuilder();
      _reservationsSplit = $v.reservationsSplit?.toBuilder();
      _recentActivity = $v.recentActivity?.toBuilder();
      _operational = $v.operational?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GgetOwnerDashboardData_getOwnerDashboard other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GgetOwnerDashboardData_getOwnerDashboard;
  }

  @override
  void update(
      void Function(GgetOwnerDashboardData_getOwnerDashboardBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GgetOwnerDashboardData_getOwnerDashboard build() => _build();

  _$GgetOwnerDashboardData_getOwnerDashboard _build() {
    _$GgetOwnerDashboardData_getOwnerDashboard _$result;
    try {
      _$result = _$v ??
          new _$GgetOwnerDashboardData_getOwnerDashboard._(
              G__typename: BuiltValueNullFieldError.checkNotNull(G__typename,
                  r'GgetOwnerDashboardData_getOwnerDashboard', 'G__typename'),
              status: status,
              errorMessage: errorMessage,
              convertCurrency: convertCurrency,
              period: _period?.build(),
              indicators: _indicators?.build(),
              revenue: _revenue?.build(),
              series: _series?.build(),
              vehicleCount: vehicleCount,
              vehicles: _vehicles?.build(),
              vehicleOptions: _vehicleOptions?.build(),
              reservationsSplit: _reservationsSplit?.build(),
              recentActivity: _recentActivity?.build(),
              operational: _operational?.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'period';
        _period?.build();
        _$failedField = 'indicators';
        _indicators?.build();
        _$failedField = 'revenue';
        _revenue?.build();
        _$failedField = 'series';
        _series?.build();

        _$failedField = 'vehicles';
        _vehicles?.build();
        _$failedField = 'vehicleOptions';
        _vehicleOptions?.build();
        _$failedField = 'reservationsSplit';
        _reservationsSplit?.build();
        _$failedField = 'recentActivity';
        _recentActivity?.build();
        _$failedField = 'operational';
        _operational?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'GgetOwnerDashboardData_getOwnerDashboard',
            _$failedField,
            e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

class _$GgetOwnerDashboardData_getOwnerDashboard_period
    extends GgetOwnerDashboardData_getOwnerDashboard_period {
  @override
  final String G__typename;
  @override
  final String? preset;
  @override
  final String? start;
  @override
  final String? end;
  @override
  final int? days;
  @override
  final String? previousStart;
  @override
  final String? previousEnd;
  @override
  final int? previousDays;

  factory _$GgetOwnerDashboardData_getOwnerDashboard_period(
          [void Function(
                  GgetOwnerDashboardData_getOwnerDashboard_periodBuilder)?
              updates]) =>
      (new GgetOwnerDashboardData_getOwnerDashboard_periodBuilder()
            ..update(updates))
          ._build();

  _$GgetOwnerDashboardData_getOwnerDashboard_period._(
      {required this.G__typename,
      this.preset,
      this.start,
      this.end,
      this.days,
      this.previousStart,
      this.previousEnd,
      this.previousDays})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(G__typename,
        r'GgetOwnerDashboardData_getOwnerDashboard_period', 'G__typename');
  }

  @override
  GgetOwnerDashboardData_getOwnerDashboard_period rebuild(
          void Function(GgetOwnerDashboardData_getOwnerDashboard_periodBuilder)
              updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GgetOwnerDashboardData_getOwnerDashboard_periodBuilder toBuilder() =>
      new GgetOwnerDashboardData_getOwnerDashboard_periodBuilder()
        ..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GgetOwnerDashboardData_getOwnerDashboard_period &&
        G__typename == other.G__typename &&
        preset == other.preset &&
        start == other.start &&
        end == other.end &&
        days == other.days &&
        previousStart == other.previousStart &&
        previousEnd == other.previousEnd &&
        previousDays == other.previousDays;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, G__typename.hashCode);
    _$hash = $jc(_$hash, preset.hashCode);
    _$hash = $jc(_$hash, start.hashCode);
    _$hash = $jc(_$hash, end.hashCode);
    _$hash = $jc(_$hash, days.hashCode);
    _$hash = $jc(_$hash, previousStart.hashCode);
    _$hash = $jc(_$hash, previousEnd.hashCode);
    _$hash = $jc(_$hash, previousDays.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(
            r'GgetOwnerDashboardData_getOwnerDashboard_period')
          ..add('G__typename', G__typename)
          ..add('preset', preset)
          ..add('start', start)
          ..add('end', end)
          ..add('days', days)
          ..add('previousStart', previousStart)
          ..add('previousEnd', previousEnd)
          ..add('previousDays', previousDays))
        .toString();
  }
}

class GgetOwnerDashboardData_getOwnerDashboard_periodBuilder
    implements
        Builder<GgetOwnerDashboardData_getOwnerDashboard_period,
            GgetOwnerDashboardData_getOwnerDashboard_periodBuilder> {
  _$GgetOwnerDashboardData_getOwnerDashboard_period? _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  String? _preset;
  String? get preset => _$this._preset;
  set preset(String? preset) => _$this._preset = preset;

  String? _start;
  String? get start => _$this._start;
  set start(String? start) => _$this._start = start;

  String? _end;
  String? get end => _$this._end;
  set end(String? end) => _$this._end = end;

  int? _days;
  int? get days => _$this._days;
  set days(int? days) => _$this._days = days;

  String? _previousStart;
  String? get previousStart => _$this._previousStart;
  set previousStart(String? previousStart) =>
      _$this._previousStart = previousStart;

  String? _previousEnd;
  String? get previousEnd => _$this._previousEnd;
  set previousEnd(String? previousEnd) => _$this._previousEnd = previousEnd;

  int? _previousDays;
  int? get previousDays => _$this._previousDays;
  set previousDays(int? previousDays) => _$this._previousDays = previousDays;

  GgetOwnerDashboardData_getOwnerDashboard_periodBuilder() {
    GgetOwnerDashboardData_getOwnerDashboard_period._initializeBuilder(this);
  }

  GgetOwnerDashboardData_getOwnerDashboard_periodBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _G__typename = $v.G__typename;
      _preset = $v.preset;
      _start = $v.start;
      _end = $v.end;
      _days = $v.days;
      _previousStart = $v.previousStart;
      _previousEnd = $v.previousEnd;
      _previousDays = $v.previousDays;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GgetOwnerDashboardData_getOwnerDashboard_period other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GgetOwnerDashboardData_getOwnerDashboard_period;
  }

  @override
  void update(
      void Function(GgetOwnerDashboardData_getOwnerDashboard_periodBuilder)?
          updates) {
    if (updates != null) updates(this);
  }

  @override
  GgetOwnerDashboardData_getOwnerDashboard_period build() => _build();

  _$GgetOwnerDashboardData_getOwnerDashboard_period _build() {
    final _$result = _$v ??
        new _$GgetOwnerDashboardData_getOwnerDashboard_period._(
            G__typename: BuiltValueNullFieldError.checkNotNull(
                G__typename,
                r'GgetOwnerDashboardData_getOwnerDashboard_period',
                'G__typename'),
            preset: preset,
            start: start,
            end: end,
            days: days,
            previousStart: previousStart,
            previousEnd: previousEnd,
            previousDays: previousDays);
    replace(_$result);
    return _$result;
  }
}

class _$GgetOwnerDashboardData_getOwnerDashboard_indicators
    extends GgetOwnerDashboardData_getOwnerDashboard_indicators {
  @override
  final String G__typename;
  @override
  final GgetOwnerDashboardData_getOwnerDashboard_indicators_netRevenue?
      netRevenue;
  @override
  final GgetOwnerDashboardData_getOwnerDashboard_indicators_volume? volume;
  @override
  final GgetOwnerDashboardData_getOwnerDashboard_indicators_bookings? bookings;
  @override
  final GgetOwnerDashboardData_getOwnerDashboard_indicators_rentedDays?
      rentedDays;
  @override
  final GgetOwnerDashboardData_getOwnerDashboard_indicators_occupancy?
      occupancy;
  @override
  final GgetOwnerDashboardData_getOwnerDashboard_indicators_cancellations?
      cancellations;

  factory _$GgetOwnerDashboardData_getOwnerDashboard_indicators(
          [void Function(
                  GgetOwnerDashboardData_getOwnerDashboard_indicatorsBuilder)?
              updates]) =>
      (new GgetOwnerDashboardData_getOwnerDashboard_indicatorsBuilder()
            ..update(updates))
          ._build();

  _$GgetOwnerDashboardData_getOwnerDashboard_indicators._(
      {required this.G__typename,
      this.netRevenue,
      this.volume,
      this.bookings,
      this.rentedDays,
      this.occupancy,
      this.cancellations})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(G__typename,
        r'GgetOwnerDashboardData_getOwnerDashboard_indicators', 'G__typename');
  }

  @override
  GgetOwnerDashboardData_getOwnerDashboard_indicators rebuild(
          void Function(
                  GgetOwnerDashboardData_getOwnerDashboard_indicatorsBuilder)
              updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GgetOwnerDashboardData_getOwnerDashboard_indicatorsBuilder toBuilder() =>
      new GgetOwnerDashboardData_getOwnerDashboard_indicatorsBuilder()
        ..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GgetOwnerDashboardData_getOwnerDashboard_indicators &&
        G__typename == other.G__typename &&
        netRevenue == other.netRevenue &&
        volume == other.volume &&
        bookings == other.bookings &&
        rentedDays == other.rentedDays &&
        occupancy == other.occupancy &&
        cancellations == other.cancellations;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, G__typename.hashCode);
    _$hash = $jc(_$hash, netRevenue.hashCode);
    _$hash = $jc(_$hash, volume.hashCode);
    _$hash = $jc(_$hash, bookings.hashCode);
    _$hash = $jc(_$hash, rentedDays.hashCode);
    _$hash = $jc(_$hash, occupancy.hashCode);
    _$hash = $jc(_$hash, cancellations.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(
            r'GgetOwnerDashboardData_getOwnerDashboard_indicators')
          ..add('G__typename', G__typename)
          ..add('netRevenue', netRevenue)
          ..add('volume', volume)
          ..add('bookings', bookings)
          ..add('rentedDays', rentedDays)
          ..add('occupancy', occupancy)
          ..add('cancellations', cancellations))
        .toString();
  }
}

class GgetOwnerDashboardData_getOwnerDashboard_indicatorsBuilder
    implements
        Builder<GgetOwnerDashboardData_getOwnerDashboard_indicators,
            GgetOwnerDashboardData_getOwnerDashboard_indicatorsBuilder> {
  _$GgetOwnerDashboardData_getOwnerDashboard_indicators? _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  GgetOwnerDashboardData_getOwnerDashboard_indicators_netRevenueBuilder?
      _netRevenue;
  GgetOwnerDashboardData_getOwnerDashboard_indicators_netRevenueBuilder
      get netRevenue => _$this._netRevenue ??=
          new GgetOwnerDashboardData_getOwnerDashboard_indicators_netRevenueBuilder();
  set netRevenue(
          GgetOwnerDashboardData_getOwnerDashboard_indicators_netRevenueBuilder?
              netRevenue) =>
      _$this._netRevenue = netRevenue;

  GgetOwnerDashboardData_getOwnerDashboard_indicators_volumeBuilder? _volume;
  GgetOwnerDashboardData_getOwnerDashboard_indicators_volumeBuilder
      get volume => _$this._volume ??=
          new GgetOwnerDashboardData_getOwnerDashboard_indicators_volumeBuilder();
  set volume(
          GgetOwnerDashboardData_getOwnerDashboard_indicators_volumeBuilder?
              volume) =>
      _$this._volume = volume;

  GgetOwnerDashboardData_getOwnerDashboard_indicators_bookingsBuilder?
      _bookings;
  GgetOwnerDashboardData_getOwnerDashboard_indicators_bookingsBuilder
      get bookings => _$this._bookings ??=
          new GgetOwnerDashboardData_getOwnerDashboard_indicators_bookingsBuilder();
  set bookings(
          GgetOwnerDashboardData_getOwnerDashboard_indicators_bookingsBuilder?
              bookings) =>
      _$this._bookings = bookings;

  GgetOwnerDashboardData_getOwnerDashboard_indicators_rentedDaysBuilder?
      _rentedDays;
  GgetOwnerDashboardData_getOwnerDashboard_indicators_rentedDaysBuilder
      get rentedDays => _$this._rentedDays ??=
          new GgetOwnerDashboardData_getOwnerDashboard_indicators_rentedDaysBuilder();
  set rentedDays(
          GgetOwnerDashboardData_getOwnerDashboard_indicators_rentedDaysBuilder?
              rentedDays) =>
      _$this._rentedDays = rentedDays;

  GgetOwnerDashboardData_getOwnerDashboard_indicators_occupancyBuilder?
      _occupancy;
  GgetOwnerDashboardData_getOwnerDashboard_indicators_occupancyBuilder
      get occupancy => _$this._occupancy ??=
          new GgetOwnerDashboardData_getOwnerDashboard_indicators_occupancyBuilder();
  set occupancy(
          GgetOwnerDashboardData_getOwnerDashboard_indicators_occupancyBuilder?
              occupancy) =>
      _$this._occupancy = occupancy;

  GgetOwnerDashboardData_getOwnerDashboard_indicators_cancellationsBuilder?
      _cancellations;
  GgetOwnerDashboardData_getOwnerDashboard_indicators_cancellationsBuilder
      get cancellations => _$this._cancellations ??=
          new GgetOwnerDashboardData_getOwnerDashboard_indicators_cancellationsBuilder();
  set cancellations(
          GgetOwnerDashboardData_getOwnerDashboard_indicators_cancellationsBuilder?
              cancellations) =>
      _$this._cancellations = cancellations;

  GgetOwnerDashboardData_getOwnerDashboard_indicatorsBuilder() {
    GgetOwnerDashboardData_getOwnerDashboard_indicators._initializeBuilder(
        this);
  }

  GgetOwnerDashboardData_getOwnerDashboard_indicatorsBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _G__typename = $v.G__typename;
      _netRevenue = $v.netRevenue?.toBuilder();
      _volume = $v.volume?.toBuilder();
      _bookings = $v.bookings?.toBuilder();
      _rentedDays = $v.rentedDays?.toBuilder();
      _occupancy = $v.occupancy?.toBuilder();
      _cancellations = $v.cancellations?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GgetOwnerDashboardData_getOwnerDashboard_indicators other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GgetOwnerDashboardData_getOwnerDashboard_indicators;
  }

  @override
  void update(
      void Function(GgetOwnerDashboardData_getOwnerDashboard_indicatorsBuilder)?
          updates) {
    if (updates != null) updates(this);
  }

  @override
  GgetOwnerDashboardData_getOwnerDashboard_indicators build() => _build();

  _$GgetOwnerDashboardData_getOwnerDashboard_indicators _build() {
    _$GgetOwnerDashboardData_getOwnerDashboard_indicators _$result;
    try {
      _$result = _$v ??
          new _$GgetOwnerDashboardData_getOwnerDashboard_indicators._(
              G__typename: BuiltValueNullFieldError.checkNotNull(
                  G__typename,
                  r'GgetOwnerDashboardData_getOwnerDashboard_indicators',
                  'G__typename'),
              netRevenue: _netRevenue?.build(),
              volume: _volume?.build(),
              bookings: _bookings?.build(),
              rentedDays: _rentedDays?.build(),
              occupancy: _occupancy?.build(),
              cancellations: _cancellations?.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'netRevenue';
        _netRevenue?.build();
        _$failedField = 'volume';
        _volume?.build();
        _$failedField = 'bookings';
        _bookings?.build();
        _$failedField = 'rentedDays';
        _rentedDays?.build();
        _$failedField = 'occupancy';
        _occupancy?.build();
        _$failedField = 'cancellations';
        _cancellations?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'GgetOwnerDashboardData_getOwnerDashboard_indicators',
            _$failedField,
            e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

class _$GgetOwnerDashboardData_getOwnerDashboard_indicators_netRevenue
    extends GgetOwnerDashboardData_getOwnerDashboard_indicators_netRevenue {
  @override
  final String G__typename;
  @override
  final double? value;
  @override
  final double? previous;
  @override
  final double? change;
  @override
  final String? trend;
  @override
  final bool? favorable;

  factory _$GgetOwnerDashboardData_getOwnerDashboard_indicators_netRevenue(
          [void Function(
                  GgetOwnerDashboardData_getOwnerDashboard_indicators_netRevenueBuilder)?
              updates]) =>
      (new GgetOwnerDashboardData_getOwnerDashboard_indicators_netRevenueBuilder()
            ..update(updates))
          ._build();

  _$GgetOwnerDashboardData_getOwnerDashboard_indicators_netRevenue._(
      {required this.G__typename,
      this.value,
      this.previous,
      this.change,
      this.trend,
      this.favorable})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        G__typename,
        r'GgetOwnerDashboardData_getOwnerDashboard_indicators_netRevenue',
        'G__typename');
  }

  @override
  GgetOwnerDashboardData_getOwnerDashboard_indicators_netRevenue rebuild(
          void Function(
                  GgetOwnerDashboardData_getOwnerDashboard_indicators_netRevenueBuilder)
              updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GgetOwnerDashboardData_getOwnerDashboard_indicators_netRevenueBuilder
      toBuilder() =>
          new GgetOwnerDashboardData_getOwnerDashboard_indicators_netRevenueBuilder()
            ..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other
            is GgetOwnerDashboardData_getOwnerDashboard_indicators_netRevenue &&
        G__typename == other.G__typename &&
        value == other.value &&
        previous == other.previous &&
        change == other.change &&
        trend == other.trend &&
        favorable == other.favorable;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, G__typename.hashCode);
    _$hash = $jc(_$hash, value.hashCode);
    _$hash = $jc(_$hash, previous.hashCode);
    _$hash = $jc(_$hash, change.hashCode);
    _$hash = $jc(_$hash, trend.hashCode);
    _$hash = $jc(_$hash, favorable.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(
            r'GgetOwnerDashboardData_getOwnerDashboard_indicators_netRevenue')
          ..add('G__typename', G__typename)
          ..add('value', value)
          ..add('previous', previous)
          ..add('change', change)
          ..add('trend', trend)
          ..add('favorable', favorable))
        .toString();
  }
}

class GgetOwnerDashboardData_getOwnerDashboard_indicators_netRevenueBuilder
    implements
        Builder<GgetOwnerDashboardData_getOwnerDashboard_indicators_netRevenue,
            GgetOwnerDashboardData_getOwnerDashboard_indicators_netRevenueBuilder> {
  _$GgetOwnerDashboardData_getOwnerDashboard_indicators_netRevenue? _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  double? _value;
  double? get value => _$this._value;
  set value(double? value) => _$this._value = value;

  double? _previous;
  double? get previous => _$this._previous;
  set previous(double? previous) => _$this._previous = previous;

  double? _change;
  double? get change => _$this._change;
  set change(double? change) => _$this._change = change;

  String? _trend;
  String? get trend => _$this._trend;
  set trend(String? trend) => _$this._trend = trend;

  bool? _favorable;
  bool? get favorable => _$this._favorable;
  set favorable(bool? favorable) => _$this._favorable = favorable;

  GgetOwnerDashboardData_getOwnerDashboard_indicators_netRevenueBuilder() {
    GgetOwnerDashboardData_getOwnerDashboard_indicators_netRevenue
        ._initializeBuilder(this);
  }

  GgetOwnerDashboardData_getOwnerDashboard_indicators_netRevenueBuilder
      get _$this {
    final $v = _$v;
    if ($v != null) {
      _G__typename = $v.G__typename;
      _value = $v.value;
      _previous = $v.previous;
      _change = $v.change;
      _trend = $v.trend;
      _favorable = $v.favorable;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(
      GgetOwnerDashboardData_getOwnerDashboard_indicators_netRevenue other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other
        as _$GgetOwnerDashboardData_getOwnerDashboard_indicators_netRevenue;
  }

  @override
  void update(
      void Function(
              GgetOwnerDashboardData_getOwnerDashboard_indicators_netRevenueBuilder)?
          updates) {
    if (updates != null) updates(this);
  }

  @override
  GgetOwnerDashboardData_getOwnerDashboard_indicators_netRevenue build() =>
      _build();

  _$GgetOwnerDashboardData_getOwnerDashboard_indicators_netRevenue _build() {
    final _$result = _$v ??
        new _$GgetOwnerDashboardData_getOwnerDashboard_indicators_netRevenue._(
            G__typename: BuiltValueNullFieldError.checkNotNull(
                G__typename,
                r'GgetOwnerDashboardData_getOwnerDashboard_indicators_netRevenue',
                'G__typename'),
            value: value,
            previous: previous,
            change: change,
            trend: trend,
            favorable: favorable);
    replace(_$result);
    return _$result;
  }
}

class _$GgetOwnerDashboardData_getOwnerDashboard_indicators_volume
    extends GgetOwnerDashboardData_getOwnerDashboard_indicators_volume {
  @override
  final String G__typename;
  @override
  final double? value;
  @override
  final double? previous;
  @override
  final double? change;
  @override
  final String? trend;
  @override
  final bool? favorable;

  factory _$GgetOwnerDashboardData_getOwnerDashboard_indicators_volume(
          [void Function(
                  GgetOwnerDashboardData_getOwnerDashboard_indicators_volumeBuilder)?
              updates]) =>
      (new GgetOwnerDashboardData_getOwnerDashboard_indicators_volumeBuilder()
            ..update(updates))
          ._build();

  _$GgetOwnerDashboardData_getOwnerDashboard_indicators_volume._(
      {required this.G__typename,
      this.value,
      this.previous,
      this.change,
      this.trend,
      this.favorable})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        G__typename,
        r'GgetOwnerDashboardData_getOwnerDashboard_indicators_volume',
        'G__typename');
  }

  @override
  GgetOwnerDashboardData_getOwnerDashboard_indicators_volume rebuild(
          void Function(
                  GgetOwnerDashboardData_getOwnerDashboard_indicators_volumeBuilder)
              updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GgetOwnerDashboardData_getOwnerDashboard_indicators_volumeBuilder
      toBuilder() =>
          new GgetOwnerDashboardData_getOwnerDashboard_indicators_volumeBuilder()
            ..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other
            is GgetOwnerDashboardData_getOwnerDashboard_indicators_volume &&
        G__typename == other.G__typename &&
        value == other.value &&
        previous == other.previous &&
        change == other.change &&
        trend == other.trend &&
        favorable == other.favorable;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, G__typename.hashCode);
    _$hash = $jc(_$hash, value.hashCode);
    _$hash = $jc(_$hash, previous.hashCode);
    _$hash = $jc(_$hash, change.hashCode);
    _$hash = $jc(_$hash, trend.hashCode);
    _$hash = $jc(_$hash, favorable.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(
            r'GgetOwnerDashboardData_getOwnerDashboard_indicators_volume')
          ..add('G__typename', G__typename)
          ..add('value', value)
          ..add('previous', previous)
          ..add('change', change)
          ..add('trend', trend)
          ..add('favorable', favorable))
        .toString();
  }
}

class GgetOwnerDashboardData_getOwnerDashboard_indicators_volumeBuilder
    implements
        Builder<GgetOwnerDashboardData_getOwnerDashboard_indicators_volume,
            GgetOwnerDashboardData_getOwnerDashboard_indicators_volumeBuilder> {
  _$GgetOwnerDashboardData_getOwnerDashboard_indicators_volume? _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  double? _value;
  double? get value => _$this._value;
  set value(double? value) => _$this._value = value;

  double? _previous;
  double? get previous => _$this._previous;
  set previous(double? previous) => _$this._previous = previous;

  double? _change;
  double? get change => _$this._change;
  set change(double? change) => _$this._change = change;

  String? _trend;
  String? get trend => _$this._trend;
  set trend(String? trend) => _$this._trend = trend;

  bool? _favorable;
  bool? get favorable => _$this._favorable;
  set favorable(bool? favorable) => _$this._favorable = favorable;

  GgetOwnerDashboardData_getOwnerDashboard_indicators_volumeBuilder() {
    GgetOwnerDashboardData_getOwnerDashboard_indicators_volume
        ._initializeBuilder(this);
  }

  GgetOwnerDashboardData_getOwnerDashboard_indicators_volumeBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _G__typename = $v.G__typename;
      _value = $v.value;
      _previous = $v.previous;
      _change = $v.change;
      _trend = $v.trend;
      _favorable = $v.favorable;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(
      GgetOwnerDashboardData_getOwnerDashboard_indicators_volume other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GgetOwnerDashboardData_getOwnerDashboard_indicators_volume;
  }

  @override
  void update(
      void Function(
              GgetOwnerDashboardData_getOwnerDashboard_indicators_volumeBuilder)?
          updates) {
    if (updates != null) updates(this);
  }

  @override
  GgetOwnerDashboardData_getOwnerDashboard_indicators_volume build() =>
      _build();

  _$GgetOwnerDashboardData_getOwnerDashboard_indicators_volume _build() {
    final _$result = _$v ??
        new _$GgetOwnerDashboardData_getOwnerDashboard_indicators_volume._(
            G__typename: BuiltValueNullFieldError.checkNotNull(
                G__typename,
                r'GgetOwnerDashboardData_getOwnerDashboard_indicators_volume',
                'G__typename'),
            value: value,
            previous: previous,
            change: change,
            trend: trend,
            favorable: favorable);
    replace(_$result);
    return _$result;
  }
}

class _$GgetOwnerDashboardData_getOwnerDashboard_indicators_bookings
    extends GgetOwnerDashboardData_getOwnerDashboard_indicators_bookings {
  @override
  final String G__typename;
  @override
  final double? value;
  @override
  final double? previous;
  @override
  final double? change;
  @override
  final String? trend;
  @override
  final bool? favorable;

  factory _$GgetOwnerDashboardData_getOwnerDashboard_indicators_bookings(
          [void Function(
                  GgetOwnerDashboardData_getOwnerDashboard_indicators_bookingsBuilder)?
              updates]) =>
      (new GgetOwnerDashboardData_getOwnerDashboard_indicators_bookingsBuilder()
            ..update(updates))
          ._build();

  _$GgetOwnerDashboardData_getOwnerDashboard_indicators_bookings._(
      {required this.G__typename,
      this.value,
      this.previous,
      this.change,
      this.trend,
      this.favorable})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        G__typename,
        r'GgetOwnerDashboardData_getOwnerDashboard_indicators_bookings',
        'G__typename');
  }

  @override
  GgetOwnerDashboardData_getOwnerDashboard_indicators_bookings rebuild(
          void Function(
                  GgetOwnerDashboardData_getOwnerDashboard_indicators_bookingsBuilder)
              updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GgetOwnerDashboardData_getOwnerDashboard_indicators_bookingsBuilder
      toBuilder() =>
          new GgetOwnerDashboardData_getOwnerDashboard_indicators_bookingsBuilder()
            ..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other
            is GgetOwnerDashboardData_getOwnerDashboard_indicators_bookings &&
        G__typename == other.G__typename &&
        value == other.value &&
        previous == other.previous &&
        change == other.change &&
        trend == other.trend &&
        favorable == other.favorable;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, G__typename.hashCode);
    _$hash = $jc(_$hash, value.hashCode);
    _$hash = $jc(_$hash, previous.hashCode);
    _$hash = $jc(_$hash, change.hashCode);
    _$hash = $jc(_$hash, trend.hashCode);
    _$hash = $jc(_$hash, favorable.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(
            r'GgetOwnerDashboardData_getOwnerDashboard_indicators_bookings')
          ..add('G__typename', G__typename)
          ..add('value', value)
          ..add('previous', previous)
          ..add('change', change)
          ..add('trend', trend)
          ..add('favorable', favorable))
        .toString();
  }
}

class GgetOwnerDashboardData_getOwnerDashboard_indicators_bookingsBuilder
    implements
        Builder<GgetOwnerDashboardData_getOwnerDashboard_indicators_bookings,
            GgetOwnerDashboardData_getOwnerDashboard_indicators_bookingsBuilder> {
  _$GgetOwnerDashboardData_getOwnerDashboard_indicators_bookings? _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  double? _value;
  double? get value => _$this._value;
  set value(double? value) => _$this._value = value;

  double? _previous;
  double? get previous => _$this._previous;
  set previous(double? previous) => _$this._previous = previous;

  double? _change;
  double? get change => _$this._change;
  set change(double? change) => _$this._change = change;

  String? _trend;
  String? get trend => _$this._trend;
  set trend(String? trend) => _$this._trend = trend;

  bool? _favorable;
  bool? get favorable => _$this._favorable;
  set favorable(bool? favorable) => _$this._favorable = favorable;

  GgetOwnerDashboardData_getOwnerDashboard_indicators_bookingsBuilder() {
    GgetOwnerDashboardData_getOwnerDashboard_indicators_bookings
        ._initializeBuilder(this);
  }

  GgetOwnerDashboardData_getOwnerDashboard_indicators_bookingsBuilder
      get _$this {
    final $v = _$v;
    if ($v != null) {
      _G__typename = $v.G__typename;
      _value = $v.value;
      _previous = $v.previous;
      _change = $v.change;
      _trend = $v.trend;
      _favorable = $v.favorable;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(
      GgetOwnerDashboardData_getOwnerDashboard_indicators_bookings other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v =
        other as _$GgetOwnerDashboardData_getOwnerDashboard_indicators_bookings;
  }

  @override
  void update(
      void Function(
              GgetOwnerDashboardData_getOwnerDashboard_indicators_bookingsBuilder)?
          updates) {
    if (updates != null) updates(this);
  }

  @override
  GgetOwnerDashboardData_getOwnerDashboard_indicators_bookings build() =>
      _build();

  _$GgetOwnerDashboardData_getOwnerDashboard_indicators_bookings _build() {
    final _$result = _$v ??
        new _$GgetOwnerDashboardData_getOwnerDashboard_indicators_bookings._(
            G__typename: BuiltValueNullFieldError.checkNotNull(
                G__typename,
                r'GgetOwnerDashboardData_getOwnerDashboard_indicators_bookings',
                'G__typename'),
            value: value,
            previous: previous,
            change: change,
            trend: trend,
            favorable: favorable);
    replace(_$result);
    return _$result;
  }
}

class _$GgetOwnerDashboardData_getOwnerDashboard_indicators_rentedDays
    extends GgetOwnerDashboardData_getOwnerDashboard_indicators_rentedDays {
  @override
  final String G__typename;
  @override
  final double? value;
  @override
  final double? previous;
  @override
  final double? change;
  @override
  final String? trend;
  @override
  final bool? favorable;

  factory _$GgetOwnerDashboardData_getOwnerDashboard_indicators_rentedDays(
          [void Function(
                  GgetOwnerDashboardData_getOwnerDashboard_indicators_rentedDaysBuilder)?
              updates]) =>
      (new GgetOwnerDashboardData_getOwnerDashboard_indicators_rentedDaysBuilder()
            ..update(updates))
          ._build();

  _$GgetOwnerDashboardData_getOwnerDashboard_indicators_rentedDays._(
      {required this.G__typename,
      this.value,
      this.previous,
      this.change,
      this.trend,
      this.favorable})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        G__typename,
        r'GgetOwnerDashboardData_getOwnerDashboard_indicators_rentedDays',
        'G__typename');
  }

  @override
  GgetOwnerDashboardData_getOwnerDashboard_indicators_rentedDays rebuild(
          void Function(
                  GgetOwnerDashboardData_getOwnerDashboard_indicators_rentedDaysBuilder)
              updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GgetOwnerDashboardData_getOwnerDashboard_indicators_rentedDaysBuilder
      toBuilder() =>
          new GgetOwnerDashboardData_getOwnerDashboard_indicators_rentedDaysBuilder()
            ..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other
            is GgetOwnerDashboardData_getOwnerDashboard_indicators_rentedDays &&
        G__typename == other.G__typename &&
        value == other.value &&
        previous == other.previous &&
        change == other.change &&
        trend == other.trend &&
        favorable == other.favorable;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, G__typename.hashCode);
    _$hash = $jc(_$hash, value.hashCode);
    _$hash = $jc(_$hash, previous.hashCode);
    _$hash = $jc(_$hash, change.hashCode);
    _$hash = $jc(_$hash, trend.hashCode);
    _$hash = $jc(_$hash, favorable.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(
            r'GgetOwnerDashboardData_getOwnerDashboard_indicators_rentedDays')
          ..add('G__typename', G__typename)
          ..add('value', value)
          ..add('previous', previous)
          ..add('change', change)
          ..add('trend', trend)
          ..add('favorable', favorable))
        .toString();
  }
}

class GgetOwnerDashboardData_getOwnerDashboard_indicators_rentedDaysBuilder
    implements
        Builder<GgetOwnerDashboardData_getOwnerDashboard_indicators_rentedDays,
            GgetOwnerDashboardData_getOwnerDashboard_indicators_rentedDaysBuilder> {
  _$GgetOwnerDashboardData_getOwnerDashboard_indicators_rentedDays? _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  double? _value;
  double? get value => _$this._value;
  set value(double? value) => _$this._value = value;

  double? _previous;
  double? get previous => _$this._previous;
  set previous(double? previous) => _$this._previous = previous;

  double? _change;
  double? get change => _$this._change;
  set change(double? change) => _$this._change = change;

  String? _trend;
  String? get trend => _$this._trend;
  set trend(String? trend) => _$this._trend = trend;

  bool? _favorable;
  bool? get favorable => _$this._favorable;
  set favorable(bool? favorable) => _$this._favorable = favorable;

  GgetOwnerDashboardData_getOwnerDashboard_indicators_rentedDaysBuilder() {
    GgetOwnerDashboardData_getOwnerDashboard_indicators_rentedDays
        ._initializeBuilder(this);
  }

  GgetOwnerDashboardData_getOwnerDashboard_indicators_rentedDaysBuilder
      get _$this {
    final $v = _$v;
    if ($v != null) {
      _G__typename = $v.G__typename;
      _value = $v.value;
      _previous = $v.previous;
      _change = $v.change;
      _trend = $v.trend;
      _favorable = $v.favorable;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(
      GgetOwnerDashboardData_getOwnerDashboard_indicators_rentedDays other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other
        as _$GgetOwnerDashboardData_getOwnerDashboard_indicators_rentedDays;
  }

  @override
  void update(
      void Function(
              GgetOwnerDashboardData_getOwnerDashboard_indicators_rentedDaysBuilder)?
          updates) {
    if (updates != null) updates(this);
  }

  @override
  GgetOwnerDashboardData_getOwnerDashboard_indicators_rentedDays build() =>
      _build();

  _$GgetOwnerDashboardData_getOwnerDashboard_indicators_rentedDays _build() {
    final _$result = _$v ??
        new _$GgetOwnerDashboardData_getOwnerDashboard_indicators_rentedDays._(
            G__typename: BuiltValueNullFieldError.checkNotNull(
                G__typename,
                r'GgetOwnerDashboardData_getOwnerDashboard_indicators_rentedDays',
                'G__typename'),
            value: value,
            previous: previous,
            change: change,
            trend: trend,
            favorable: favorable);
    replace(_$result);
    return _$result;
  }
}

class _$GgetOwnerDashboardData_getOwnerDashboard_indicators_occupancy
    extends GgetOwnerDashboardData_getOwnerDashboard_indicators_occupancy {
  @override
  final String G__typename;
  @override
  final double? value;
  @override
  final double? previous;
  @override
  final double? change;
  @override
  final String? trend;
  @override
  final bool? favorable;

  factory _$GgetOwnerDashboardData_getOwnerDashboard_indicators_occupancy(
          [void Function(
                  GgetOwnerDashboardData_getOwnerDashboard_indicators_occupancyBuilder)?
              updates]) =>
      (new GgetOwnerDashboardData_getOwnerDashboard_indicators_occupancyBuilder()
            ..update(updates))
          ._build();

  _$GgetOwnerDashboardData_getOwnerDashboard_indicators_occupancy._(
      {required this.G__typename,
      this.value,
      this.previous,
      this.change,
      this.trend,
      this.favorable})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        G__typename,
        r'GgetOwnerDashboardData_getOwnerDashboard_indicators_occupancy',
        'G__typename');
  }

  @override
  GgetOwnerDashboardData_getOwnerDashboard_indicators_occupancy rebuild(
          void Function(
                  GgetOwnerDashboardData_getOwnerDashboard_indicators_occupancyBuilder)
              updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GgetOwnerDashboardData_getOwnerDashboard_indicators_occupancyBuilder
      toBuilder() =>
          new GgetOwnerDashboardData_getOwnerDashboard_indicators_occupancyBuilder()
            ..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other
            is GgetOwnerDashboardData_getOwnerDashboard_indicators_occupancy &&
        G__typename == other.G__typename &&
        value == other.value &&
        previous == other.previous &&
        change == other.change &&
        trend == other.trend &&
        favorable == other.favorable;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, G__typename.hashCode);
    _$hash = $jc(_$hash, value.hashCode);
    _$hash = $jc(_$hash, previous.hashCode);
    _$hash = $jc(_$hash, change.hashCode);
    _$hash = $jc(_$hash, trend.hashCode);
    _$hash = $jc(_$hash, favorable.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(
            r'GgetOwnerDashboardData_getOwnerDashboard_indicators_occupancy')
          ..add('G__typename', G__typename)
          ..add('value', value)
          ..add('previous', previous)
          ..add('change', change)
          ..add('trend', trend)
          ..add('favorable', favorable))
        .toString();
  }
}

class GgetOwnerDashboardData_getOwnerDashboard_indicators_occupancyBuilder
    implements
        Builder<GgetOwnerDashboardData_getOwnerDashboard_indicators_occupancy,
            GgetOwnerDashboardData_getOwnerDashboard_indicators_occupancyBuilder> {
  _$GgetOwnerDashboardData_getOwnerDashboard_indicators_occupancy? _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  double? _value;
  double? get value => _$this._value;
  set value(double? value) => _$this._value = value;

  double? _previous;
  double? get previous => _$this._previous;
  set previous(double? previous) => _$this._previous = previous;

  double? _change;
  double? get change => _$this._change;
  set change(double? change) => _$this._change = change;

  String? _trend;
  String? get trend => _$this._trend;
  set trend(String? trend) => _$this._trend = trend;

  bool? _favorable;
  bool? get favorable => _$this._favorable;
  set favorable(bool? favorable) => _$this._favorable = favorable;

  GgetOwnerDashboardData_getOwnerDashboard_indicators_occupancyBuilder() {
    GgetOwnerDashboardData_getOwnerDashboard_indicators_occupancy
        ._initializeBuilder(this);
  }

  GgetOwnerDashboardData_getOwnerDashboard_indicators_occupancyBuilder
      get _$this {
    final $v = _$v;
    if ($v != null) {
      _G__typename = $v.G__typename;
      _value = $v.value;
      _previous = $v.previous;
      _change = $v.change;
      _trend = $v.trend;
      _favorable = $v.favorable;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(
      GgetOwnerDashboardData_getOwnerDashboard_indicators_occupancy other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other
        as _$GgetOwnerDashboardData_getOwnerDashboard_indicators_occupancy;
  }

  @override
  void update(
      void Function(
              GgetOwnerDashboardData_getOwnerDashboard_indicators_occupancyBuilder)?
          updates) {
    if (updates != null) updates(this);
  }

  @override
  GgetOwnerDashboardData_getOwnerDashboard_indicators_occupancy build() =>
      _build();

  _$GgetOwnerDashboardData_getOwnerDashboard_indicators_occupancy _build() {
    final _$result = _$v ??
        new _$GgetOwnerDashboardData_getOwnerDashboard_indicators_occupancy._(
            G__typename: BuiltValueNullFieldError.checkNotNull(
                G__typename,
                r'GgetOwnerDashboardData_getOwnerDashboard_indicators_occupancy',
                'G__typename'),
            value: value,
            previous: previous,
            change: change,
            trend: trend,
            favorable: favorable);
    replace(_$result);
    return _$result;
  }
}

class _$GgetOwnerDashboardData_getOwnerDashboard_indicators_cancellations
    extends GgetOwnerDashboardData_getOwnerDashboard_indicators_cancellations {
  @override
  final String G__typename;
  @override
  final double? value;
  @override
  final double? previous;
  @override
  final double? change;
  @override
  final String? trend;
  @override
  final bool? favorable;

  factory _$GgetOwnerDashboardData_getOwnerDashboard_indicators_cancellations(
          [void Function(
                  GgetOwnerDashboardData_getOwnerDashboard_indicators_cancellationsBuilder)?
              updates]) =>
      (new GgetOwnerDashboardData_getOwnerDashboard_indicators_cancellationsBuilder()
            ..update(updates))
          ._build();

  _$GgetOwnerDashboardData_getOwnerDashboard_indicators_cancellations._(
      {required this.G__typename,
      this.value,
      this.previous,
      this.change,
      this.trend,
      this.favorable})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        G__typename,
        r'GgetOwnerDashboardData_getOwnerDashboard_indicators_cancellations',
        'G__typename');
  }

  @override
  GgetOwnerDashboardData_getOwnerDashboard_indicators_cancellations rebuild(
          void Function(
                  GgetOwnerDashboardData_getOwnerDashboard_indicators_cancellationsBuilder)
              updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GgetOwnerDashboardData_getOwnerDashboard_indicators_cancellationsBuilder
      toBuilder() =>
          new GgetOwnerDashboardData_getOwnerDashboard_indicators_cancellationsBuilder()
            ..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other
            is GgetOwnerDashboardData_getOwnerDashboard_indicators_cancellations &&
        G__typename == other.G__typename &&
        value == other.value &&
        previous == other.previous &&
        change == other.change &&
        trend == other.trend &&
        favorable == other.favorable;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, G__typename.hashCode);
    _$hash = $jc(_$hash, value.hashCode);
    _$hash = $jc(_$hash, previous.hashCode);
    _$hash = $jc(_$hash, change.hashCode);
    _$hash = $jc(_$hash, trend.hashCode);
    _$hash = $jc(_$hash, favorable.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(
            r'GgetOwnerDashboardData_getOwnerDashboard_indicators_cancellations')
          ..add('G__typename', G__typename)
          ..add('value', value)
          ..add('previous', previous)
          ..add('change', change)
          ..add('trend', trend)
          ..add('favorable', favorable))
        .toString();
  }
}

class GgetOwnerDashboardData_getOwnerDashboard_indicators_cancellationsBuilder
    implements
        Builder<
            GgetOwnerDashboardData_getOwnerDashboard_indicators_cancellations,
            GgetOwnerDashboardData_getOwnerDashboard_indicators_cancellationsBuilder> {
  _$GgetOwnerDashboardData_getOwnerDashboard_indicators_cancellations? _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  double? _value;
  double? get value => _$this._value;
  set value(double? value) => _$this._value = value;

  double? _previous;
  double? get previous => _$this._previous;
  set previous(double? previous) => _$this._previous = previous;

  double? _change;
  double? get change => _$this._change;
  set change(double? change) => _$this._change = change;

  String? _trend;
  String? get trend => _$this._trend;
  set trend(String? trend) => _$this._trend = trend;

  bool? _favorable;
  bool? get favorable => _$this._favorable;
  set favorable(bool? favorable) => _$this._favorable = favorable;

  GgetOwnerDashboardData_getOwnerDashboard_indicators_cancellationsBuilder() {
    GgetOwnerDashboardData_getOwnerDashboard_indicators_cancellations
        ._initializeBuilder(this);
  }

  GgetOwnerDashboardData_getOwnerDashboard_indicators_cancellationsBuilder
      get _$this {
    final $v = _$v;
    if ($v != null) {
      _G__typename = $v.G__typename;
      _value = $v.value;
      _previous = $v.previous;
      _change = $v.change;
      _trend = $v.trend;
      _favorable = $v.favorable;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(
      GgetOwnerDashboardData_getOwnerDashboard_indicators_cancellations other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other
        as _$GgetOwnerDashboardData_getOwnerDashboard_indicators_cancellations;
  }

  @override
  void update(
      void Function(
              GgetOwnerDashboardData_getOwnerDashboard_indicators_cancellationsBuilder)?
          updates) {
    if (updates != null) updates(this);
  }

  @override
  GgetOwnerDashboardData_getOwnerDashboard_indicators_cancellations build() =>
      _build();

  _$GgetOwnerDashboardData_getOwnerDashboard_indicators_cancellations _build() {
    final _$result = _$v ??
        new _$GgetOwnerDashboardData_getOwnerDashboard_indicators_cancellations
            ._(
            G__typename: BuiltValueNullFieldError.checkNotNull(
                G__typename,
                r'GgetOwnerDashboardData_getOwnerDashboard_indicators_cancellations',
                'G__typename'),
            value: value,
            previous: previous,
            change: change,
            trend: trend,
            favorable: favorable);
    replace(_$result);
    return _$result;
  }
}

class _$GgetOwnerDashboardData_getOwnerDashboard_revenue
    extends GgetOwnerDashboardData_getOwnerDashboard_revenue {
  @override
  final String G__typename;
  @override
  final double? netRevenue;
  @override
  final double? upcoming;
  @override
  final double? pendingPayout;
  @override
  final double? paid;
  @override
  final double? paidAmount;

  factory _$GgetOwnerDashboardData_getOwnerDashboard_revenue(
          [void Function(
                  GgetOwnerDashboardData_getOwnerDashboard_revenueBuilder)?
              updates]) =>
      (new GgetOwnerDashboardData_getOwnerDashboard_revenueBuilder()
            ..update(updates))
          ._build();

  _$GgetOwnerDashboardData_getOwnerDashboard_revenue._(
      {required this.G__typename,
      this.netRevenue,
      this.upcoming,
      this.pendingPayout,
      this.paid,
      this.paidAmount})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(G__typename,
        r'GgetOwnerDashboardData_getOwnerDashboard_revenue', 'G__typename');
  }

  @override
  GgetOwnerDashboardData_getOwnerDashboard_revenue rebuild(
          void Function(GgetOwnerDashboardData_getOwnerDashboard_revenueBuilder)
              updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GgetOwnerDashboardData_getOwnerDashboard_revenueBuilder toBuilder() =>
      new GgetOwnerDashboardData_getOwnerDashboard_revenueBuilder()
        ..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GgetOwnerDashboardData_getOwnerDashboard_revenue &&
        G__typename == other.G__typename &&
        netRevenue == other.netRevenue &&
        upcoming == other.upcoming &&
        pendingPayout == other.pendingPayout &&
        paid == other.paid &&
        paidAmount == other.paidAmount;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, G__typename.hashCode);
    _$hash = $jc(_$hash, netRevenue.hashCode);
    _$hash = $jc(_$hash, upcoming.hashCode);
    _$hash = $jc(_$hash, pendingPayout.hashCode);
    _$hash = $jc(_$hash, paid.hashCode);
    _$hash = $jc(_$hash, paidAmount.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(
            r'GgetOwnerDashboardData_getOwnerDashboard_revenue')
          ..add('G__typename', G__typename)
          ..add('netRevenue', netRevenue)
          ..add('upcoming', upcoming)
          ..add('pendingPayout', pendingPayout)
          ..add('paid', paid)
          ..add('paidAmount', paidAmount))
        .toString();
  }
}

class GgetOwnerDashboardData_getOwnerDashboard_revenueBuilder
    implements
        Builder<GgetOwnerDashboardData_getOwnerDashboard_revenue,
            GgetOwnerDashboardData_getOwnerDashboard_revenueBuilder> {
  _$GgetOwnerDashboardData_getOwnerDashboard_revenue? _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  double? _netRevenue;
  double? get netRevenue => _$this._netRevenue;
  set netRevenue(double? netRevenue) => _$this._netRevenue = netRevenue;

  double? _upcoming;
  double? get upcoming => _$this._upcoming;
  set upcoming(double? upcoming) => _$this._upcoming = upcoming;

  double? _pendingPayout;
  double? get pendingPayout => _$this._pendingPayout;
  set pendingPayout(double? pendingPayout) =>
      _$this._pendingPayout = pendingPayout;

  double? _paid;
  double? get paid => _$this._paid;
  set paid(double? paid) => _$this._paid = paid;

  double? _paidAmount;
  double? get paidAmount => _$this._paidAmount;
  set paidAmount(double? paidAmount) => _$this._paidAmount = paidAmount;

  GgetOwnerDashboardData_getOwnerDashboard_revenueBuilder() {
    GgetOwnerDashboardData_getOwnerDashboard_revenue._initializeBuilder(this);
  }

  GgetOwnerDashboardData_getOwnerDashboard_revenueBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _G__typename = $v.G__typename;
      _netRevenue = $v.netRevenue;
      _upcoming = $v.upcoming;
      _pendingPayout = $v.pendingPayout;
      _paid = $v.paid;
      _paidAmount = $v.paidAmount;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GgetOwnerDashboardData_getOwnerDashboard_revenue other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GgetOwnerDashboardData_getOwnerDashboard_revenue;
  }

  @override
  void update(
      void Function(GgetOwnerDashboardData_getOwnerDashboard_revenueBuilder)?
          updates) {
    if (updates != null) updates(this);
  }

  @override
  GgetOwnerDashboardData_getOwnerDashboard_revenue build() => _build();

  _$GgetOwnerDashboardData_getOwnerDashboard_revenue _build() {
    final _$result = _$v ??
        new _$GgetOwnerDashboardData_getOwnerDashboard_revenue._(
            G__typename: BuiltValueNullFieldError.checkNotNull(
                G__typename,
                r'GgetOwnerDashboardData_getOwnerDashboard_revenue',
                'G__typename'),
            netRevenue: netRevenue,
            upcoming: upcoming,
            pendingPayout: pendingPayout,
            paid: paid,
            paidAmount: paidAmount);
    replace(_$result);
    return _$result;
  }
}

class _$GgetOwnerDashboardData_getOwnerDashboard_series
    extends GgetOwnerDashboardData_getOwnerDashboard_series {
  @override
  final String G__typename;
  @override
  final String? granularity;
  @override
  final String? start;
  @override
  final String? end;
  @override
  final BuiltList<GgetOwnerDashboardData_getOwnerDashboard_series_points?>?
      points;

  factory _$GgetOwnerDashboardData_getOwnerDashboard_series(
          [void Function(
                  GgetOwnerDashboardData_getOwnerDashboard_seriesBuilder)?
              updates]) =>
      (new GgetOwnerDashboardData_getOwnerDashboard_seriesBuilder()
            ..update(updates))
          ._build();

  _$GgetOwnerDashboardData_getOwnerDashboard_series._(
      {required this.G__typename,
      this.granularity,
      this.start,
      this.end,
      this.points})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(G__typename,
        r'GgetOwnerDashboardData_getOwnerDashboard_series', 'G__typename');
  }

  @override
  GgetOwnerDashboardData_getOwnerDashboard_series rebuild(
          void Function(GgetOwnerDashboardData_getOwnerDashboard_seriesBuilder)
              updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GgetOwnerDashboardData_getOwnerDashboard_seriesBuilder toBuilder() =>
      new GgetOwnerDashboardData_getOwnerDashboard_seriesBuilder()
        ..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GgetOwnerDashboardData_getOwnerDashboard_series &&
        G__typename == other.G__typename &&
        granularity == other.granularity &&
        start == other.start &&
        end == other.end &&
        points == other.points;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, G__typename.hashCode);
    _$hash = $jc(_$hash, granularity.hashCode);
    _$hash = $jc(_$hash, start.hashCode);
    _$hash = $jc(_$hash, end.hashCode);
    _$hash = $jc(_$hash, points.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(
            r'GgetOwnerDashboardData_getOwnerDashboard_series')
          ..add('G__typename', G__typename)
          ..add('granularity', granularity)
          ..add('start', start)
          ..add('end', end)
          ..add('points', points))
        .toString();
  }
}

class GgetOwnerDashboardData_getOwnerDashboard_seriesBuilder
    implements
        Builder<GgetOwnerDashboardData_getOwnerDashboard_series,
            GgetOwnerDashboardData_getOwnerDashboard_seriesBuilder> {
  _$GgetOwnerDashboardData_getOwnerDashboard_series? _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  String? _granularity;
  String? get granularity => _$this._granularity;
  set granularity(String? granularity) => _$this._granularity = granularity;

  String? _start;
  String? get start => _$this._start;
  set start(String? start) => _$this._start = start;

  String? _end;
  String? get end => _$this._end;
  set end(String? end) => _$this._end = end;

  ListBuilder<GgetOwnerDashboardData_getOwnerDashboard_series_points?>? _points;
  ListBuilder<GgetOwnerDashboardData_getOwnerDashboard_series_points?>
      get points => _$this._points ??= new ListBuilder<
          GgetOwnerDashboardData_getOwnerDashboard_series_points?>();
  set points(
          ListBuilder<GgetOwnerDashboardData_getOwnerDashboard_series_points?>?
              points) =>
      _$this._points = points;

  GgetOwnerDashboardData_getOwnerDashboard_seriesBuilder() {
    GgetOwnerDashboardData_getOwnerDashboard_series._initializeBuilder(this);
  }

  GgetOwnerDashboardData_getOwnerDashboard_seriesBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _G__typename = $v.G__typename;
      _granularity = $v.granularity;
      _start = $v.start;
      _end = $v.end;
      _points = $v.points?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GgetOwnerDashboardData_getOwnerDashboard_series other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GgetOwnerDashboardData_getOwnerDashboard_series;
  }

  @override
  void update(
      void Function(GgetOwnerDashboardData_getOwnerDashboard_seriesBuilder)?
          updates) {
    if (updates != null) updates(this);
  }

  @override
  GgetOwnerDashboardData_getOwnerDashboard_series build() => _build();

  _$GgetOwnerDashboardData_getOwnerDashboard_series _build() {
    _$GgetOwnerDashboardData_getOwnerDashboard_series _$result;
    try {
      _$result = _$v ??
          new _$GgetOwnerDashboardData_getOwnerDashboard_series._(
              G__typename: BuiltValueNullFieldError.checkNotNull(
                  G__typename,
                  r'GgetOwnerDashboardData_getOwnerDashboard_series',
                  'G__typename'),
              granularity: granularity,
              start: start,
              end: end,
              points: _points?.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'points';
        _points?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'GgetOwnerDashboardData_getOwnerDashboard_series',
            _$failedField,
            e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

class _$GgetOwnerDashboardData_getOwnerDashboard_series_points
    extends GgetOwnerDashboardData_getOwnerDashboard_series_points {
  @override
  final String G__typename;
  @override
  final String? key;
  @override
  final String? start;
  @override
  final String? end;
  @override
  final double? netRevenue;
  @override
  final int? bookings;

  factory _$GgetOwnerDashboardData_getOwnerDashboard_series_points(
          [void Function(
                  GgetOwnerDashboardData_getOwnerDashboard_series_pointsBuilder)?
              updates]) =>
      (new GgetOwnerDashboardData_getOwnerDashboard_series_pointsBuilder()
            ..update(updates))
          ._build();

  _$GgetOwnerDashboardData_getOwnerDashboard_series_points._(
      {required this.G__typename,
      this.key,
      this.start,
      this.end,
      this.netRevenue,
      this.bookings})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        G__typename,
        r'GgetOwnerDashboardData_getOwnerDashboard_series_points',
        'G__typename');
  }

  @override
  GgetOwnerDashboardData_getOwnerDashboard_series_points rebuild(
          void Function(
                  GgetOwnerDashboardData_getOwnerDashboard_series_pointsBuilder)
              updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GgetOwnerDashboardData_getOwnerDashboard_series_pointsBuilder toBuilder() =>
      new GgetOwnerDashboardData_getOwnerDashboard_series_pointsBuilder()
        ..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GgetOwnerDashboardData_getOwnerDashboard_series_points &&
        G__typename == other.G__typename &&
        key == other.key &&
        start == other.start &&
        end == other.end &&
        netRevenue == other.netRevenue &&
        bookings == other.bookings;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, G__typename.hashCode);
    _$hash = $jc(_$hash, key.hashCode);
    _$hash = $jc(_$hash, start.hashCode);
    _$hash = $jc(_$hash, end.hashCode);
    _$hash = $jc(_$hash, netRevenue.hashCode);
    _$hash = $jc(_$hash, bookings.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(
            r'GgetOwnerDashboardData_getOwnerDashboard_series_points')
          ..add('G__typename', G__typename)
          ..add('key', key)
          ..add('start', start)
          ..add('end', end)
          ..add('netRevenue', netRevenue)
          ..add('bookings', bookings))
        .toString();
  }
}

class GgetOwnerDashboardData_getOwnerDashboard_series_pointsBuilder
    implements
        Builder<GgetOwnerDashboardData_getOwnerDashboard_series_points,
            GgetOwnerDashboardData_getOwnerDashboard_series_pointsBuilder> {
  _$GgetOwnerDashboardData_getOwnerDashboard_series_points? _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  String? _key;
  String? get key => _$this._key;
  set key(String? key) => _$this._key = key;

  String? _start;
  String? get start => _$this._start;
  set start(String? start) => _$this._start = start;

  String? _end;
  String? get end => _$this._end;
  set end(String? end) => _$this._end = end;

  double? _netRevenue;
  double? get netRevenue => _$this._netRevenue;
  set netRevenue(double? netRevenue) => _$this._netRevenue = netRevenue;

  int? _bookings;
  int? get bookings => _$this._bookings;
  set bookings(int? bookings) => _$this._bookings = bookings;

  GgetOwnerDashboardData_getOwnerDashboard_series_pointsBuilder() {
    GgetOwnerDashboardData_getOwnerDashboard_series_points._initializeBuilder(
        this);
  }

  GgetOwnerDashboardData_getOwnerDashboard_series_pointsBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _G__typename = $v.G__typename;
      _key = $v.key;
      _start = $v.start;
      _end = $v.end;
      _netRevenue = $v.netRevenue;
      _bookings = $v.bookings;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GgetOwnerDashboardData_getOwnerDashboard_series_points other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GgetOwnerDashboardData_getOwnerDashboard_series_points;
  }

  @override
  void update(
      void Function(
              GgetOwnerDashboardData_getOwnerDashboard_series_pointsBuilder)?
          updates) {
    if (updates != null) updates(this);
  }

  @override
  GgetOwnerDashboardData_getOwnerDashboard_series_points build() => _build();

  _$GgetOwnerDashboardData_getOwnerDashboard_series_points _build() {
    final _$result = _$v ??
        new _$GgetOwnerDashboardData_getOwnerDashboard_series_points._(
            G__typename: BuiltValueNullFieldError.checkNotNull(
                G__typename,
                r'GgetOwnerDashboardData_getOwnerDashboard_series_points',
                'G__typename'),
            key: key,
            start: start,
            end: end,
            netRevenue: netRevenue,
            bookings: bookings);
    replace(_$result);
    return _$result;
  }
}

class _$GgetOwnerDashboardData_getOwnerDashboard_vehicles
    extends GgetOwnerDashboardData_getOwnerDashboard_vehicles {
  @override
  final String G__typename;
  @override
  final int? listId;
  @override
  final String? title;
  @override
  final String? photo;
  @override
  final bool? isOnline;
  @override
  final int? bookings;
  @override
  final int? rentedDays;
  @override
  final double? occupancy;
  @override
  final double? netRevenue;

  factory _$GgetOwnerDashboardData_getOwnerDashboard_vehicles(
          [void Function(
                  GgetOwnerDashboardData_getOwnerDashboard_vehiclesBuilder)?
              updates]) =>
      (new GgetOwnerDashboardData_getOwnerDashboard_vehiclesBuilder()
            ..update(updates))
          ._build();

  _$GgetOwnerDashboardData_getOwnerDashboard_vehicles._(
      {required this.G__typename,
      this.listId,
      this.title,
      this.photo,
      this.isOnline,
      this.bookings,
      this.rentedDays,
      this.occupancy,
      this.netRevenue})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(G__typename,
        r'GgetOwnerDashboardData_getOwnerDashboard_vehicles', 'G__typename');
  }

  @override
  GgetOwnerDashboardData_getOwnerDashboard_vehicles rebuild(
          void Function(
                  GgetOwnerDashboardData_getOwnerDashboard_vehiclesBuilder)
              updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GgetOwnerDashboardData_getOwnerDashboard_vehiclesBuilder toBuilder() =>
      new GgetOwnerDashboardData_getOwnerDashboard_vehiclesBuilder()
        ..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GgetOwnerDashboardData_getOwnerDashboard_vehicles &&
        G__typename == other.G__typename &&
        listId == other.listId &&
        title == other.title &&
        photo == other.photo &&
        isOnline == other.isOnline &&
        bookings == other.bookings &&
        rentedDays == other.rentedDays &&
        occupancy == other.occupancy &&
        netRevenue == other.netRevenue;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, G__typename.hashCode);
    _$hash = $jc(_$hash, listId.hashCode);
    _$hash = $jc(_$hash, title.hashCode);
    _$hash = $jc(_$hash, photo.hashCode);
    _$hash = $jc(_$hash, isOnline.hashCode);
    _$hash = $jc(_$hash, bookings.hashCode);
    _$hash = $jc(_$hash, rentedDays.hashCode);
    _$hash = $jc(_$hash, occupancy.hashCode);
    _$hash = $jc(_$hash, netRevenue.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(
            r'GgetOwnerDashboardData_getOwnerDashboard_vehicles')
          ..add('G__typename', G__typename)
          ..add('listId', listId)
          ..add('title', title)
          ..add('photo', photo)
          ..add('isOnline', isOnline)
          ..add('bookings', bookings)
          ..add('rentedDays', rentedDays)
          ..add('occupancy', occupancy)
          ..add('netRevenue', netRevenue))
        .toString();
  }
}

class GgetOwnerDashboardData_getOwnerDashboard_vehiclesBuilder
    implements
        Builder<GgetOwnerDashboardData_getOwnerDashboard_vehicles,
            GgetOwnerDashboardData_getOwnerDashboard_vehiclesBuilder> {
  _$GgetOwnerDashboardData_getOwnerDashboard_vehicles? _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  int? _listId;
  int? get listId => _$this._listId;
  set listId(int? listId) => _$this._listId = listId;

  String? _title;
  String? get title => _$this._title;
  set title(String? title) => _$this._title = title;

  String? _photo;
  String? get photo => _$this._photo;
  set photo(String? photo) => _$this._photo = photo;

  bool? _isOnline;
  bool? get isOnline => _$this._isOnline;
  set isOnline(bool? isOnline) => _$this._isOnline = isOnline;

  int? _bookings;
  int? get bookings => _$this._bookings;
  set bookings(int? bookings) => _$this._bookings = bookings;

  int? _rentedDays;
  int? get rentedDays => _$this._rentedDays;
  set rentedDays(int? rentedDays) => _$this._rentedDays = rentedDays;

  double? _occupancy;
  double? get occupancy => _$this._occupancy;
  set occupancy(double? occupancy) => _$this._occupancy = occupancy;

  double? _netRevenue;
  double? get netRevenue => _$this._netRevenue;
  set netRevenue(double? netRevenue) => _$this._netRevenue = netRevenue;

  GgetOwnerDashboardData_getOwnerDashboard_vehiclesBuilder() {
    GgetOwnerDashboardData_getOwnerDashboard_vehicles._initializeBuilder(this);
  }

  GgetOwnerDashboardData_getOwnerDashboard_vehiclesBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _G__typename = $v.G__typename;
      _listId = $v.listId;
      _title = $v.title;
      _photo = $v.photo;
      _isOnline = $v.isOnline;
      _bookings = $v.bookings;
      _rentedDays = $v.rentedDays;
      _occupancy = $v.occupancy;
      _netRevenue = $v.netRevenue;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GgetOwnerDashboardData_getOwnerDashboard_vehicles other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GgetOwnerDashboardData_getOwnerDashboard_vehicles;
  }

  @override
  void update(
      void Function(GgetOwnerDashboardData_getOwnerDashboard_vehiclesBuilder)?
          updates) {
    if (updates != null) updates(this);
  }

  @override
  GgetOwnerDashboardData_getOwnerDashboard_vehicles build() => _build();

  _$GgetOwnerDashboardData_getOwnerDashboard_vehicles _build() {
    final _$result = _$v ??
        new _$GgetOwnerDashboardData_getOwnerDashboard_vehicles._(
            G__typename: BuiltValueNullFieldError.checkNotNull(
                G__typename,
                r'GgetOwnerDashboardData_getOwnerDashboard_vehicles',
                'G__typename'),
            listId: listId,
            title: title,
            photo: photo,
            isOnline: isOnline,
            bookings: bookings,
            rentedDays: rentedDays,
            occupancy: occupancy,
            netRevenue: netRevenue);
    replace(_$result);
    return _$result;
  }
}

class _$GgetOwnerDashboardData_getOwnerDashboard_vehicleOptions
    extends GgetOwnerDashboardData_getOwnerDashboard_vehicleOptions {
  @override
  final String G__typename;
  @override
  final int? listId;
  @override
  final String? title;
  @override
  final bool? isOnline;

  factory _$GgetOwnerDashboardData_getOwnerDashboard_vehicleOptions(
          [void Function(
                  GgetOwnerDashboardData_getOwnerDashboard_vehicleOptionsBuilder)?
              updates]) =>
      (new GgetOwnerDashboardData_getOwnerDashboard_vehicleOptionsBuilder()
            ..update(updates))
          ._build();

  _$GgetOwnerDashboardData_getOwnerDashboard_vehicleOptions._(
      {required this.G__typename, this.listId, this.title, this.isOnline})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        G__typename,
        r'GgetOwnerDashboardData_getOwnerDashboard_vehicleOptions',
        'G__typename');
  }

  @override
  GgetOwnerDashboardData_getOwnerDashboard_vehicleOptions rebuild(
          void Function(
                  GgetOwnerDashboardData_getOwnerDashboard_vehicleOptionsBuilder)
              updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GgetOwnerDashboardData_getOwnerDashboard_vehicleOptionsBuilder toBuilder() =>
      new GgetOwnerDashboardData_getOwnerDashboard_vehicleOptionsBuilder()
        ..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GgetOwnerDashboardData_getOwnerDashboard_vehicleOptions &&
        G__typename == other.G__typename &&
        listId == other.listId &&
        title == other.title &&
        isOnline == other.isOnline;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, G__typename.hashCode);
    _$hash = $jc(_$hash, listId.hashCode);
    _$hash = $jc(_$hash, title.hashCode);
    _$hash = $jc(_$hash, isOnline.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(
            r'GgetOwnerDashboardData_getOwnerDashboard_vehicleOptions')
          ..add('G__typename', G__typename)
          ..add('listId', listId)
          ..add('title', title)
          ..add('isOnline', isOnline))
        .toString();
  }
}

class GgetOwnerDashboardData_getOwnerDashboard_vehicleOptionsBuilder
    implements
        Builder<GgetOwnerDashboardData_getOwnerDashboard_vehicleOptions,
            GgetOwnerDashboardData_getOwnerDashboard_vehicleOptionsBuilder> {
  _$GgetOwnerDashboardData_getOwnerDashboard_vehicleOptions? _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  int? _listId;
  int? get listId => _$this._listId;
  set listId(int? listId) => _$this._listId = listId;

  String? _title;
  String? get title => _$this._title;
  set title(String? title) => _$this._title = title;

  bool? _isOnline;
  bool? get isOnline => _$this._isOnline;
  set isOnline(bool? isOnline) => _$this._isOnline = isOnline;

  GgetOwnerDashboardData_getOwnerDashboard_vehicleOptionsBuilder() {
    GgetOwnerDashboardData_getOwnerDashboard_vehicleOptions._initializeBuilder(
        this);
  }

  GgetOwnerDashboardData_getOwnerDashboard_vehicleOptionsBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _G__typename = $v.G__typename;
      _listId = $v.listId;
      _title = $v.title;
      _isOnline = $v.isOnline;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GgetOwnerDashboardData_getOwnerDashboard_vehicleOptions other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GgetOwnerDashboardData_getOwnerDashboard_vehicleOptions;
  }

  @override
  void update(
      void Function(
              GgetOwnerDashboardData_getOwnerDashboard_vehicleOptionsBuilder)?
          updates) {
    if (updates != null) updates(this);
  }

  @override
  GgetOwnerDashboardData_getOwnerDashboard_vehicleOptions build() => _build();

  _$GgetOwnerDashboardData_getOwnerDashboard_vehicleOptions _build() {
    final _$result = _$v ??
        new _$GgetOwnerDashboardData_getOwnerDashboard_vehicleOptions._(
            G__typename: BuiltValueNullFieldError.checkNotNull(
                G__typename,
                r'GgetOwnerDashboardData_getOwnerDashboard_vehicleOptions',
                'G__typename'),
            listId: listId,
            title: title,
            isOnline: isOnline);
    replace(_$result);
    return _$result;
  }
}

class _$GgetOwnerDashboardData_getOwnerDashboard_reservationsSplit
    extends GgetOwnerDashboardData_getOwnerDashboard_reservationsSplit {
  @override
  final String G__typename;
  @override
  final int? completed;
  @override
  final int? upcoming;
  @override
  final int? cancelled;

  factory _$GgetOwnerDashboardData_getOwnerDashboard_reservationsSplit(
          [void Function(
                  GgetOwnerDashboardData_getOwnerDashboard_reservationsSplitBuilder)?
              updates]) =>
      (new GgetOwnerDashboardData_getOwnerDashboard_reservationsSplitBuilder()
            ..update(updates))
          ._build();

  _$GgetOwnerDashboardData_getOwnerDashboard_reservationsSplit._(
      {required this.G__typename,
      this.completed,
      this.upcoming,
      this.cancelled})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        G__typename,
        r'GgetOwnerDashboardData_getOwnerDashboard_reservationsSplit',
        'G__typename');
  }

  @override
  GgetOwnerDashboardData_getOwnerDashboard_reservationsSplit rebuild(
          void Function(
                  GgetOwnerDashboardData_getOwnerDashboard_reservationsSplitBuilder)
              updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GgetOwnerDashboardData_getOwnerDashboard_reservationsSplitBuilder
      toBuilder() =>
          new GgetOwnerDashboardData_getOwnerDashboard_reservationsSplitBuilder()
            ..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other
            is GgetOwnerDashboardData_getOwnerDashboard_reservationsSplit &&
        G__typename == other.G__typename &&
        completed == other.completed &&
        upcoming == other.upcoming &&
        cancelled == other.cancelled;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, G__typename.hashCode);
    _$hash = $jc(_$hash, completed.hashCode);
    _$hash = $jc(_$hash, upcoming.hashCode);
    _$hash = $jc(_$hash, cancelled.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(
            r'GgetOwnerDashboardData_getOwnerDashboard_reservationsSplit')
          ..add('G__typename', G__typename)
          ..add('completed', completed)
          ..add('upcoming', upcoming)
          ..add('cancelled', cancelled))
        .toString();
  }
}

class GgetOwnerDashboardData_getOwnerDashboard_reservationsSplitBuilder
    implements
        Builder<GgetOwnerDashboardData_getOwnerDashboard_reservationsSplit,
            GgetOwnerDashboardData_getOwnerDashboard_reservationsSplitBuilder> {
  _$GgetOwnerDashboardData_getOwnerDashboard_reservationsSplit? _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  int? _completed;
  int? get completed => _$this._completed;
  set completed(int? completed) => _$this._completed = completed;

  int? _upcoming;
  int? get upcoming => _$this._upcoming;
  set upcoming(int? upcoming) => _$this._upcoming = upcoming;

  int? _cancelled;
  int? get cancelled => _$this._cancelled;
  set cancelled(int? cancelled) => _$this._cancelled = cancelled;

  GgetOwnerDashboardData_getOwnerDashboard_reservationsSplitBuilder() {
    GgetOwnerDashboardData_getOwnerDashboard_reservationsSplit
        ._initializeBuilder(this);
  }

  GgetOwnerDashboardData_getOwnerDashboard_reservationsSplitBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _G__typename = $v.G__typename;
      _completed = $v.completed;
      _upcoming = $v.upcoming;
      _cancelled = $v.cancelled;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(
      GgetOwnerDashboardData_getOwnerDashboard_reservationsSplit other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GgetOwnerDashboardData_getOwnerDashboard_reservationsSplit;
  }

  @override
  void update(
      void Function(
              GgetOwnerDashboardData_getOwnerDashboard_reservationsSplitBuilder)?
          updates) {
    if (updates != null) updates(this);
  }

  @override
  GgetOwnerDashboardData_getOwnerDashboard_reservationsSplit build() =>
      _build();

  _$GgetOwnerDashboardData_getOwnerDashboard_reservationsSplit _build() {
    final _$result = _$v ??
        new _$GgetOwnerDashboardData_getOwnerDashboard_reservationsSplit._(
            G__typename: BuiltValueNullFieldError.checkNotNull(
                G__typename,
                r'GgetOwnerDashboardData_getOwnerDashboard_reservationsSplit',
                'G__typename'),
            completed: completed,
            upcoming: upcoming,
            cancelled: cancelled);
    replace(_$result);
    return _$result;
  }
}

class _$GgetOwnerDashboardData_getOwnerDashboard_recentActivity
    extends GgetOwnerDashboardData_getOwnerDashboard_recentActivity {
  @override
  final String G__typename;
  @override
  final int? reservationId;
  @override
  final int? confirmationCode;
  @override
  final int? listId;
  @override
  final String? title;
  @override
  final String? photo;
  @override
  final String? guestName;
  @override
  final String? checkIn;
  @override
  final String? checkOut;
  @override
  final String? state;
  @override
  final String? revenueStatus;
  @override
  final double? netRevenue;

  factory _$GgetOwnerDashboardData_getOwnerDashboard_recentActivity(
          [void Function(
                  GgetOwnerDashboardData_getOwnerDashboard_recentActivityBuilder)?
              updates]) =>
      (new GgetOwnerDashboardData_getOwnerDashboard_recentActivityBuilder()
            ..update(updates))
          ._build();

  _$GgetOwnerDashboardData_getOwnerDashboard_recentActivity._(
      {required this.G__typename,
      this.reservationId,
      this.confirmationCode,
      this.listId,
      this.title,
      this.photo,
      this.guestName,
      this.checkIn,
      this.checkOut,
      this.state,
      this.revenueStatus,
      this.netRevenue})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        G__typename,
        r'GgetOwnerDashboardData_getOwnerDashboard_recentActivity',
        'G__typename');
  }

  @override
  GgetOwnerDashboardData_getOwnerDashboard_recentActivity rebuild(
          void Function(
                  GgetOwnerDashboardData_getOwnerDashboard_recentActivityBuilder)
              updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GgetOwnerDashboardData_getOwnerDashboard_recentActivityBuilder toBuilder() =>
      new GgetOwnerDashboardData_getOwnerDashboard_recentActivityBuilder()
        ..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GgetOwnerDashboardData_getOwnerDashboard_recentActivity &&
        G__typename == other.G__typename &&
        reservationId == other.reservationId &&
        confirmationCode == other.confirmationCode &&
        listId == other.listId &&
        title == other.title &&
        photo == other.photo &&
        guestName == other.guestName &&
        checkIn == other.checkIn &&
        checkOut == other.checkOut &&
        state == other.state &&
        revenueStatus == other.revenueStatus &&
        netRevenue == other.netRevenue;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, G__typename.hashCode);
    _$hash = $jc(_$hash, reservationId.hashCode);
    _$hash = $jc(_$hash, confirmationCode.hashCode);
    _$hash = $jc(_$hash, listId.hashCode);
    _$hash = $jc(_$hash, title.hashCode);
    _$hash = $jc(_$hash, photo.hashCode);
    _$hash = $jc(_$hash, guestName.hashCode);
    _$hash = $jc(_$hash, checkIn.hashCode);
    _$hash = $jc(_$hash, checkOut.hashCode);
    _$hash = $jc(_$hash, state.hashCode);
    _$hash = $jc(_$hash, revenueStatus.hashCode);
    _$hash = $jc(_$hash, netRevenue.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(
            r'GgetOwnerDashboardData_getOwnerDashboard_recentActivity')
          ..add('G__typename', G__typename)
          ..add('reservationId', reservationId)
          ..add('confirmationCode', confirmationCode)
          ..add('listId', listId)
          ..add('title', title)
          ..add('photo', photo)
          ..add('guestName', guestName)
          ..add('checkIn', checkIn)
          ..add('checkOut', checkOut)
          ..add('state', state)
          ..add('revenueStatus', revenueStatus)
          ..add('netRevenue', netRevenue))
        .toString();
  }
}

class GgetOwnerDashboardData_getOwnerDashboard_recentActivityBuilder
    implements
        Builder<GgetOwnerDashboardData_getOwnerDashboard_recentActivity,
            GgetOwnerDashboardData_getOwnerDashboard_recentActivityBuilder> {
  _$GgetOwnerDashboardData_getOwnerDashboard_recentActivity? _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  int? _reservationId;
  int? get reservationId => _$this._reservationId;
  set reservationId(int? reservationId) =>
      _$this._reservationId = reservationId;

  int? _confirmationCode;
  int? get confirmationCode => _$this._confirmationCode;
  set confirmationCode(int? confirmationCode) =>
      _$this._confirmationCode = confirmationCode;

  int? _listId;
  int? get listId => _$this._listId;
  set listId(int? listId) => _$this._listId = listId;

  String? _title;
  String? get title => _$this._title;
  set title(String? title) => _$this._title = title;

  String? _photo;
  String? get photo => _$this._photo;
  set photo(String? photo) => _$this._photo = photo;

  String? _guestName;
  String? get guestName => _$this._guestName;
  set guestName(String? guestName) => _$this._guestName = guestName;

  String? _checkIn;
  String? get checkIn => _$this._checkIn;
  set checkIn(String? checkIn) => _$this._checkIn = checkIn;

  String? _checkOut;
  String? get checkOut => _$this._checkOut;
  set checkOut(String? checkOut) => _$this._checkOut = checkOut;

  String? _state;
  String? get state => _$this._state;
  set state(String? state) => _$this._state = state;

  String? _revenueStatus;
  String? get revenueStatus => _$this._revenueStatus;
  set revenueStatus(String? revenueStatus) =>
      _$this._revenueStatus = revenueStatus;

  double? _netRevenue;
  double? get netRevenue => _$this._netRevenue;
  set netRevenue(double? netRevenue) => _$this._netRevenue = netRevenue;

  GgetOwnerDashboardData_getOwnerDashboard_recentActivityBuilder() {
    GgetOwnerDashboardData_getOwnerDashboard_recentActivity._initializeBuilder(
        this);
  }

  GgetOwnerDashboardData_getOwnerDashboard_recentActivityBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _G__typename = $v.G__typename;
      _reservationId = $v.reservationId;
      _confirmationCode = $v.confirmationCode;
      _listId = $v.listId;
      _title = $v.title;
      _photo = $v.photo;
      _guestName = $v.guestName;
      _checkIn = $v.checkIn;
      _checkOut = $v.checkOut;
      _state = $v.state;
      _revenueStatus = $v.revenueStatus;
      _netRevenue = $v.netRevenue;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GgetOwnerDashboardData_getOwnerDashboard_recentActivity other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GgetOwnerDashboardData_getOwnerDashboard_recentActivity;
  }

  @override
  void update(
      void Function(
              GgetOwnerDashboardData_getOwnerDashboard_recentActivityBuilder)?
          updates) {
    if (updates != null) updates(this);
  }

  @override
  GgetOwnerDashboardData_getOwnerDashboard_recentActivity build() => _build();

  _$GgetOwnerDashboardData_getOwnerDashboard_recentActivity _build() {
    final _$result = _$v ??
        new _$GgetOwnerDashboardData_getOwnerDashboard_recentActivity._(
            G__typename: BuiltValueNullFieldError.checkNotNull(
                G__typename,
                r'GgetOwnerDashboardData_getOwnerDashboard_recentActivity',
                'G__typename'),
            reservationId: reservationId,
            confirmationCode: confirmationCode,
            listId: listId,
            title: title,
            photo: photo,
            guestName: guestName,
            checkIn: checkIn,
            checkOut: checkOut,
            state: state,
            revenueStatus: revenueStatus,
            netRevenue: netRevenue);
    replace(_$result);
    return _$result;
  }
}

class _$GgetOwnerDashboardData_getOwnerDashboard_operational
    extends GgetOwnerDashboardData_getOwnerDashboard_operational {
  @override
  final String G__typename;
  @override
  final int? onlineVehicles;
  @override
  final int? pausedVehicles;
  @override
  final int? totalDuration;
  @override
  final double? averageDuration;

  factory _$GgetOwnerDashboardData_getOwnerDashboard_operational(
          [void Function(
                  GgetOwnerDashboardData_getOwnerDashboard_operationalBuilder)?
              updates]) =>
      (new GgetOwnerDashboardData_getOwnerDashboard_operationalBuilder()
            ..update(updates))
          ._build();

  _$GgetOwnerDashboardData_getOwnerDashboard_operational._(
      {required this.G__typename,
      this.onlineVehicles,
      this.pausedVehicles,
      this.totalDuration,
      this.averageDuration})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(G__typename,
        r'GgetOwnerDashboardData_getOwnerDashboard_operational', 'G__typename');
  }

  @override
  GgetOwnerDashboardData_getOwnerDashboard_operational rebuild(
          void Function(
                  GgetOwnerDashboardData_getOwnerDashboard_operationalBuilder)
              updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GgetOwnerDashboardData_getOwnerDashboard_operationalBuilder toBuilder() =>
      new GgetOwnerDashboardData_getOwnerDashboard_operationalBuilder()
        ..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GgetOwnerDashboardData_getOwnerDashboard_operational &&
        G__typename == other.G__typename &&
        onlineVehicles == other.onlineVehicles &&
        pausedVehicles == other.pausedVehicles &&
        totalDuration == other.totalDuration &&
        averageDuration == other.averageDuration;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, G__typename.hashCode);
    _$hash = $jc(_$hash, onlineVehicles.hashCode);
    _$hash = $jc(_$hash, pausedVehicles.hashCode);
    _$hash = $jc(_$hash, totalDuration.hashCode);
    _$hash = $jc(_$hash, averageDuration.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(
            r'GgetOwnerDashboardData_getOwnerDashboard_operational')
          ..add('G__typename', G__typename)
          ..add('onlineVehicles', onlineVehicles)
          ..add('pausedVehicles', pausedVehicles)
          ..add('totalDuration', totalDuration)
          ..add('averageDuration', averageDuration))
        .toString();
  }
}

class GgetOwnerDashboardData_getOwnerDashboard_operationalBuilder
    implements
        Builder<GgetOwnerDashboardData_getOwnerDashboard_operational,
            GgetOwnerDashboardData_getOwnerDashboard_operationalBuilder> {
  _$GgetOwnerDashboardData_getOwnerDashboard_operational? _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  int? _onlineVehicles;
  int? get onlineVehicles => _$this._onlineVehicles;
  set onlineVehicles(int? onlineVehicles) =>
      _$this._onlineVehicles = onlineVehicles;

  int? _pausedVehicles;
  int? get pausedVehicles => _$this._pausedVehicles;
  set pausedVehicles(int? pausedVehicles) =>
      _$this._pausedVehicles = pausedVehicles;

  int? _totalDuration;
  int? get totalDuration => _$this._totalDuration;
  set totalDuration(int? totalDuration) =>
      _$this._totalDuration = totalDuration;

  double? _averageDuration;
  double? get averageDuration => _$this._averageDuration;
  set averageDuration(double? averageDuration) =>
      _$this._averageDuration = averageDuration;

  GgetOwnerDashboardData_getOwnerDashboard_operationalBuilder() {
    GgetOwnerDashboardData_getOwnerDashboard_operational._initializeBuilder(
        this);
  }

  GgetOwnerDashboardData_getOwnerDashboard_operationalBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _G__typename = $v.G__typename;
      _onlineVehicles = $v.onlineVehicles;
      _pausedVehicles = $v.pausedVehicles;
      _totalDuration = $v.totalDuration;
      _averageDuration = $v.averageDuration;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GgetOwnerDashboardData_getOwnerDashboard_operational other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GgetOwnerDashboardData_getOwnerDashboard_operational;
  }

  @override
  void update(
      void Function(
              GgetOwnerDashboardData_getOwnerDashboard_operationalBuilder)?
          updates) {
    if (updates != null) updates(this);
  }

  @override
  GgetOwnerDashboardData_getOwnerDashboard_operational build() => _build();

  _$GgetOwnerDashboardData_getOwnerDashboard_operational _build() {
    final _$result = _$v ??
        new _$GgetOwnerDashboardData_getOwnerDashboard_operational._(
            G__typename: BuiltValueNullFieldError.checkNotNull(
                G__typename,
                r'GgetOwnerDashboardData_getOwnerDashboard_operational',
                'G__typename'),
            onlineVehicles: onlineVehicles,
            pausedVehicles: pausedVehicles,
            totalDuration: totalDuration,
            averageDuration: averageDuration);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
