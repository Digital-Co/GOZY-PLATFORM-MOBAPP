// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'get_owner_earnings.data.gql.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<GgetOwnerEarningsData> _$ggetOwnerEarningsDataSerializer =
    new _$GgetOwnerEarningsDataSerializer();
Serializer<GgetOwnerEarningsData_getOwnerEarnings>
    _$ggetOwnerEarningsDataGetOwnerEarningsSerializer =
    new _$GgetOwnerEarningsData_getOwnerEarningsSerializer();
Serializer<GgetOwnerEarningsData_getOwnerEarnings_period>
    _$ggetOwnerEarningsDataGetOwnerEarningsPeriodSerializer =
    new _$GgetOwnerEarningsData_getOwnerEarnings_periodSerializer();
Serializer<GgetOwnerEarningsData_getOwnerEarnings_summary>
    _$ggetOwnerEarningsDataGetOwnerEarningsSummarySerializer =
    new _$GgetOwnerEarningsData_getOwnerEarnings_summarySerializer();
Serializer<GgetOwnerEarningsData_getOwnerEarnings_summary_netRevenue>
    _$ggetOwnerEarningsDataGetOwnerEarningsSummaryNetRevenueSerializer =
    new _$GgetOwnerEarningsData_getOwnerEarnings_summary_netRevenueSerializer();
Serializer<GgetOwnerEarningsData_getOwnerEarnings_summary_volume>
    _$ggetOwnerEarningsDataGetOwnerEarningsSummaryVolumeSerializer =
    new _$GgetOwnerEarningsData_getOwnerEarnings_summary_volumeSerializer();
Serializer<GgetOwnerEarningsData_getOwnerEarnings_summary_optionsAmount>
    _$ggetOwnerEarningsDataGetOwnerEarningsSummaryOptionsAmountSerializer =
    new _$GgetOwnerEarningsData_getOwnerEarnings_summary_optionsAmountSerializer();
Serializer<GgetOwnerEarningsData_getOwnerEarnings_revenue>
    _$ggetOwnerEarningsDataGetOwnerEarningsRevenueSerializer =
    new _$GgetOwnerEarningsData_getOwnerEarnings_revenueSerializer();
Serializer<GgetOwnerEarningsData_getOwnerEarnings_breakdown>
    _$ggetOwnerEarningsDataGetOwnerEarningsBreakdownSerializer =
    new _$GgetOwnerEarningsData_getOwnerEarnings_breakdownSerializer();
Serializer<GgetOwnerEarningsData_getOwnerEarnings_series>
    _$ggetOwnerEarningsDataGetOwnerEarningsSeriesSerializer =
    new _$GgetOwnerEarningsData_getOwnerEarnings_seriesSerializer();
Serializer<GgetOwnerEarningsData_getOwnerEarnings_series_points>
    _$ggetOwnerEarningsDataGetOwnerEarningsSeriesPointsSerializer =
    new _$GgetOwnerEarningsData_getOwnerEarnings_series_pointsSerializer();
Serializer<GgetOwnerEarningsData_getOwnerEarnings_vehicles>
    _$ggetOwnerEarningsDataGetOwnerEarningsVehiclesSerializer =
    new _$GgetOwnerEarningsData_getOwnerEarnings_vehiclesSerializer();
Serializer<GgetOwnerEarningsData_getOwnerEarnings_rows>
    _$ggetOwnerEarningsDataGetOwnerEarningsRowsSerializer =
    new _$GgetOwnerEarningsData_getOwnerEarnings_rowsSerializer();
Serializer<GgetOwnerEarningsData_getOwnerEarnings_rows_components>
    _$ggetOwnerEarningsDataGetOwnerEarningsRowsComponentsSerializer =
    new _$GgetOwnerEarningsData_getOwnerEarnings_rows_componentsSerializer();
Serializer<GgetOwnerEarningsData_getOwnerEarnings_rows_payment>
    _$ggetOwnerEarningsDataGetOwnerEarningsRowsPaymentSerializer =
    new _$GgetOwnerEarningsData_getOwnerEarnings_rows_paymentSerializer();

class _$GgetOwnerEarningsDataSerializer
    implements StructuredSerializer<GgetOwnerEarningsData> {
  @override
  final Iterable<Type> types = const [
    GgetOwnerEarningsData,
    _$GgetOwnerEarningsData
  ];
  @override
  final String wireName = 'GgetOwnerEarningsData';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, GgetOwnerEarningsData object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      '__typename',
      serializers.serialize(object.G__typename,
          specifiedType: const FullType(String)),
    ];
    Object? value;
    value = object.getOwnerEarnings;
    if (value != null) {
      result
        ..add('getOwnerEarnings')
        ..add(serializers.serialize(value,
            specifiedType:
                const FullType(GgetOwnerEarningsData_getOwnerEarnings)));
    }
    return result;
  }

  @override
  GgetOwnerEarningsData deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GgetOwnerEarningsDataBuilder();

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
        case 'getOwnerEarnings':
          result.getOwnerEarnings.replace(serializers.deserialize(value,
                  specifiedType:
                      const FullType(GgetOwnerEarningsData_getOwnerEarnings))!
              as GgetOwnerEarningsData_getOwnerEarnings);
          break;
      }
    }

    return result.build();
  }
}

class _$GgetOwnerEarningsData_getOwnerEarningsSerializer
    implements StructuredSerializer<GgetOwnerEarningsData_getOwnerEarnings> {
  @override
  final Iterable<Type> types = const [
    GgetOwnerEarningsData_getOwnerEarnings,
    _$GgetOwnerEarningsData_getOwnerEarnings
  ];
  @override
  final String wireName = 'GgetOwnerEarningsData_getOwnerEarnings';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, GgetOwnerEarningsData_getOwnerEarnings object,
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
            specifiedType:
                const FullType(GgetOwnerEarningsData_getOwnerEarnings_period)));
    }
    value = object.summary;
    if (value != null) {
      result
        ..add('summary')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(
                GgetOwnerEarningsData_getOwnerEarnings_summary)));
    }
    value = object.revenue;
    if (value != null) {
      result
        ..add('revenue')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(
                GgetOwnerEarningsData_getOwnerEarnings_revenue)));
    }
    value = object.breakdown;
    if (value != null) {
      result
        ..add('breakdown')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(
                GgetOwnerEarningsData_getOwnerEarnings_breakdown)));
    }
    value = object.series;
    if (value != null) {
      result
        ..add('series')
        ..add(serializers.serialize(value,
            specifiedType:
                const FullType(GgetOwnerEarningsData_getOwnerEarnings_series)));
    }
    value = object.vehicles;
    if (value != null) {
      result
        ..add('vehicles')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(BuiltList, const [
              const FullType.nullable(
                  GgetOwnerEarningsData_getOwnerEarnings_vehicles)
            ])));
    }
    value = object.tab;
    if (value != null) {
      result
        ..add('tab')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.sortBy;
    if (value != null) {
      result
        ..add('sortBy')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.sortDir;
    if (value != null) {
      result
        ..add('sortDir')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.page;
    if (value != null) {
      result
        ..add('page')
        ..add(serializers.serialize(value, specifiedType: const FullType(int)));
    }
    value = object.pageSize;
    if (value != null) {
      result
        ..add('pageSize')
        ..add(serializers.serialize(value, specifiedType: const FullType(int)));
    }
    value = object.count;
    if (value != null) {
      result
        ..add('count')
        ..add(serializers.serialize(value, specifiedType: const FullType(int)));
    }
    value = object.pageCount;
    if (value != null) {
      result
        ..add('pageCount')
        ..add(serializers.serialize(value, specifiedType: const FullType(int)));
    }
    value = object.rows;
    if (value != null) {
      result
        ..add('rows')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(BuiltList, const [
              const FullType.nullable(
                  GgetOwnerEarningsData_getOwnerEarnings_rows)
            ])));
    }
    return result;
  }

  @override
  GgetOwnerEarningsData_getOwnerEarnings deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GgetOwnerEarningsData_getOwnerEarningsBuilder();

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
                      GgetOwnerEarningsData_getOwnerEarnings_period))!
              as GgetOwnerEarningsData_getOwnerEarnings_period);
          break;
        case 'summary':
          result.summary.replace(serializers.deserialize(value,
                  specifiedType: const FullType(
                      GgetOwnerEarningsData_getOwnerEarnings_summary))!
              as GgetOwnerEarningsData_getOwnerEarnings_summary);
          break;
        case 'revenue':
          result.revenue.replace(serializers.deserialize(value,
                  specifiedType: const FullType(
                      GgetOwnerEarningsData_getOwnerEarnings_revenue))!
              as GgetOwnerEarningsData_getOwnerEarnings_revenue);
          break;
        case 'breakdown':
          result.breakdown.replace(serializers.deserialize(value,
                  specifiedType: const FullType(
                      GgetOwnerEarningsData_getOwnerEarnings_breakdown))!
              as GgetOwnerEarningsData_getOwnerEarnings_breakdown);
          break;
        case 'series':
          result.series.replace(serializers.deserialize(value,
                  specifiedType: const FullType(
                      GgetOwnerEarningsData_getOwnerEarnings_series))!
              as GgetOwnerEarningsData_getOwnerEarnings_series);
          break;
        case 'vehicles':
          result.vehicles.replace(serializers.deserialize(value,
              specifiedType: const FullType(BuiltList, const [
                const FullType.nullable(
                    GgetOwnerEarningsData_getOwnerEarnings_vehicles)
              ]))! as BuiltList<Object?>);
          break;
        case 'tab':
          result.tab = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'sortBy':
          result.sortBy = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'sortDir':
          result.sortDir = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'page':
          result.page = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int?;
          break;
        case 'pageSize':
          result.pageSize = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int?;
          break;
        case 'count':
          result.count = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int?;
          break;
        case 'pageCount':
          result.pageCount = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int?;
          break;
        case 'rows':
          result.rows.replace(serializers.deserialize(value,
              specifiedType: const FullType(BuiltList, const [
                const FullType.nullable(
                    GgetOwnerEarningsData_getOwnerEarnings_rows)
              ]))! as BuiltList<Object?>);
          break;
      }
    }

    return result.build();
  }
}

class _$GgetOwnerEarningsData_getOwnerEarnings_periodSerializer
    implements
        StructuredSerializer<GgetOwnerEarningsData_getOwnerEarnings_period> {
  @override
  final Iterable<Type> types = const [
    GgetOwnerEarningsData_getOwnerEarnings_period,
    _$GgetOwnerEarningsData_getOwnerEarnings_period
  ];
  @override
  final String wireName = 'GgetOwnerEarningsData_getOwnerEarnings_period';

  @override
  Iterable<Object?> serialize(Serializers serializers,
      GgetOwnerEarningsData_getOwnerEarnings_period object,
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
  GgetOwnerEarningsData_getOwnerEarnings_period deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GgetOwnerEarningsData_getOwnerEarnings_periodBuilder();

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

class _$GgetOwnerEarningsData_getOwnerEarnings_summarySerializer
    implements
        StructuredSerializer<GgetOwnerEarningsData_getOwnerEarnings_summary> {
  @override
  final Iterable<Type> types = const [
    GgetOwnerEarningsData_getOwnerEarnings_summary,
    _$GgetOwnerEarningsData_getOwnerEarnings_summary
  ];
  @override
  final String wireName = 'GgetOwnerEarningsData_getOwnerEarnings_summary';

  @override
  Iterable<Object?> serialize(Serializers serializers,
      GgetOwnerEarningsData_getOwnerEarnings_summary object,
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
                GgetOwnerEarningsData_getOwnerEarnings_summary_netRevenue)));
    }
    value = object.volume;
    if (value != null) {
      result
        ..add('volume')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(
                GgetOwnerEarningsData_getOwnerEarnings_summary_volume)));
    }
    value = object.optionsAmount;
    if (value != null) {
      result
        ..add('optionsAmount')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(
                GgetOwnerEarningsData_getOwnerEarnings_summary_optionsAmount)));
    }
    return result;
  }

  @override
  GgetOwnerEarningsData_getOwnerEarnings_summary deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GgetOwnerEarningsData_getOwnerEarnings_summaryBuilder();

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
                      GgetOwnerEarningsData_getOwnerEarnings_summary_netRevenue))!
              as GgetOwnerEarningsData_getOwnerEarnings_summary_netRevenue);
          break;
        case 'volume':
          result.volume.replace(serializers.deserialize(value,
                  specifiedType: const FullType(
                      GgetOwnerEarningsData_getOwnerEarnings_summary_volume))!
              as GgetOwnerEarningsData_getOwnerEarnings_summary_volume);
          break;
        case 'optionsAmount':
          result.optionsAmount.replace(serializers.deserialize(value,
                  specifiedType: const FullType(
                      GgetOwnerEarningsData_getOwnerEarnings_summary_optionsAmount))!
              as GgetOwnerEarningsData_getOwnerEarnings_summary_optionsAmount);
          break;
      }
    }

    return result.build();
  }
}

class _$GgetOwnerEarningsData_getOwnerEarnings_summary_netRevenueSerializer
    implements
        StructuredSerializer<
            GgetOwnerEarningsData_getOwnerEarnings_summary_netRevenue> {
  @override
  final Iterable<Type> types = const [
    GgetOwnerEarningsData_getOwnerEarnings_summary_netRevenue,
    _$GgetOwnerEarningsData_getOwnerEarnings_summary_netRevenue
  ];
  @override
  final String wireName =
      'GgetOwnerEarningsData_getOwnerEarnings_summary_netRevenue';

  @override
  Iterable<Object?> serialize(Serializers serializers,
      GgetOwnerEarningsData_getOwnerEarnings_summary_netRevenue object,
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
  GgetOwnerEarningsData_getOwnerEarnings_summary_netRevenue deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result =
        new GgetOwnerEarningsData_getOwnerEarnings_summary_netRevenueBuilder();

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

class _$GgetOwnerEarningsData_getOwnerEarnings_summary_volumeSerializer
    implements
        StructuredSerializer<
            GgetOwnerEarningsData_getOwnerEarnings_summary_volume> {
  @override
  final Iterable<Type> types = const [
    GgetOwnerEarningsData_getOwnerEarnings_summary_volume,
    _$GgetOwnerEarningsData_getOwnerEarnings_summary_volume
  ];
  @override
  final String wireName =
      'GgetOwnerEarningsData_getOwnerEarnings_summary_volume';

  @override
  Iterable<Object?> serialize(Serializers serializers,
      GgetOwnerEarningsData_getOwnerEarnings_summary_volume object,
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
  GgetOwnerEarningsData_getOwnerEarnings_summary_volume deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result =
        new GgetOwnerEarningsData_getOwnerEarnings_summary_volumeBuilder();

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

class _$GgetOwnerEarningsData_getOwnerEarnings_summary_optionsAmountSerializer
    implements
        StructuredSerializer<
            GgetOwnerEarningsData_getOwnerEarnings_summary_optionsAmount> {
  @override
  final Iterable<Type> types = const [
    GgetOwnerEarningsData_getOwnerEarnings_summary_optionsAmount,
    _$GgetOwnerEarningsData_getOwnerEarnings_summary_optionsAmount
  ];
  @override
  final String wireName =
      'GgetOwnerEarningsData_getOwnerEarnings_summary_optionsAmount';

  @override
  Iterable<Object?> serialize(Serializers serializers,
      GgetOwnerEarningsData_getOwnerEarnings_summary_optionsAmount object,
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
  GgetOwnerEarningsData_getOwnerEarnings_summary_optionsAmount deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result =
        new GgetOwnerEarningsData_getOwnerEarnings_summary_optionsAmountBuilder();

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

class _$GgetOwnerEarningsData_getOwnerEarnings_revenueSerializer
    implements
        StructuredSerializer<GgetOwnerEarningsData_getOwnerEarnings_revenue> {
  @override
  final Iterable<Type> types = const [
    GgetOwnerEarningsData_getOwnerEarnings_revenue,
    _$GgetOwnerEarningsData_getOwnerEarnings_revenue
  ];
  @override
  final String wireName = 'GgetOwnerEarningsData_getOwnerEarnings_revenue';

  @override
  Iterable<Object?> serialize(Serializers serializers,
      GgetOwnerEarningsData_getOwnerEarnings_revenue object,
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
  GgetOwnerEarningsData_getOwnerEarnings_revenue deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GgetOwnerEarningsData_getOwnerEarnings_revenueBuilder();

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

class _$GgetOwnerEarningsData_getOwnerEarnings_breakdownSerializer
    implements
        StructuredSerializer<GgetOwnerEarningsData_getOwnerEarnings_breakdown> {
  @override
  final Iterable<Type> types = const [
    GgetOwnerEarningsData_getOwnerEarnings_breakdown,
    _$GgetOwnerEarningsData_getOwnerEarnings_breakdown
  ];
  @override
  final String wireName = 'GgetOwnerEarningsData_getOwnerEarnings_breakdown';

  @override
  Iterable<Object?> serialize(Serializers serializers,
      GgetOwnerEarningsData_getOwnerEarnings_breakdown object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      '__typename',
      serializers.serialize(object.G__typename,
          specifiedType: const FullType(String)),
    ];
    Object? value;
    value = object.rental;
    if (value != null) {
      result
        ..add('rental')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(double)));
    }
    value = object.options;
    if (value != null) {
      result
        ..add('options')
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
    value = object.other;
    if (value != null) {
      result
        ..add('other')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(double)));
    }
    return result;
  }

  @override
  GgetOwnerEarningsData_getOwnerEarnings_breakdown deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result =
        new GgetOwnerEarningsData_getOwnerEarnings_breakdownBuilder();

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
        case 'rental':
          result.rental = serializers.deserialize(value,
              specifiedType: const FullType(double)) as double?;
          break;
        case 'options':
          result.options = serializers.deserialize(value,
              specifiedType: const FullType(double)) as double?;
          break;
        case 'delivery':
          result.delivery = serializers.deserialize(value,
              specifiedType: const FullType(double)) as double?;
          break;
        case 'other':
          result.other = serializers.deserialize(value,
              specifiedType: const FullType(double)) as double?;
          break;
      }
    }

    return result.build();
  }
}

class _$GgetOwnerEarningsData_getOwnerEarnings_seriesSerializer
    implements
        StructuredSerializer<GgetOwnerEarningsData_getOwnerEarnings_series> {
  @override
  final Iterable<Type> types = const [
    GgetOwnerEarningsData_getOwnerEarnings_series,
    _$GgetOwnerEarningsData_getOwnerEarnings_series
  ];
  @override
  final String wireName = 'GgetOwnerEarningsData_getOwnerEarnings_series';

  @override
  Iterable<Object?> serialize(Serializers serializers,
      GgetOwnerEarningsData_getOwnerEarnings_series object,
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
                  GgetOwnerEarningsData_getOwnerEarnings_series_points)
            ])));
    }
    return result;
  }

  @override
  GgetOwnerEarningsData_getOwnerEarnings_series deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GgetOwnerEarningsData_getOwnerEarnings_seriesBuilder();

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
                    GgetOwnerEarningsData_getOwnerEarnings_series_points)
              ]))! as BuiltList<Object?>);
          break;
      }
    }

    return result.build();
  }
}

class _$GgetOwnerEarningsData_getOwnerEarnings_series_pointsSerializer
    implements
        StructuredSerializer<
            GgetOwnerEarningsData_getOwnerEarnings_series_points> {
  @override
  final Iterable<Type> types = const [
    GgetOwnerEarningsData_getOwnerEarnings_series_points,
    _$GgetOwnerEarningsData_getOwnerEarnings_series_points
  ];
  @override
  final String wireName =
      'GgetOwnerEarningsData_getOwnerEarnings_series_points';

  @override
  Iterable<Object?> serialize(Serializers serializers,
      GgetOwnerEarningsData_getOwnerEarnings_series_points object,
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
  GgetOwnerEarningsData_getOwnerEarnings_series_points deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result =
        new GgetOwnerEarningsData_getOwnerEarnings_series_pointsBuilder();

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

class _$GgetOwnerEarningsData_getOwnerEarnings_vehiclesSerializer
    implements
        StructuredSerializer<GgetOwnerEarningsData_getOwnerEarnings_vehicles> {
  @override
  final Iterable<Type> types = const [
    GgetOwnerEarningsData_getOwnerEarnings_vehicles,
    _$GgetOwnerEarningsData_getOwnerEarnings_vehicles
  ];
  @override
  final String wireName = 'GgetOwnerEarningsData_getOwnerEarnings_vehicles';

  @override
  Iterable<Object?> serialize(Serializers serializers,
      GgetOwnerEarningsData_getOwnerEarnings_vehicles object,
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
  GgetOwnerEarningsData_getOwnerEarnings_vehicles deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GgetOwnerEarningsData_getOwnerEarnings_vehiclesBuilder();

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

class _$GgetOwnerEarningsData_getOwnerEarnings_rowsSerializer
    implements
        StructuredSerializer<GgetOwnerEarningsData_getOwnerEarnings_rows> {
  @override
  final Iterable<Type> types = const [
    GgetOwnerEarningsData_getOwnerEarnings_rows,
    _$GgetOwnerEarningsData_getOwnerEarnings_rows
  ];
  @override
  final String wireName = 'GgetOwnerEarningsData_getOwnerEarnings_rows';

  @override
  Iterable<Object?> serialize(Serializers serializers,
      GgetOwnerEarningsData_getOwnerEarnings_rows object,
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
    value = object.grossAmount;
    if (value != null) {
      result
        ..add('grossAmount')
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
    value = object.commission;
    if (value != null) {
      result
        ..add('commission')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(double)));
    }
    value = object.promoAdjustment;
    if (value != null) {
      result
        ..add('promoAdjustment')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(double)));
    }
    value = object.components;
    if (value != null) {
      result
        ..add('components')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(
                GgetOwnerEarningsData_getOwnerEarnings_rows_components)));
    }
    value = object.payment;
    if (value != null) {
      result
        ..add('payment')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(
                GgetOwnerEarningsData_getOwnerEarnings_rows_payment)));
    }
    return result;
  }

  @override
  GgetOwnerEarningsData_getOwnerEarnings_rows deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GgetOwnerEarningsData_getOwnerEarnings_rowsBuilder();

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
        case 'grossAmount':
          result.grossAmount = serializers.deserialize(value,
              specifiedType: const FullType(double)) as double?;
          break;
        case 'netRevenue':
          result.netRevenue = serializers.deserialize(value,
              specifiedType: const FullType(double)) as double?;
          break;
        case 'commission':
          result.commission = serializers.deserialize(value,
              specifiedType: const FullType(double)) as double?;
          break;
        case 'promoAdjustment':
          result.promoAdjustment = serializers.deserialize(value,
              specifiedType: const FullType(double)) as double?;
          break;
        case 'components':
          result.components.replace(serializers.deserialize(value,
                  specifiedType: const FullType(
                      GgetOwnerEarningsData_getOwnerEarnings_rows_components))!
              as GgetOwnerEarningsData_getOwnerEarnings_rows_components);
          break;
        case 'payment':
          result.payment.replace(serializers.deserialize(value,
                  specifiedType: const FullType(
                      GgetOwnerEarningsData_getOwnerEarnings_rows_payment))!
              as GgetOwnerEarningsData_getOwnerEarnings_rows_payment);
          break;
      }
    }

    return result.build();
  }
}

class _$GgetOwnerEarningsData_getOwnerEarnings_rows_componentsSerializer
    implements
        StructuredSerializer<
            GgetOwnerEarningsData_getOwnerEarnings_rows_components> {
  @override
  final Iterable<Type> types = const [
    GgetOwnerEarningsData_getOwnerEarnings_rows_components,
    _$GgetOwnerEarningsData_getOwnerEarnings_rows_components
  ];
  @override
  final String wireName =
      'GgetOwnerEarningsData_getOwnerEarnings_rows_components';

  @override
  Iterable<Object?> serialize(Serializers serializers,
      GgetOwnerEarningsData_getOwnerEarnings_rows_components object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      '__typename',
      serializers.serialize(object.G__typename,
          specifiedType: const FullType(String)),
    ];
    Object? value;
    value = object.rental;
    if (value != null) {
      result
        ..add('rental')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(double)));
    }
    value = object.options;
    if (value != null) {
      result
        ..add('options')
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
    value = object.other;
    if (value != null) {
      result
        ..add('other')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(double)));
    }
    return result;
  }

  @override
  GgetOwnerEarningsData_getOwnerEarnings_rows_components deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result =
        new GgetOwnerEarningsData_getOwnerEarnings_rows_componentsBuilder();

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
        case 'rental':
          result.rental = serializers.deserialize(value,
              specifiedType: const FullType(double)) as double?;
          break;
        case 'options':
          result.options = serializers.deserialize(value,
              specifiedType: const FullType(double)) as double?;
          break;
        case 'delivery':
          result.delivery = serializers.deserialize(value,
              specifiedType: const FullType(double)) as double?;
          break;
        case 'other':
          result.other = serializers.deserialize(value,
              specifiedType: const FullType(double)) as double?;
          break;
      }
    }

    return result.build();
  }
}

class _$GgetOwnerEarningsData_getOwnerEarnings_rows_paymentSerializer
    implements
        StructuredSerializer<
            GgetOwnerEarningsData_getOwnerEarnings_rows_payment> {
  @override
  final Iterable<Type> types = const [
    GgetOwnerEarningsData_getOwnerEarnings_rows_payment,
    _$GgetOwnerEarningsData_getOwnerEarnings_rows_payment
  ];
  @override
  final String wireName = 'GgetOwnerEarningsData_getOwnerEarnings_rows_payment';

  @override
  Iterable<Object?> serialize(Serializers serializers,
      GgetOwnerEarningsData_getOwnerEarnings_rows_payment object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      '__typename',
      serializers.serialize(object.G__typename,
          specifiedType: const FullType(String)),
    ];
    Object? value;
    value = object.method;
    if (value != null) {
      result
        ..add('method')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.reference;
    if (value != null) {
      result
        ..add('reference')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.providerStatus;
    if (value != null) {
      result
        ..add('providerStatus')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
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
  GgetOwnerEarningsData_getOwnerEarnings_rows_payment deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result =
        new GgetOwnerEarningsData_getOwnerEarnings_rows_paymentBuilder();

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
        case 'method':
          result.method = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'reference':
          result.reference = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'providerStatus':
          result.providerStatus = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
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

class _$GgetOwnerEarningsData extends GgetOwnerEarningsData {
  @override
  final String G__typename;
  @override
  final GgetOwnerEarningsData_getOwnerEarnings? getOwnerEarnings;

  factory _$GgetOwnerEarningsData(
          [void Function(GgetOwnerEarningsDataBuilder)? updates]) =>
      (new GgetOwnerEarningsDataBuilder()..update(updates))._build();

  _$GgetOwnerEarningsData._({required this.G__typename, this.getOwnerEarnings})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        G__typename, r'GgetOwnerEarningsData', 'G__typename');
  }

  @override
  GgetOwnerEarningsData rebuild(
          void Function(GgetOwnerEarningsDataBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GgetOwnerEarningsDataBuilder toBuilder() =>
      new GgetOwnerEarningsDataBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GgetOwnerEarningsData &&
        G__typename == other.G__typename &&
        getOwnerEarnings == other.getOwnerEarnings;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, G__typename.hashCode);
    _$hash = $jc(_$hash, getOwnerEarnings.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'GgetOwnerEarningsData')
          ..add('G__typename', G__typename)
          ..add('getOwnerEarnings', getOwnerEarnings))
        .toString();
  }
}

class GgetOwnerEarningsDataBuilder
    implements Builder<GgetOwnerEarningsData, GgetOwnerEarningsDataBuilder> {
  _$GgetOwnerEarningsData? _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  GgetOwnerEarningsData_getOwnerEarningsBuilder? _getOwnerEarnings;
  GgetOwnerEarningsData_getOwnerEarningsBuilder get getOwnerEarnings =>
      _$this._getOwnerEarnings ??=
          new GgetOwnerEarningsData_getOwnerEarningsBuilder();
  set getOwnerEarnings(
          GgetOwnerEarningsData_getOwnerEarningsBuilder? getOwnerEarnings) =>
      _$this._getOwnerEarnings = getOwnerEarnings;

  GgetOwnerEarningsDataBuilder() {
    GgetOwnerEarningsData._initializeBuilder(this);
  }

  GgetOwnerEarningsDataBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _G__typename = $v.G__typename;
      _getOwnerEarnings = $v.getOwnerEarnings?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GgetOwnerEarningsData other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GgetOwnerEarningsData;
  }

  @override
  void update(void Function(GgetOwnerEarningsDataBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GgetOwnerEarningsData build() => _build();

  _$GgetOwnerEarningsData _build() {
    _$GgetOwnerEarningsData _$result;
    try {
      _$result = _$v ??
          new _$GgetOwnerEarningsData._(
              G__typename: BuiltValueNullFieldError.checkNotNull(
                  G__typename, r'GgetOwnerEarningsData', 'G__typename'),
              getOwnerEarnings: _getOwnerEarnings?.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'getOwnerEarnings';
        _getOwnerEarnings?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'GgetOwnerEarningsData', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

class _$GgetOwnerEarningsData_getOwnerEarnings
    extends GgetOwnerEarningsData_getOwnerEarnings {
  @override
  final String G__typename;
  @override
  final int? status;
  @override
  final String? errorMessage;
  @override
  final String? convertCurrency;
  @override
  final GgetOwnerEarningsData_getOwnerEarnings_period? period;
  @override
  final GgetOwnerEarningsData_getOwnerEarnings_summary? summary;
  @override
  final GgetOwnerEarningsData_getOwnerEarnings_revenue? revenue;
  @override
  final GgetOwnerEarningsData_getOwnerEarnings_breakdown? breakdown;
  @override
  final GgetOwnerEarningsData_getOwnerEarnings_series? series;
  @override
  final BuiltList<GgetOwnerEarningsData_getOwnerEarnings_vehicles?>? vehicles;
  @override
  final String? tab;
  @override
  final String? sortBy;
  @override
  final String? sortDir;
  @override
  final int? page;
  @override
  final int? pageSize;
  @override
  final int? count;
  @override
  final int? pageCount;
  @override
  final BuiltList<GgetOwnerEarningsData_getOwnerEarnings_rows?>? rows;

  factory _$GgetOwnerEarningsData_getOwnerEarnings(
          [void Function(GgetOwnerEarningsData_getOwnerEarningsBuilder)?
              updates]) =>
      (new GgetOwnerEarningsData_getOwnerEarningsBuilder()..update(updates))
          ._build();

  _$GgetOwnerEarningsData_getOwnerEarnings._(
      {required this.G__typename,
      this.status,
      this.errorMessage,
      this.convertCurrency,
      this.period,
      this.summary,
      this.revenue,
      this.breakdown,
      this.series,
      this.vehicles,
      this.tab,
      this.sortBy,
      this.sortDir,
      this.page,
      this.pageSize,
      this.count,
      this.pageCount,
      this.rows})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        G__typename, r'GgetOwnerEarningsData_getOwnerEarnings', 'G__typename');
  }

  @override
  GgetOwnerEarningsData_getOwnerEarnings rebuild(
          void Function(GgetOwnerEarningsData_getOwnerEarningsBuilder)
              updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GgetOwnerEarningsData_getOwnerEarningsBuilder toBuilder() =>
      new GgetOwnerEarningsData_getOwnerEarningsBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GgetOwnerEarningsData_getOwnerEarnings &&
        G__typename == other.G__typename &&
        status == other.status &&
        errorMessage == other.errorMessage &&
        convertCurrency == other.convertCurrency &&
        period == other.period &&
        summary == other.summary &&
        revenue == other.revenue &&
        breakdown == other.breakdown &&
        series == other.series &&
        vehicles == other.vehicles &&
        tab == other.tab &&
        sortBy == other.sortBy &&
        sortDir == other.sortDir &&
        page == other.page &&
        pageSize == other.pageSize &&
        count == other.count &&
        pageCount == other.pageCount &&
        rows == other.rows;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, G__typename.hashCode);
    _$hash = $jc(_$hash, status.hashCode);
    _$hash = $jc(_$hash, errorMessage.hashCode);
    _$hash = $jc(_$hash, convertCurrency.hashCode);
    _$hash = $jc(_$hash, period.hashCode);
    _$hash = $jc(_$hash, summary.hashCode);
    _$hash = $jc(_$hash, revenue.hashCode);
    _$hash = $jc(_$hash, breakdown.hashCode);
    _$hash = $jc(_$hash, series.hashCode);
    _$hash = $jc(_$hash, vehicles.hashCode);
    _$hash = $jc(_$hash, tab.hashCode);
    _$hash = $jc(_$hash, sortBy.hashCode);
    _$hash = $jc(_$hash, sortDir.hashCode);
    _$hash = $jc(_$hash, page.hashCode);
    _$hash = $jc(_$hash, pageSize.hashCode);
    _$hash = $jc(_$hash, count.hashCode);
    _$hash = $jc(_$hash, pageCount.hashCode);
    _$hash = $jc(_$hash, rows.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(
            r'GgetOwnerEarningsData_getOwnerEarnings')
          ..add('G__typename', G__typename)
          ..add('status', status)
          ..add('errorMessage', errorMessage)
          ..add('convertCurrency', convertCurrency)
          ..add('period', period)
          ..add('summary', summary)
          ..add('revenue', revenue)
          ..add('breakdown', breakdown)
          ..add('series', series)
          ..add('vehicles', vehicles)
          ..add('tab', tab)
          ..add('sortBy', sortBy)
          ..add('sortDir', sortDir)
          ..add('page', page)
          ..add('pageSize', pageSize)
          ..add('count', count)
          ..add('pageCount', pageCount)
          ..add('rows', rows))
        .toString();
  }
}

class GgetOwnerEarningsData_getOwnerEarningsBuilder
    implements
        Builder<GgetOwnerEarningsData_getOwnerEarnings,
            GgetOwnerEarningsData_getOwnerEarningsBuilder> {
  _$GgetOwnerEarningsData_getOwnerEarnings? _$v;

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

  GgetOwnerEarningsData_getOwnerEarnings_periodBuilder? _period;
  GgetOwnerEarningsData_getOwnerEarnings_periodBuilder get period =>
      _$this._period ??=
          new GgetOwnerEarningsData_getOwnerEarnings_periodBuilder();
  set period(GgetOwnerEarningsData_getOwnerEarnings_periodBuilder? period) =>
      _$this._period = period;

  GgetOwnerEarningsData_getOwnerEarnings_summaryBuilder? _summary;
  GgetOwnerEarningsData_getOwnerEarnings_summaryBuilder get summary =>
      _$this._summary ??=
          new GgetOwnerEarningsData_getOwnerEarnings_summaryBuilder();
  set summary(GgetOwnerEarningsData_getOwnerEarnings_summaryBuilder? summary) =>
      _$this._summary = summary;

  GgetOwnerEarningsData_getOwnerEarnings_revenueBuilder? _revenue;
  GgetOwnerEarningsData_getOwnerEarnings_revenueBuilder get revenue =>
      _$this._revenue ??=
          new GgetOwnerEarningsData_getOwnerEarnings_revenueBuilder();
  set revenue(GgetOwnerEarningsData_getOwnerEarnings_revenueBuilder? revenue) =>
      _$this._revenue = revenue;

  GgetOwnerEarningsData_getOwnerEarnings_breakdownBuilder? _breakdown;
  GgetOwnerEarningsData_getOwnerEarnings_breakdownBuilder get breakdown =>
      _$this._breakdown ??=
          new GgetOwnerEarningsData_getOwnerEarnings_breakdownBuilder();
  set breakdown(
          GgetOwnerEarningsData_getOwnerEarnings_breakdownBuilder? breakdown) =>
      _$this._breakdown = breakdown;

  GgetOwnerEarningsData_getOwnerEarnings_seriesBuilder? _series;
  GgetOwnerEarningsData_getOwnerEarnings_seriesBuilder get series =>
      _$this._series ??=
          new GgetOwnerEarningsData_getOwnerEarnings_seriesBuilder();
  set series(GgetOwnerEarningsData_getOwnerEarnings_seriesBuilder? series) =>
      _$this._series = series;

  ListBuilder<GgetOwnerEarningsData_getOwnerEarnings_vehicles?>? _vehicles;
  ListBuilder<GgetOwnerEarningsData_getOwnerEarnings_vehicles?> get vehicles =>
      _$this._vehicles ??=
          new ListBuilder<GgetOwnerEarningsData_getOwnerEarnings_vehicles?>();
  set vehicles(
          ListBuilder<GgetOwnerEarningsData_getOwnerEarnings_vehicles?>?
              vehicles) =>
      _$this._vehicles = vehicles;

  String? _tab;
  String? get tab => _$this._tab;
  set tab(String? tab) => _$this._tab = tab;

  String? _sortBy;
  String? get sortBy => _$this._sortBy;
  set sortBy(String? sortBy) => _$this._sortBy = sortBy;

  String? _sortDir;
  String? get sortDir => _$this._sortDir;
  set sortDir(String? sortDir) => _$this._sortDir = sortDir;

  int? _page;
  int? get page => _$this._page;
  set page(int? page) => _$this._page = page;

  int? _pageSize;
  int? get pageSize => _$this._pageSize;
  set pageSize(int? pageSize) => _$this._pageSize = pageSize;

  int? _count;
  int? get count => _$this._count;
  set count(int? count) => _$this._count = count;

  int? _pageCount;
  int? get pageCount => _$this._pageCount;
  set pageCount(int? pageCount) => _$this._pageCount = pageCount;

  ListBuilder<GgetOwnerEarningsData_getOwnerEarnings_rows?>? _rows;
  ListBuilder<GgetOwnerEarningsData_getOwnerEarnings_rows?> get rows =>
      _$this._rows ??=
          new ListBuilder<GgetOwnerEarningsData_getOwnerEarnings_rows?>();
  set rows(ListBuilder<GgetOwnerEarningsData_getOwnerEarnings_rows?>? rows) =>
      _$this._rows = rows;

  GgetOwnerEarningsData_getOwnerEarningsBuilder() {
    GgetOwnerEarningsData_getOwnerEarnings._initializeBuilder(this);
  }

  GgetOwnerEarningsData_getOwnerEarningsBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _G__typename = $v.G__typename;
      _status = $v.status;
      _errorMessage = $v.errorMessage;
      _convertCurrency = $v.convertCurrency;
      _period = $v.period?.toBuilder();
      _summary = $v.summary?.toBuilder();
      _revenue = $v.revenue?.toBuilder();
      _breakdown = $v.breakdown?.toBuilder();
      _series = $v.series?.toBuilder();
      _vehicles = $v.vehicles?.toBuilder();
      _tab = $v.tab;
      _sortBy = $v.sortBy;
      _sortDir = $v.sortDir;
      _page = $v.page;
      _pageSize = $v.pageSize;
      _count = $v.count;
      _pageCount = $v.pageCount;
      _rows = $v.rows?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GgetOwnerEarningsData_getOwnerEarnings other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GgetOwnerEarningsData_getOwnerEarnings;
  }

  @override
  void update(
      void Function(GgetOwnerEarningsData_getOwnerEarningsBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GgetOwnerEarningsData_getOwnerEarnings build() => _build();

  _$GgetOwnerEarningsData_getOwnerEarnings _build() {
    _$GgetOwnerEarningsData_getOwnerEarnings _$result;
    try {
      _$result = _$v ??
          new _$GgetOwnerEarningsData_getOwnerEarnings._(
              G__typename: BuiltValueNullFieldError.checkNotNull(G__typename,
                  r'GgetOwnerEarningsData_getOwnerEarnings', 'G__typename'),
              status: status,
              errorMessage: errorMessage,
              convertCurrency: convertCurrency,
              period: _period?.build(),
              summary: _summary?.build(),
              revenue: _revenue?.build(),
              breakdown: _breakdown?.build(),
              series: _series?.build(),
              vehicles: _vehicles?.build(),
              tab: tab,
              sortBy: sortBy,
              sortDir: sortDir,
              page: page,
              pageSize: pageSize,
              count: count,
              pageCount: pageCount,
              rows: _rows?.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'period';
        _period?.build();
        _$failedField = 'summary';
        _summary?.build();
        _$failedField = 'revenue';
        _revenue?.build();
        _$failedField = 'breakdown';
        _breakdown?.build();
        _$failedField = 'series';
        _series?.build();
        _$failedField = 'vehicles';
        _vehicles?.build();

        _$failedField = 'rows';
        _rows?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'GgetOwnerEarningsData_getOwnerEarnings',
            _$failedField,
            e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

class _$GgetOwnerEarningsData_getOwnerEarnings_period
    extends GgetOwnerEarningsData_getOwnerEarnings_period {
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

  factory _$GgetOwnerEarningsData_getOwnerEarnings_period(
          [void Function(GgetOwnerEarningsData_getOwnerEarnings_periodBuilder)?
              updates]) =>
      (new GgetOwnerEarningsData_getOwnerEarnings_periodBuilder()
            ..update(updates))
          ._build();

  _$GgetOwnerEarningsData_getOwnerEarnings_period._(
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
        r'GgetOwnerEarningsData_getOwnerEarnings_period', 'G__typename');
  }

  @override
  GgetOwnerEarningsData_getOwnerEarnings_period rebuild(
          void Function(GgetOwnerEarningsData_getOwnerEarnings_periodBuilder)
              updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GgetOwnerEarningsData_getOwnerEarnings_periodBuilder toBuilder() =>
      new GgetOwnerEarningsData_getOwnerEarnings_periodBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GgetOwnerEarningsData_getOwnerEarnings_period &&
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
            r'GgetOwnerEarningsData_getOwnerEarnings_period')
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

class GgetOwnerEarningsData_getOwnerEarnings_periodBuilder
    implements
        Builder<GgetOwnerEarningsData_getOwnerEarnings_period,
            GgetOwnerEarningsData_getOwnerEarnings_periodBuilder> {
  _$GgetOwnerEarningsData_getOwnerEarnings_period? _$v;

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

  GgetOwnerEarningsData_getOwnerEarnings_periodBuilder() {
    GgetOwnerEarningsData_getOwnerEarnings_period._initializeBuilder(this);
  }

  GgetOwnerEarningsData_getOwnerEarnings_periodBuilder get _$this {
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
  void replace(GgetOwnerEarningsData_getOwnerEarnings_period other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GgetOwnerEarningsData_getOwnerEarnings_period;
  }

  @override
  void update(
      void Function(GgetOwnerEarningsData_getOwnerEarnings_periodBuilder)?
          updates) {
    if (updates != null) updates(this);
  }

  @override
  GgetOwnerEarningsData_getOwnerEarnings_period build() => _build();

  _$GgetOwnerEarningsData_getOwnerEarnings_period _build() {
    final _$result = _$v ??
        new _$GgetOwnerEarningsData_getOwnerEarnings_period._(
            G__typename: BuiltValueNullFieldError.checkNotNull(
                G__typename,
                r'GgetOwnerEarningsData_getOwnerEarnings_period',
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

class _$GgetOwnerEarningsData_getOwnerEarnings_summary
    extends GgetOwnerEarningsData_getOwnerEarnings_summary {
  @override
  final String G__typename;
  @override
  final GgetOwnerEarningsData_getOwnerEarnings_summary_netRevenue? netRevenue;
  @override
  final GgetOwnerEarningsData_getOwnerEarnings_summary_volume? volume;
  @override
  final GgetOwnerEarningsData_getOwnerEarnings_summary_optionsAmount?
      optionsAmount;

  factory _$GgetOwnerEarningsData_getOwnerEarnings_summary(
          [void Function(GgetOwnerEarningsData_getOwnerEarnings_summaryBuilder)?
              updates]) =>
      (new GgetOwnerEarningsData_getOwnerEarnings_summaryBuilder()
            ..update(updates))
          ._build();

  _$GgetOwnerEarningsData_getOwnerEarnings_summary._(
      {required this.G__typename,
      this.netRevenue,
      this.volume,
      this.optionsAmount})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(G__typename,
        r'GgetOwnerEarningsData_getOwnerEarnings_summary', 'G__typename');
  }

  @override
  GgetOwnerEarningsData_getOwnerEarnings_summary rebuild(
          void Function(GgetOwnerEarningsData_getOwnerEarnings_summaryBuilder)
              updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GgetOwnerEarningsData_getOwnerEarnings_summaryBuilder toBuilder() =>
      new GgetOwnerEarningsData_getOwnerEarnings_summaryBuilder()
        ..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GgetOwnerEarningsData_getOwnerEarnings_summary &&
        G__typename == other.G__typename &&
        netRevenue == other.netRevenue &&
        volume == other.volume &&
        optionsAmount == other.optionsAmount;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, G__typename.hashCode);
    _$hash = $jc(_$hash, netRevenue.hashCode);
    _$hash = $jc(_$hash, volume.hashCode);
    _$hash = $jc(_$hash, optionsAmount.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(
            r'GgetOwnerEarningsData_getOwnerEarnings_summary')
          ..add('G__typename', G__typename)
          ..add('netRevenue', netRevenue)
          ..add('volume', volume)
          ..add('optionsAmount', optionsAmount))
        .toString();
  }
}

class GgetOwnerEarningsData_getOwnerEarnings_summaryBuilder
    implements
        Builder<GgetOwnerEarningsData_getOwnerEarnings_summary,
            GgetOwnerEarningsData_getOwnerEarnings_summaryBuilder> {
  _$GgetOwnerEarningsData_getOwnerEarnings_summary? _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  GgetOwnerEarningsData_getOwnerEarnings_summary_netRevenueBuilder? _netRevenue;
  GgetOwnerEarningsData_getOwnerEarnings_summary_netRevenueBuilder
      get netRevenue => _$this._netRevenue ??=
          new GgetOwnerEarningsData_getOwnerEarnings_summary_netRevenueBuilder();
  set netRevenue(
          GgetOwnerEarningsData_getOwnerEarnings_summary_netRevenueBuilder?
              netRevenue) =>
      _$this._netRevenue = netRevenue;

  GgetOwnerEarningsData_getOwnerEarnings_summary_volumeBuilder? _volume;
  GgetOwnerEarningsData_getOwnerEarnings_summary_volumeBuilder get volume =>
      _$this._volume ??=
          new GgetOwnerEarningsData_getOwnerEarnings_summary_volumeBuilder();
  set volume(
          GgetOwnerEarningsData_getOwnerEarnings_summary_volumeBuilder?
              volume) =>
      _$this._volume = volume;

  GgetOwnerEarningsData_getOwnerEarnings_summary_optionsAmountBuilder?
      _optionsAmount;
  GgetOwnerEarningsData_getOwnerEarnings_summary_optionsAmountBuilder
      get optionsAmount => _$this._optionsAmount ??=
          new GgetOwnerEarningsData_getOwnerEarnings_summary_optionsAmountBuilder();
  set optionsAmount(
          GgetOwnerEarningsData_getOwnerEarnings_summary_optionsAmountBuilder?
              optionsAmount) =>
      _$this._optionsAmount = optionsAmount;

  GgetOwnerEarningsData_getOwnerEarnings_summaryBuilder() {
    GgetOwnerEarningsData_getOwnerEarnings_summary._initializeBuilder(this);
  }

  GgetOwnerEarningsData_getOwnerEarnings_summaryBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _G__typename = $v.G__typename;
      _netRevenue = $v.netRevenue?.toBuilder();
      _volume = $v.volume?.toBuilder();
      _optionsAmount = $v.optionsAmount?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GgetOwnerEarningsData_getOwnerEarnings_summary other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GgetOwnerEarningsData_getOwnerEarnings_summary;
  }

  @override
  void update(
      void Function(GgetOwnerEarningsData_getOwnerEarnings_summaryBuilder)?
          updates) {
    if (updates != null) updates(this);
  }

  @override
  GgetOwnerEarningsData_getOwnerEarnings_summary build() => _build();

  _$GgetOwnerEarningsData_getOwnerEarnings_summary _build() {
    _$GgetOwnerEarningsData_getOwnerEarnings_summary _$result;
    try {
      _$result = _$v ??
          new _$GgetOwnerEarningsData_getOwnerEarnings_summary._(
              G__typename: BuiltValueNullFieldError.checkNotNull(
                  G__typename,
                  r'GgetOwnerEarningsData_getOwnerEarnings_summary',
                  'G__typename'),
              netRevenue: _netRevenue?.build(),
              volume: _volume?.build(),
              optionsAmount: _optionsAmount?.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'netRevenue';
        _netRevenue?.build();
        _$failedField = 'volume';
        _volume?.build();
        _$failedField = 'optionsAmount';
        _optionsAmount?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'GgetOwnerEarningsData_getOwnerEarnings_summary',
            _$failedField,
            e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

class _$GgetOwnerEarningsData_getOwnerEarnings_summary_netRevenue
    extends GgetOwnerEarningsData_getOwnerEarnings_summary_netRevenue {
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

  factory _$GgetOwnerEarningsData_getOwnerEarnings_summary_netRevenue(
          [void Function(
                  GgetOwnerEarningsData_getOwnerEarnings_summary_netRevenueBuilder)?
              updates]) =>
      (new GgetOwnerEarningsData_getOwnerEarnings_summary_netRevenueBuilder()
            ..update(updates))
          ._build();

  _$GgetOwnerEarningsData_getOwnerEarnings_summary_netRevenue._(
      {required this.G__typename,
      this.value,
      this.previous,
      this.change,
      this.trend,
      this.favorable})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        G__typename,
        r'GgetOwnerEarningsData_getOwnerEarnings_summary_netRevenue',
        'G__typename');
  }

  @override
  GgetOwnerEarningsData_getOwnerEarnings_summary_netRevenue rebuild(
          void Function(
                  GgetOwnerEarningsData_getOwnerEarnings_summary_netRevenueBuilder)
              updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GgetOwnerEarningsData_getOwnerEarnings_summary_netRevenueBuilder
      toBuilder() =>
          new GgetOwnerEarningsData_getOwnerEarnings_summary_netRevenueBuilder()
            ..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GgetOwnerEarningsData_getOwnerEarnings_summary_netRevenue &&
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
            r'GgetOwnerEarningsData_getOwnerEarnings_summary_netRevenue')
          ..add('G__typename', G__typename)
          ..add('value', value)
          ..add('previous', previous)
          ..add('change', change)
          ..add('trend', trend)
          ..add('favorable', favorable))
        .toString();
  }
}

class GgetOwnerEarningsData_getOwnerEarnings_summary_netRevenueBuilder
    implements
        Builder<GgetOwnerEarningsData_getOwnerEarnings_summary_netRevenue,
            GgetOwnerEarningsData_getOwnerEarnings_summary_netRevenueBuilder> {
  _$GgetOwnerEarningsData_getOwnerEarnings_summary_netRevenue? _$v;

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

  GgetOwnerEarningsData_getOwnerEarnings_summary_netRevenueBuilder() {
    GgetOwnerEarningsData_getOwnerEarnings_summary_netRevenue
        ._initializeBuilder(this);
  }

  GgetOwnerEarningsData_getOwnerEarnings_summary_netRevenueBuilder get _$this {
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
      GgetOwnerEarningsData_getOwnerEarnings_summary_netRevenue other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GgetOwnerEarningsData_getOwnerEarnings_summary_netRevenue;
  }

  @override
  void update(
      void Function(
              GgetOwnerEarningsData_getOwnerEarnings_summary_netRevenueBuilder)?
          updates) {
    if (updates != null) updates(this);
  }

  @override
  GgetOwnerEarningsData_getOwnerEarnings_summary_netRevenue build() => _build();

  _$GgetOwnerEarningsData_getOwnerEarnings_summary_netRevenue _build() {
    final _$result = _$v ??
        new _$GgetOwnerEarningsData_getOwnerEarnings_summary_netRevenue._(
            G__typename: BuiltValueNullFieldError.checkNotNull(
                G__typename,
                r'GgetOwnerEarningsData_getOwnerEarnings_summary_netRevenue',
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

class _$GgetOwnerEarningsData_getOwnerEarnings_summary_volume
    extends GgetOwnerEarningsData_getOwnerEarnings_summary_volume {
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

  factory _$GgetOwnerEarningsData_getOwnerEarnings_summary_volume(
          [void Function(
                  GgetOwnerEarningsData_getOwnerEarnings_summary_volumeBuilder)?
              updates]) =>
      (new GgetOwnerEarningsData_getOwnerEarnings_summary_volumeBuilder()
            ..update(updates))
          ._build();

  _$GgetOwnerEarningsData_getOwnerEarnings_summary_volume._(
      {required this.G__typename,
      this.value,
      this.previous,
      this.change,
      this.trend,
      this.favorable})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        G__typename,
        r'GgetOwnerEarningsData_getOwnerEarnings_summary_volume',
        'G__typename');
  }

  @override
  GgetOwnerEarningsData_getOwnerEarnings_summary_volume rebuild(
          void Function(
                  GgetOwnerEarningsData_getOwnerEarnings_summary_volumeBuilder)
              updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GgetOwnerEarningsData_getOwnerEarnings_summary_volumeBuilder toBuilder() =>
      new GgetOwnerEarningsData_getOwnerEarnings_summary_volumeBuilder()
        ..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GgetOwnerEarningsData_getOwnerEarnings_summary_volume &&
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
            r'GgetOwnerEarningsData_getOwnerEarnings_summary_volume')
          ..add('G__typename', G__typename)
          ..add('value', value)
          ..add('previous', previous)
          ..add('change', change)
          ..add('trend', trend)
          ..add('favorable', favorable))
        .toString();
  }
}

class GgetOwnerEarningsData_getOwnerEarnings_summary_volumeBuilder
    implements
        Builder<GgetOwnerEarningsData_getOwnerEarnings_summary_volume,
            GgetOwnerEarningsData_getOwnerEarnings_summary_volumeBuilder> {
  _$GgetOwnerEarningsData_getOwnerEarnings_summary_volume? _$v;

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

  GgetOwnerEarningsData_getOwnerEarnings_summary_volumeBuilder() {
    GgetOwnerEarningsData_getOwnerEarnings_summary_volume._initializeBuilder(
        this);
  }

  GgetOwnerEarningsData_getOwnerEarnings_summary_volumeBuilder get _$this {
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
  void replace(GgetOwnerEarningsData_getOwnerEarnings_summary_volume other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GgetOwnerEarningsData_getOwnerEarnings_summary_volume;
  }

  @override
  void update(
      void Function(
              GgetOwnerEarningsData_getOwnerEarnings_summary_volumeBuilder)?
          updates) {
    if (updates != null) updates(this);
  }

  @override
  GgetOwnerEarningsData_getOwnerEarnings_summary_volume build() => _build();

  _$GgetOwnerEarningsData_getOwnerEarnings_summary_volume _build() {
    final _$result = _$v ??
        new _$GgetOwnerEarningsData_getOwnerEarnings_summary_volume._(
            G__typename: BuiltValueNullFieldError.checkNotNull(
                G__typename,
                r'GgetOwnerEarningsData_getOwnerEarnings_summary_volume',
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

class _$GgetOwnerEarningsData_getOwnerEarnings_summary_optionsAmount
    extends GgetOwnerEarningsData_getOwnerEarnings_summary_optionsAmount {
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

  factory _$GgetOwnerEarningsData_getOwnerEarnings_summary_optionsAmount(
          [void Function(
                  GgetOwnerEarningsData_getOwnerEarnings_summary_optionsAmountBuilder)?
              updates]) =>
      (new GgetOwnerEarningsData_getOwnerEarnings_summary_optionsAmountBuilder()
            ..update(updates))
          ._build();

  _$GgetOwnerEarningsData_getOwnerEarnings_summary_optionsAmount._(
      {required this.G__typename,
      this.value,
      this.previous,
      this.change,
      this.trend,
      this.favorable})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        G__typename,
        r'GgetOwnerEarningsData_getOwnerEarnings_summary_optionsAmount',
        'G__typename');
  }

  @override
  GgetOwnerEarningsData_getOwnerEarnings_summary_optionsAmount rebuild(
          void Function(
                  GgetOwnerEarningsData_getOwnerEarnings_summary_optionsAmountBuilder)
              updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GgetOwnerEarningsData_getOwnerEarnings_summary_optionsAmountBuilder
      toBuilder() =>
          new GgetOwnerEarningsData_getOwnerEarnings_summary_optionsAmountBuilder()
            ..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other
            is GgetOwnerEarningsData_getOwnerEarnings_summary_optionsAmount &&
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
            r'GgetOwnerEarningsData_getOwnerEarnings_summary_optionsAmount')
          ..add('G__typename', G__typename)
          ..add('value', value)
          ..add('previous', previous)
          ..add('change', change)
          ..add('trend', trend)
          ..add('favorable', favorable))
        .toString();
  }
}

class GgetOwnerEarningsData_getOwnerEarnings_summary_optionsAmountBuilder
    implements
        Builder<GgetOwnerEarningsData_getOwnerEarnings_summary_optionsAmount,
            GgetOwnerEarningsData_getOwnerEarnings_summary_optionsAmountBuilder> {
  _$GgetOwnerEarningsData_getOwnerEarnings_summary_optionsAmount? _$v;

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

  GgetOwnerEarningsData_getOwnerEarnings_summary_optionsAmountBuilder() {
    GgetOwnerEarningsData_getOwnerEarnings_summary_optionsAmount
        ._initializeBuilder(this);
  }

  GgetOwnerEarningsData_getOwnerEarnings_summary_optionsAmountBuilder
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
      GgetOwnerEarningsData_getOwnerEarnings_summary_optionsAmount other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v =
        other as _$GgetOwnerEarningsData_getOwnerEarnings_summary_optionsAmount;
  }

  @override
  void update(
      void Function(
              GgetOwnerEarningsData_getOwnerEarnings_summary_optionsAmountBuilder)?
          updates) {
    if (updates != null) updates(this);
  }

  @override
  GgetOwnerEarningsData_getOwnerEarnings_summary_optionsAmount build() =>
      _build();

  _$GgetOwnerEarningsData_getOwnerEarnings_summary_optionsAmount _build() {
    final _$result = _$v ??
        new _$GgetOwnerEarningsData_getOwnerEarnings_summary_optionsAmount._(
            G__typename: BuiltValueNullFieldError.checkNotNull(
                G__typename,
                r'GgetOwnerEarningsData_getOwnerEarnings_summary_optionsAmount',
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

class _$GgetOwnerEarningsData_getOwnerEarnings_revenue
    extends GgetOwnerEarningsData_getOwnerEarnings_revenue {
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

  factory _$GgetOwnerEarningsData_getOwnerEarnings_revenue(
          [void Function(GgetOwnerEarningsData_getOwnerEarnings_revenueBuilder)?
              updates]) =>
      (new GgetOwnerEarningsData_getOwnerEarnings_revenueBuilder()
            ..update(updates))
          ._build();

  _$GgetOwnerEarningsData_getOwnerEarnings_revenue._(
      {required this.G__typename,
      this.netRevenue,
      this.upcoming,
      this.pendingPayout,
      this.paid,
      this.paidAmount})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(G__typename,
        r'GgetOwnerEarningsData_getOwnerEarnings_revenue', 'G__typename');
  }

  @override
  GgetOwnerEarningsData_getOwnerEarnings_revenue rebuild(
          void Function(GgetOwnerEarningsData_getOwnerEarnings_revenueBuilder)
              updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GgetOwnerEarningsData_getOwnerEarnings_revenueBuilder toBuilder() =>
      new GgetOwnerEarningsData_getOwnerEarnings_revenueBuilder()
        ..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GgetOwnerEarningsData_getOwnerEarnings_revenue &&
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
            r'GgetOwnerEarningsData_getOwnerEarnings_revenue')
          ..add('G__typename', G__typename)
          ..add('netRevenue', netRevenue)
          ..add('upcoming', upcoming)
          ..add('pendingPayout', pendingPayout)
          ..add('paid', paid)
          ..add('paidAmount', paidAmount))
        .toString();
  }
}

class GgetOwnerEarningsData_getOwnerEarnings_revenueBuilder
    implements
        Builder<GgetOwnerEarningsData_getOwnerEarnings_revenue,
            GgetOwnerEarningsData_getOwnerEarnings_revenueBuilder> {
  _$GgetOwnerEarningsData_getOwnerEarnings_revenue? _$v;

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

  GgetOwnerEarningsData_getOwnerEarnings_revenueBuilder() {
    GgetOwnerEarningsData_getOwnerEarnings_revenue._initializeBuilder(this);
  }

  GgetOwnerEarningsData_getOwnerEarnings_revenueBuilder get _$this {
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
  void replace(GgetOwnerEarningsData_getOwnerEarnings_revenue other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GgetOwnerEarningsData_getOwnerEarnings_revenue;
  }

  @override
  void update(
      void Function(GgetOwnerEarningsData_getOwnerEarnings_revenueBuilder)?
          updates) {
    if (updates != null) updates(this);
  }

  @override
  GgetOwnerEarningsData_getOwnerEarnings_revenue build() => _build();

  _$GgetOwnerEarningsData_getOwnerEarnings_revenue _build() {
    final _$result = _$v ??
        new _$GgetOwnerEarningsData_getOwnerEarnings_revenue._(
            G__typename: BuiltValueNullFieldError.checkNotNull(
                G__typename,
                r'GgetOwnerEarningsData_getOwnerEarnings_revenue',
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

class _$GgetOwnerEarningsData_getOwnerEarnings_breakdown
    extends GgetOwnerEarningsData_getOwnerEarnings_breakdown {
  @override
  final String G__typename;
  @override
  final double? rental;
  @override
  final double? options;
  @override
  final double? delivery;
  @override
  final double? other;

  factory _$GgetOwnerEarningsData_getOwnerEarnings_breakdown(
          [void Function(
                  GgetOwnerEarningsData_getOwnerEarnings_breakdownBuilder)?
              updates]) =>
      (new GgetOwnerEarningsData_getOwnerEarnings_breakdownBuilder()
            ..update(updates))
          ._build();

  _$GgetOwnerEarningsData_getOwnerEarnings_breakdown._(
      {required this.G__typename,
      this.rental,
      this.options,
      this.delivery,
      this.other})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(G__typename,
        r'GgetOwnerEarningsData_getOwnerEarnings_breakdown', 'G__typename');
  }

  @override
  GgetOwnerEarningsData_getOwnerEarnings_breakdown rebuild(
          void Function(GgetOwnerEarningsData_getOwnerEarnings_breakdownBuilder)
              updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GgetOwnerEarningsData_getOwnerEarnings_breakdownBuilder toBuilder() =>
      new GgetOwnerEarningsData_getOwnerEarnings_breakdownBuilder()
        ..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GgetOwnerEarningsData_getOwnerEarnings_breakdown &&
        G__typename == other.G__typename &&
        rental == other.rental &&
        options == other.options &&
        delivery == other.delivery &&
        this.other == other.other;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, G__typename.hashCode);
    _$hash = $jc(_$hash, rental.hashCode);
    _$hash = $jc(_$hash, options.hashCode);
    _$hash = $jc(_$hash, delivery.hashCode);
    _$hash = $jc(_$hash, other.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(
            r'GgetOwnerEarningsData_getOwnerEarnings_breakdown')
          ..add('G__typename', G__typename)
          ..add('rental', rental)
          ..add('options', options)
          ..add('delivery', delivery)
          ..add('other', other))
        .toString();
  }
}

class GgetOwnerEarningsData_getOwnerEarnings_breakdownBuilder
    implements
        Builder<GgetOwnerEarningsData_getOwnerEarnings_breakdown,
            GgetOwnerEarningsData_getOwnerEarnings_breakdownBuilder> {
  _$GgetOwnerEarningsData_getOwnerEarnings_breakdown? _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  double? _rental;
  double? get rental => _$this._rental;
  set rental(double? rental) => _$this._rental = rental;

  double? _options;
  double? get options => _$this._options;
  set options(double? options) => _$this._options = options;

  double? _delivery;
  double? get delivery => _$this._delivery;
  set delivery(double? delivery) => _$this._delivery = delivery;

  double? _other;
  double? get other => _$this._other;
  set other(double? other) => _$this._other = other;

  GgetOwnerEarningsData_getOwnerEarnings_breakdownBuilder() {
    GgetOwnerEarningsData_getOwnerEarnings_breakdown._initializeBuilder(this);
  }

  GgetOwnerEarningsData_getOwnerEarnings_breakdownBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _G__typename = $v.G__typename;
      _rental = $v.rental;
      _options = $v.options;
      _delivery = $v.delivery;
      _other = $v.other;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GgetOwnerEarningsData_getOwnerEarnings_breakdown other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GgetOwnerEarningsData_getOwnerEarnings_breakdown;
  }

  @override
  void update(
      void Function(GgetOwnerEarningsData_getOwnerEarnings_breakdownBuilder)?
          updates) {
    if (updates != null) updates(this);
  }

  @override
  GgetOwnerEarningsData_getOwnerEarnings_breakdown build() => _build();

  _$GgetOwnerEarningsData_getOwnerEarnings_breakdown _build() {
    final _$result = _$v ??
        new _$GgetOwnerEarningsData_getOwnerEarnings_breakdown._(
            G__typename: BuiltValueNullFieldError.checkNotNull(
                G__typename,
                r'GgetOwnerEarningsData_getOwnerEarnings_breakdown',
                'G__typename'),
            rental: rental,
            options: options,
            delivery: delivery,
            other: other);
    replace(_$result);
    return _$result;
  }
}

class _$GgetOwnerEarningsData_getOwnerEarnings_series
    extends GgetOwnerEarningsData_getOwnerEarnings_series {
  @override
  final String G__typename;
  @override
  final String? granularity;
  @override
  final String? start;
  @override
  final String? end;
  @override
  final BuiltList<GgetOwnerEarningsData_getOwnerEarnings_series_points?>?
      points;

  factory _$GgetOwnerEarningsData_getOwnerEarnings_series(
          [void Function(GgetOwnerEarningsData_getOwnerEarnings_seriesBuilder)?
              updates]) =>
      (new GgetOwnerEarningsData_getOwnerEarnings_seriesBuilder()
            ..update(updates))
          ._build();

  _$GgetOwnerEarningsData_getOwnerEarnings_series._(
      {required this.G__typename,
      this.granularity,
      this.start,
      this.end,
      this.points})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(G__typename,
        r'GgetOwnerEarningsData_getOwnerEarnings_series', 'G__typename');
  }

  @override
  GgetOwnerEarningsData_getOwnerEarnings_series rebuild(
          void Function(GgetOwnerEarningsData_getOwnerEarnings_seriesBuilder)
              updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GgetOwnerEarningsData_getOwnerEarnings_seriesBuilder toBuilder() =>
      new GgetOwnerEarningsData_getOwnerEarnings_seriesBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GgetOwnerEarningsData_getOwnerEarnings_series &&
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
            r'GgetOwnerEarningsData_getOwnerEarnings_series')
          ..add('G__typename', G__typename)
          ..add('granularity', granularity)
          ..add('start', start)
          ..add('end', end)
          ..add('points', points))
        .toString();
  }
}

class GgetOwnerEarningsData_getOwnerEarnings_seriesBuilder
    implements
        Builder<GgetOwnerEarningsData_getOwnerEarnings_series,
            GgetOwnerEarningsData_getOwnerEarnings_seriesBuilder> {
  _$GgetOwnerEarningsData_getOwnerEarnings_series? _$v;

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

  ListBuilder<GgetOwnerEarningsData_getOwnerEarnings_series_points?>? _points;
  ListBuilder<GgetOwnerEarningsData_getOwnerEarnings_series_points?>
      get points => _$this._points ??= new ListBuilder<
          GgetOwnerEarningsData_getOwnerEarnings_series_points?>();
  set points(
          ListBuilder<GgetOwnerEarningsData_getOwnerEarnings_series_points?>?
              points) =>
      _$this._points = points;

  GgetOwnerEarningsData_getOwnerEarnings_seriesBuilder() {
    GgetOwnerEarningsData_getOwnerEarnings_series._initializeBuilder(this);
  }

  GgetOwnerEarningsData_getOwnerEarnings_seriesBuilder get _$this {
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
  void replace(GgetOwnerEarningsData_getOwnerEarnings_series other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GgetOwnerEarningsData_getOwnerEarnings_series;
  }

  @override
  void update(
      void Function(GgetOwnerEarningsData_getOwnerEarnings_seriesBuilder)?
          updates) {
    if (updates != null) updates(this);
  }

  @override
  GgetOwnerEarningsData_getOwnerEarnings_series build() => _build();

  _$GgetOwnerEarningsData_getOwnerEarnings_series _build() {
    _$GgetOwnerEarningsData_getOwnerEarnings_series _$result;
    try {
      _$result = _$v ??
          new _$GgetOwnerEarningsData_getOwnerEarnings_series._(
              G__typename: BuiltValueNullFieldError.checkNotNull(
                  G__typename,
                  r'GgetOwnerEarningsData_getOwnerEarnings_series',
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
            r'GgetOwnerEarningsData_getOwnerEarnings_series',
            _$failedField,
            e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

class _$GgetOwnerEarningsData_getOwnerEarnings_series_points
    extends GgetOwnerEarningsData_getOwnerEarnings_series_points {
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

  factory _$GgetOwnerEarningsData_getOwnerEarnings_series_points(
          [void Function(
                  GgetOwnerEarningsData_getOwnerEarnings_series_pointsBuilder)?
              updates]) =>
      (new GgetOwnerEarningsData_getOwnerEarnings_series_pointsBuilder()
            ..update(updates))
          ._build();

  _$GgetOwnerEarningsData_getOwnerEarnings_series_points._(
      {required this.G__typename,
      this.key,
      this.start,
      this.end,
      this.netRevenue,
      this.bookings})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(G__typename,
        r'GgetOwnerEarningsData_getOwnerEarnings_series_points', 'G__typename');
  }

  @override
  GgetOwnerEarningsData_getOwnerEarnings_series_points rebuild(
          void Function(
                  GgetOwnerEarningsData_getOwnerEarnings_series_pointsBuilder)
              updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GgetOwnerEarningsData_getOwnerEarnings_series_pointsBuilder toBuilder() =>
      new GgetOwnerEarningsData_getOwnerEarnings_series_pointsBuilder()
        ..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GgetOwnerEarningsData_getOwnerEarnings_series_points &&
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
            r'GgetOwnerEarningsData_getOwnerEarnings_series_points')
          ..add('G__typename', G__typename)
          ..add('key', key)
          ..add('start', start)
          ..add('end', end)
          ..add('netRevenue', netRevenue)
          ..add('bookings', bookings))
        .toString();
  }
}

class GgetOwnerEarningsData_getOwnerEarnings_series_pointsBuilder
    implements
        Builder<GgetOwnerEarningsData_getOwnerEarnings_series_points,
            GgetOwnerEarningsData_getOwnerEarnings_series_pointsBuilder> {
  _$GgetOwnerEarningsData_getOwnerEarnings_series_points? _$v;

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

  GgetOwnerEarningsData_getOwnerEarnings_series_pointsBuilder() {
    GgetOwnerEarningsData_getOwnerEarnings_series_points._initializeBuilder(
        this);
  }

  GgetOwnerEarningsData_getOwnerEarnings_series_pointsBuilder get _$this {
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
  void replace(GgetOwnerEarningsData_getOwnerEarnings_series_points other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GgetOwnerEarningsData_getOwnerEarnings_series_points;
  }

  @override
  void update(
      void Function(
              GgetOwnerEarningsData_getOwnerEarnings_series_pointsBuilder)?
          updates) {
    if (updates != null) updates(this);
  }

  @override
  GgetOwnerEarningsData_getOwnerEarnings_series_points build() => _build();

  _$GgetOwnerEarningsData_getOwnerEarnings_series_points _build() {
    final _$result = _$v ??
        new _$GgetOwnerEarningsData_getOwnerEarnings_series_points._(
            G__typename: BuiltValueNullFieldError.checkNotNull(
                G__typename,
                r'GgetOwnerEarningsData_getOwnerEarnings_series_points',
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

class _$GgetOwnerEarningsData_getOwnerEarnings_vehicles
    extends GgetOwnerEarningsData_getOwnerEarnings_vehicles {
  @override
  final String G__typename;
  @override
  final int? listId;
  @override
  final String? title;
  @override
  final bool? isOnline;

  factory _$GgetOwnerEarningsData_getOwnerEarnings_vehicles(
          [void Function(
                  GgetOwnerEarningsData_getOwnerEarnings_vehiclesBuilder)?
              updates]) =>
      (new GgetOwnerEarningsData_getOwnerEarnings_vehiclesBuilder()
            ..update(updates))
          ._build();

  _$GgetOwnerEarningsData_getOwnerEarnings_vehicles._(
      {required this.G__typename, this.listId, this.title, this.isOnline})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(G__typename,
        r'GgetOwnerEarningsData_getOwnerEarnings_vehicles', 'G__typename');
  }

  @override
  GgetOwnerEarningsData_getOwnerEarnings_vehicles rebuild(
          void Function(GgetOwnerEarningsData_getOwnerEarnings_vehiclesBuilder)
              updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GgetOwnerEarningsData_getOwnerEarnings_vehiclesBuilder toBuilder() =>
      new GgetOwnerEarningsData_getOwnerEarnings_vehiclesBuilder()
        ..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GgetOwnerEarningsData_getOwnerEarnings_vehicles &&
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
            r'GgetOwnerEarningsData_getOwnerEarnings_vehicles')
          ..add('G__typename', G__typename)
          ..add('listId', listId)
          ..add('title', title)
          ..add('isOnline', isOnline))
        .toString();
  }
}

class GgetOwnerEarningsData_getOwnerEarnings_vehiclesBuilder
    implements
        Builder<GgetOwnerEarningsData_getOwnerEarnings_vehicles,
            GgetOwnerEarningsData_getOwnerEarnings_vehiclesBuilder> {
  _$GgetOwnerEarningsData_getOwnerEarnings_vehicles? _$v;

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

  GgetOwnerEarningsData_getOwnerEarnings_vehiclesBuilder() {
    GgetOwnerEarningsData_getOwnerEarnings_vehicles._initializeBuilder(this);
  }

  GgetOwnerEarningsData_getOwnerEarnings_vehiclesBuilder get _$this {
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
  void replace(GgetOwnerEarningsData_getOwnerEarnings_vehicles other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GgetOwnerEarningsData_getOwnerEarnings_vehicles;
  }

  @override
  void update(
      void Function(GgetOwnerEarningsData_getOwnerEarnings_vehiclesBuilder)?
          updates) {
    if (updates != null) updates(this);
  }

  @override
  GgetOwnerEarningsData_getOwnerEarnings_vehicles build() => _build();

  _$GgetOwnerEarningsData_getOwnerEarnings_vehicles _build() {
    final _$result = _$v ??
        new _$GgetOwnerEarningsData_getOwnerEarnings_vehicles._(
            G__typename: BuiltValueNullFieldError.checkNotNull(
                G__typename,
                r'GgetOwnerEarningsData_getOwnerEarnings_vehicles',
                'G__typename'),
            listId: listId,
            title: title,
            isOnline: isOnline);
    replace(_$result);
    return _$result;
  }
}

class _$GgetOwnerEarningsData_getOwnerEarnings_rows
    extends GgetOwnerEarningsData_getOwnerEarnings_rows {
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
  final double? grossAmount;
  @override
  final double? netRevenue;
  @override
  final double? commission;
  @override
  final double? promoAdjustment;
  @override
  final GgetOwnerEarningsData_getOwnerEarnings_rows_components? components;
  @override
  final GgetOwnerEarningsData_getOwnerEarnings_rows_payment? payment;

  factory _$GgetOwnerEarningsData_getOwnerEarnings_rows(
          [void Function(GgetOwnerEarningsData_getOwnerEarnings_rowsBuilder)?
              updates]) =>
      (new GgetOwnerEarningsData_getOwnerEarnings_rowsBuilder()
            ..update(updates))
          ._build();

  _$GgetOwnerEarningsData_getOwnerEarnings_rows._(
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
      this.grossAmount,
      this.netRevenue,
      this.commission,
      this.promoAdjustment,
      this.components,
      this.payment})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(G__typename,
        r'GgetOwnerEarningsData_getOwnerEarnings_rows', 'G__typename');
  }

  @override
  GgetOwnerEarningsData_getOwnerEarnings_rows rebuild(
          void Function(GgetOwnerEarningsData_getOwnerEarnings_rowsBuilder)
              updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GgetOwnerEarningsData_getOwnerEarnings_rowsBuilder toBuilder() =>
      new GgetOwnerEarningsData_getOwnerEarnings_rowsBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GgetOwnerEarningsData_getOwnerEarnings_rows &&
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
        grossAmount == other.grossAmount &&
        netRevenue == other.netRevenue &&
        commission == other.commission &&
        promoAdjustment == other.promoAdjustment &&
        components == other.components &&
        payment == other.payment;
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
    _$hash = $jc(_$hash, grossAmount.hashCode);
    _$hash = $jc(_$hash, netRevenue.hashCode);
    _$hash = $jc(_$hash, commission.hashCode);
    _$hash = $jc(_$hash, promoAdjustment.hashCode);
    _$hash = $jc(_$hash, components.hashCode);
    _$hash = $jc(_$hash, payment.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(
            r'GgetOwnerEarningsData_getOwnerEarnings_rows')
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
          ..add('grossAmount', grossAmount)
          ..add('netRevenue', netRevenue)
          ..add('commission', commission)
          ..add('promoAdjustment', promoAdjustment)
          ..add('components', components)
          ..add('payment', payment))
        .toString();
  }
}

class GgetOwnerEarningsData_getOwnerEarnings_rowsBuilder
    implements
        Builder<GgetOwnerEarningsData_getOwnerEarnings_rows,
            GgetOwnerEarningsData_getOwnerEarnings_rowsBuilder> {
  _$GgetOwnerEarningsData_getOwnerEarnings_rows? _$v;

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

  double? _grossAmount;
  double? get grossAmount => _$this._grossAmount;
  set grossAmount(double? grossAmount) => _$this._grossAmount = grossAmount;

  double? _netRevenue;
  double? get netRevenue => _$this._netRevenue;
  set netRevenue(double? netRevenue) => _$this._netRevenue = netRevenue;

  double? _commission;
  double? get commission => _$this._commission;
  set commission(double? commission) => _$this._commission = commission;

  double? _promoAdjustment;
  double? get promoAdjustment => _$this._promoAdjustment;
  set promoAdjustment(double? promoAdjustment) =>
      _$this._promoAdjustment = promoAdjustment;

  GgetOwnerEarningsData_getOwnerEarnings_rows_componentsBuilder? _components;
  GgetOwnerEarningsData_getOwnerEarnings_rows_componentsBuilder
      get components => _$this._components ??=
          new GgetOwnerEarningsData_getOwnerEarnings_rows_componentsBuilder();
  set components(
          GgetOwnerEarningsData_getOwnerEarnings_rows_componentsBuilder?
              components) =>
      _$this._components = components;

  GgetOwnerEarningsData_getOwnerEarnings_rows_paymentBuilder? _payment;
  GgetOwnerEarningsData_getOwnerEarnings_rows_paymentBuilder get payment =>
      _$this._payment ??=
          new GgetOwnerEarningsData_getOwnerEarnings_rows_paymentBuilder();
  set payment(
          GgetOwnerEarningsData_getOwnerEarnings_rows_paymentBuilder?
              payment) =>
      _$this._payment = payment;

  GgetOwnerEarningsData_getOwnerEarnings_rowsBuilder() {
    GgetOwnerEarningsData_getOwnerEarnings_rows._initializeBuilder(this);
  }

  GgetOwnerEarningsData_getOwnerEarnings_rowsBuilder get _$this {
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
      _grossAmount = $v.grossAmount;
      _netRevenue = $v.netRevenue;
      _commission = $v.commission;
      _promoAdjustment = $v.promoAdjustment;
      _components = $v.components?.toBuilder();
      _payment = $v.payment?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GgetOwnerEarningsData_getOwnerEarnings_rows other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GgetOwnerEarningsData_getOwnerEarnings_rows;
  }

  @override
  void update(
      void Function(GgetOwnerEarningsData_getOwnerEarnings_rowsBuilder)?
          updates) {
    if (updates != null) updates(this);
  }

  @override
  GgetOwnerEarningsData_getOwnerEarnings_rows build() => _build();

  _$GgetOwnerEarningsData_getOwnerEarnings_rows _build() {
    _$GgetOwnerEarningsData_getOwnerEarnings_rows _$result;
    try {
      _$result = _$v ??
          new _$GgetOwnerEarningsData_getOwnerEarnings_rows._(
              G__typename: BuiltValueNullFieldError.checkNotNull(
                  G__typename,
                  r'GgetOwnerEarningsData_getOwnerEarnings_rows',
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
              grossAmount: grossAmount,
              netRevenue: netRevenue,
              commission: commission,
              promoAdjustment: promoAdjustment,
              components: _components?.build(),
              payment: _payment?.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'components';
        _components?.build();
        _$failedField = 'payment';
        _payment?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'GgetOwnerEarningsData_getOwnerEarnings_rows',
            _$failedField,
            e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

class _$GgetOwnerEarningsData_getOwnerEarnings_rows_components
    extends GgetOwnerEarningsData_getOwnerEarnings_rows_components {
  @override
  final String G__typename;
  @override
  final double? rental;
  @override
  final double? options;
  @override
  final double? delivery;
  @override
  final double? other;

  factory _$GgetOwnerEarningsData_getOwnerEarnings_rows_components(
          [void Function(
                  GgetOwnerEarningsData_getOwnerEarnings_rows_componentsBuilder)?
              updates]) =>
      (new GgetOwnerEarningsData_getOwnerEarnings_rows_componentsBuilder()
            ..update(updates))
          ._build();

  _$GgetOwnerEarningsData_getOwnerEarnings_rows_components._(
      {required this.G__typename,
      this.rental,
      this.options,
      this.delivery,
      this.other})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        G__typename,
        r'GgetOwnerEarningsData_getOwnerEarnings_rows_components',
        'G__typename');
  }

  @override
  GgetOwnerEarningsData_getOwnerEarnings_rows_components rebuild(
          void Function(
                  GgetOwnerEarningsData_getOwnerEarnings_rows_componentsBuilder)
              updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GgetOwnerEarningsData_getOwnerEarnings_rows_componentsBuilder toBuilder() =>
      new GgetOwnerEarningsData_getOwnerEarnings_rows_componentsBuilder()
        ..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GgetOwnerEarningsData_getOwnerEarnings_rows_components &&
        G__typename == other.G__typename &&
        rental == other.rental &&
        options == other.options &&
        delivery == other.delivery &&
        this.other == other.other;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, G__typename.hashCode);
    _$hash = $jc(_$hash, rental.hashCode);
    _$hash = $jc(_$hash, options.hashCode);
    _$hash = $jc(_$hash, delivery.hashCode);
    _$hash = $jc(_$hash, other.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(
            r'GgetOwnerEarningsData_getOwnerEarnings_rows_components')
          ..add('G__typename', G__typename)
          ..add('rental', rental)
          ..add('options', options)
          ..add('delivery', delivery)
          ..add('other', other))
        .toString();
  }
}

class GgetOwnerEarningsData_getOwnerEarnings_rows_componentsBuilder
    implements
        Builder<GgetOwnerEarningsData_getOwnerEarnings_rows_components,
            GgetOwnerEarningsData_getOwnerEarnings_rows_componentsBuilder> {
  _$GgetOwnerEarningsData_getOwnerEarnings_rows_components? _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  double? _rental;
  double? get rental => _$this._rental;
  set rental(double? rental) => _$this._rental = rental;

  double? _options;
  double? get options => _$this._options;
  set options(double? options) => _$this._options = options;

  double? _delivery;
  double? get delivery => _$this._delivery;
  set delivery(double? delivery) => _$this._delivery = delivery;

  double? _other;
  double? get other => _$this._other;
  set other(double? other) => _$this._other = other;

  GgetOwnerEarningsData_getOwnerEarnings_rows_componentsBuilder() {
    GgetOwnerEarningsData_getOwnerEarnings_rows_components._initializeBuilder(
        this);
  }

  GgetOwnerEarningsData_getOwnerEarnings_rows_componentsBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _G__typename = $v.G__typename;
      _rental = $v.rental;
      _options = $v.options;
      _delivery = $v.delivery;
      _other = $v.other;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GgetOwnerEarningsData_getOwnerEarnings_rows_components other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GgetOwnerEarningsData_getOwnerEarnings_rows_components;
  }

  @override
  void update(
      void Function(
              GgetOwnerEarningsData_getOwnerEarnings_rows_componentsBuilder)?
          updates) {
    if (updates != null) updates(this);
  }

  @override
  GgetOwnerEarningsData_getOwnerEarnings_rows_components build() => _build();

  _$GgetOwnerEarningsData_getOwnerEarnings_rows_components _build() {
    final _$result = _$v ??
        new _$GgetOwnerEarningsData_getOwnerEarnings_rows_components._(
            G__typename: BuiltValueNullFieldError.checkNotNull(
                G__typename,
                r'GgetOwnerEarningsData_getOwnerEarnings_rows_components',
                'G__typename'),
            rental: rental,
            options: options,
            delivery: delivery,
            other: other);
    replace(_$result);
    return _$result;
  }
}

class _$GgetOwnerEarningsData_getOwnerEarnings_rows_payment
    extends GgetOwnerEarningsData_getOwnerEarnings_rows_payment {
  @override
  final String G__typename;
  @override
  final String? method;
  @override
  final String? reference;
  @override
  final String? providerStatus;
  @override
  final double? paidAmount;

  factory _$GgetOwnerEarningsData_getOwnerEarnings_rows_payment(
          [void Function(
                  GgetOwnerEarningsData_getOwnerEarnings_rows_paymentBuilder)?
              updates]) =>
      (new GgetOwnerEarningsData_getOwnerEarnings_rows_paymentBuilder()
            ..update(updates))
          ._build();

  _$GgetOwnerEarningsData_getOwnerEarnings_rows_payment._(
      {required this.G__typename,
      this.method,
      this.reference,
      this.providerStatus,
      this.paidAmount})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(G__typename,
        r'GgetOwnerEarningsData_getOwnerEarnings_rows_payment', 'G__typename');
  }

  @override
  GgetOwnerEarningsData_getOwnerEarnings_rows_payment rebuild(
          void Function(
                  GgetOwnerEarningsData_getOwnerEarnings_rows_paymentBuilder)
              updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GgetOwnerEarningsData_getOwnerEarnings_rows_paymentBuilder toBuilder() =>
      new GgetOwnerEarningsData_getOwnerEarnings_rows_paymentBuilder()
        ..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GgetOwnerEarningsData_getOwnerEarnings_rows_payment &&
        G__typename == other.G__typename &&
        method == other.method &&
        reference == other.reference &&
        providerStatus == other.providerStatus &&
        paidAmount == other.paidAmount;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, G__typename.hashCode);
    _$hash = $jc(_$hash, method.hashCode);
    _$hash = $jc(_$hash, reference.hashCode);
    _$hash = $jc(_$hash, providerStatus.hashCode);
    _$hash = $jc(_$hash, paidAmount.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(
            r'GgetOwnerEarningsData_getOwnerEarnings_rows_payment')
          ..add('G__typename', G__typename)
          ..add('method', method)
          ..add('reference', reference)
          ..add('providerStatus', providerStatus)
          ..add('paidAmount', paidAmount))
        .toString();
  }
}

class GgetOwnerEarningsData_getOwnerEarnings_rows_paymentBuilder
    implements
        Builder<GgetOwnerEarningsData_getOwnerEarnings_rows_payment,
            GgetOwnerEarningsData_getOwnerEarnings_rows_paymentBuilder> {
  _$GgetOwnerEarningsData_getOwnerEarnings_rows_payment? _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  String? _method;
  String? get method => _$this._method;
  set method(String? method) => _$this._method = method;

  String? _reference;
  String? get reference => _$this._reference;
  set reference(String? reference) => _$this._reference = reference;

  String? _providerStatus;
  String? get providerStatus => _$this._providerStatus;
  set providerStatus(String? providerStatus) =>
      _$this._providerStatus = providerStatus;

  double? _paidAmount;
  double? get paidAmount => _$this._paidAmount;
  set paidAmount(double? paidAmount) => _$this._paidAmount = paidAmount;

  GgetOwnerEarningsData_getOwnerEarnings_rows_paymentBuilder() {
    GgetOwnerEarningsData_getOwnerEarnings_rows_payment._initializeBuilder(
        this);
  }

  GgetOwnerEarningsData_getOwnerEarnings_rows_paymentBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _G__typename = $v.G__typename;
      _method = $v.method;
      _reference = $v.reference;
      _providerStatus = $v.providerStatus;
      _paidAmount = $v.paidAmount;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GgetOwnerEarningsData_getOwnerEarnings_rows_payment other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GgetOwnerEarningsData_getOwnerEarnings_rows_payment;
  }

  @override
  void update(
      void Function(GgetOwnerEarningsData_getOwnerEarnings_rows_paymentBuilder)?
          updates) {
    if (updates != null) updates(this);
  }

  @override
  GgetOwnerEarningsData_getOwnerEarnings_rows_payment build() => _build();

  _$GgetOwnerEarningsData_getOwnerEarnings_rows_payment _build() {
    final _$result = _$v ??
        new _$GgetOwnerEarningsData_getOwnerEarnings_rows_payment._(
            G__typename: BuiltValueNullFieldError.checkNotNull(
                G__typename,
                r'GgetOwnerEarningsData_getOwnerEarnings_rows_payment',
                'G__typename'),
            method: method,
            reference: reference,
            providerStatus: providerStatus,
            paidAmount: paidAmount);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
