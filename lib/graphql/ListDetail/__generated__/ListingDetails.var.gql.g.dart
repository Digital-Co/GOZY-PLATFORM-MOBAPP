// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'ListingDetails.var.gql.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<GgetSimilarListingVars> _$ggetSimilarListingVarsSerializer =
    new _$GgetSimilarListingVarsSerializer();
Serializer<GviewListingDetailsVars> _$gviewListingDetailsVarsSerializer =
    new _$GviewListingDetailsVarsSerializer();
Serializer<GgetReviewsListVars> _$ggetReviewsListVarsSerializer =
    new _$GgetReviewsListVarsSerializer();
Serializer<GdateAvailabilityVars> _$gdateAvailabilityVarsSerializer =
    new _$GdateAvailabilityVarsSerializer();
Serializer<GContactHostVars> _$gContactHostVarsSerializer =
    new _$GContactHostVarsSerializer();
Serializer<GCreateReportUserVars> _$gCreateReportUserVarsSerializer =
    new _$GCreateReportUserVarsSerializer();
Serializer<GgetAllReportTypeVars> _$ggetAllReportTypeVarsSerializer =
    new _$GgetAllReportTypeVarsSerializer();

class _$GgetSimilarListingVarsSerializer
    implements StructuredSerializer<GgetSimilarListingVars> {
  @override
  final Iterable<Type> types = const [
    GgetSimilarListingVars,
    _$GgetSimilarListingVars
  ];
  @override
  final String wireName = 'GgetSimilarListingVars';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, GgetSimilarListingVars object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[];
    Object? value;
    value = object.lat;
    if (value != null) {
      result
        ..add('lat')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(double)));
    }
    value = object.lng;
    if (value != null) {
      result
        ..add('lng')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(double)));
    }
    value = object.listId;
    if (value != null) {
      result
        ..add('listId')
        ..add(serializers.serialize(value, specifiedType: const FullType(int)));
    }
    return result;
  }

  @override
  GgetSimilarListingVars deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GgetSimilarListingVarsBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'lat':
          result.lat = serializers.deserialize(value,
              specifiedType: const FullType(double)) as double?;
          break;
        case 'lng':
          result.lng = serializers.deserialize(value,
              specifiedType: const FullType(double)) as double?;
          break;
        case 'listId':
          result.listId = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int?;
          break;
      }
    }

    return result.build();
  }
}

class _$GviewListingDetailsVarsSerializer
    implements StructuredSerializer<GviewListingDetailsVars> {
  @override
  final Iterable<Type> types = const [
    GviewListingDetailsVars,
    _$GviewListingDetailsVars
  ];
  @override
  final String wireName = 'GviewListingDetailsVars';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, GviewListingDetailsVars object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      'listId',
      serializers.serialize(object.listId, specifiedType: const FullType(int)),
    ];
    Object? value;
    value = object.preview;
    if (value != null) {
      result
        ..add('preview')
        ..add(
            serializers.serialize(value, specifiedType: const FullType(bool)));
    }
    return result;
  }

  @override
  GviewListingDetailsVars deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GviewListingDetailsVarsBuilder();

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
        case 'preview':
          result.preview = serializers.deserialize(value,
              specifiedType: const FullType(bool)) as bool?;
          break;
      }
    }

    return result.build();
  }
}

class _$GgetReviewsListVarsSerializer
    implements StructuredSerializer<GgetReviewsListVars> {
  @override
  final Iterable<Type> types = const [
    GgetReviewsListVars,
    _$GgetReviewsListVars
  ];
  @override
  final String wireName = 'GgetReviewsListVars';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, GgetReviewsListVars object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      'hostId',
      serializers.serialize(object.hostId,
          specifiedType: const FullType(String)),
    ];
    Object? value;
    value = object.listId;
    if (value != null) {
      result
        ..add('listId')
        ..add(serializers.serialize(value, specifiedType: const FullType(int)));
    }
    value = object.currentPage;
    if (value != null) {
      result
        ..add('currentPage')
        ..add(serializers.serialize(value, specifiedType: const FullType(int)));
    }
    return result;
  }

  @override
  GgetReviewsListVars deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GgetReviewsListVarsBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'listId':
          result.listId = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int?;
          break;
        case 'currentPage':
          result.currentPage = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int?;
          break;
        case 'hostId':
          result.hostId = serializers.deserialize(value,
              specifiedType: const FullType(String))! as String;
          break;
      }
    }

    return result.build();
  }
}

class _$GdateAvailabilityVarsSerializer
    implements StructuredSerializer<GdateAvailabilityVars> {
  @override
  final Iterable<Type> types = const [
    GdateAvailabilityVars,
    _$GdateAvailabilityVars
  ];
  @override
  final String wireName = 'GdateAvailabilityVars';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, GdateAvailabilityVars object,
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
    ];

    return result;
  }

  @override
  GdateAvailabilityVars deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GdateAvailabilityVarsBuilder();

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
      }
    }

    return result.build();
  }
}

class _$GContactHostVarsSerializer
    implements StructuredSerializer<GContactHostVars> {
  @override
  final Iterable<Type> types = const [GContactHostVars, _$GContactHostVars];
  @override
  final String wireName = 'GContactHostVars';

  @override
  Iterable<Object?> serialize(Serializers serializers, GContactHostVars object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      'listId',
      serializers.serialize(object.listId, specifiedType: const FullType(int)),
      'hostId',
      serializers.serialize(object.hostId,
          specifiedType: const FullType(String)),
      'content',
      serializers.serialize(object.content,
          specifiedType: const FullType(String)),
      'userId',
      serializers.serialize(object.userId,
          specifiedType: const FullType(String)),
      'startDate',
      serializers.serialize(object.startDate,
          specifiedType: const FullType(String)),
      'endDate',
      serializers.serialize(object.endDate,
          specifiedType: const FullType(String)),
    ];
    Object? value;
    value = object.type;
    if (value != null) {
      result
        ..add('type')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.personCapacity;
    if (value != null) {
      result
        ..add('personCapacity')
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
    return result;
  }

  @override
  GContactHostVars deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GContactHostVarsBuilder();

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
        case 'hostId':
          result.hostId = serializers.deserialize(value,
              specifiedType: const FullType(String))! as String;
          break;
        case 'content':
          result.content = serializers.deserialize(value,
              specifiedType: const FullType(String))! as String;
          break;
        case 'userId':
          result.userId = serializers.deserialize(value,
              specifiedType: const FullType(String))! as String;
          break;
        case 'type':
          result.type = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'startDate':
          result.startDate = serializers.deserialize(value,
              specifiedType: const FullType(String))! as String;
          break;
        case 'endDate':
          result.endDate = serializers.deserialize(value,
              specifiedType: const FullType(String))! as String;
          break;
        case 'personCapacity':
          result.personCapacity = serializers.deserialize(value,
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
      }
    }

    return result.build();
  }
}

class _$GCreateReportUserVarsSerializer
    implements StructuredSerializer<GCreateReportUserVars> {
  @override
  final Iterable<Type> types = const [
    GCreateReportUserVars,
    _$GCreateReportUserVars
  ];
  @override
  final String wireName = 'GCreateReportUserVars';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, GCreateReportUserVars object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[];
    Object? value;
    value = object.reporterId;
    if (value != null) {
      result
        ..add('reporterId')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.userId;
    if (value != null) {
      result
        ..add('userId')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.reportType;
    if (value != null) {
      result
        ..add('reportType')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.profileId;
    if (value != null) {
      result
        ..add('profileId')
        ..add(serializers.serialize(value, specifiedType: const FullType(int)));
    }
    value = object.reporterName;
    if (value != null) {
      result
        ..add('reporterName')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    return result;
  }

  @override
  GCreateReportUserVars deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GCreateReportUserVarsBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'reporterId':
          result.reporterId = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'userId':
          result.userId = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'reportType':
          result.reportType = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'profileId':
          result.profileId = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int?;
          break;
        case 'reporterName':
          result.reporterName = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
      }
    }

    return result.build();
  }
}

class _$GgetAllReportTypeVarsSerializer
    implements StructuredSerializer<GgetAllReportTypeVars> {
  @override
  final Iterable<Type> types = const [
    GgetAllReportTypeVars,
    _$GgetAllReportTypeVars
  ];
  @override
  final String wireName = 'GgetAllReportTypeVars';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, GgetAllReportTypeVars object,
      {FullType specifiedType = FullType.unspecified}) {
    return <Object?>[];
  }

  @override
  GgetAllReportTypeVars deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    return new GgetAllReportTypeVarsBuilder().build();
  }
}

class _$GgetSimilarListingVars extends GgetSimilarListingVars {
  @override
  final double? lat;
  @override
  final double? lng;
  @override
  final int? listId;

  factory _$GgetSimilarListingVars(
          [void Function(GgetSimilarListingVarsBuilder)? updates]) =>
      (new GgetSimilarListingVarsBuilder()..update(updates))._build();

  _$GgetSimilarListingVars._({this.lat, this.lng, this.listId}) : super._();

  @override
  GgetSimilarListingVars rebuild(
          void Function(GgetSimilarListingVarsBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GgetSimilarListingVarsBuilder toBuilder() =>
      new GgetSimilarListingVarsBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GgetSimilarListingVars &&
        lat == other.lat &&
        lng == other.lng &&
        listId == other.listId;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, lat.hashCode);
    _$hash = $jc(_$hash, lng.hashCode);
    _$hash = $jc(_$hash, listId.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'GgetSimilarListingVars')
          ..add('lat', lat)
          ..add('lng', lng)
          ..add('listId', listId))
        .toString();
  }
}

class GgetSimilarListingVarsBuilder
    implements Builder<GgetSimilarListingVars, GgetSimilarListingVarsBuilder> {
  _$GgetSimilarListingVars? _$v;

  double? _lat;
  double? get lat => _$this._lat;
  set lat(double? lat) => _$this._lat = lat;

  double? _lng;
  double? get lng => _$this._lng;
  set lng(double? lng) => _$this._lng = lng;

  int? _listId;
  int? get listId => _$this._listId;
  set listId(int? listId) => _$this._listId = listId;

  GgetSimilarListingVarsBuilder();

  GgetSimilarListingVarsBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _lat = $v.lat;
      _lng = $v.lng;
      _listId = $v.listId;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GgetSimilarListingVars other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GgetSimilarListingVars;
  }

  @override
  void update(void Function(GgetSimilarListingVarsBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GgetSimilarListingVars build() => _build();

  _$GgetSimilarListingVars _build() {
    final _$result = _$v ??
        new _$GgetSimilarListingVars._(lat: lat, lng: lng, listId: listId);
    replace(_$result);
    return _$result;
  }
}

class _$GviewListingDetailsVars extends GviewListingDetailsVars {
  @override
  final int listId;
  @override
  final bool? preview;

  factory _$GviewListingDetailsVars(
          [void Function(GviewListingDetailsVarsBuilder)? updates]) =>
      (new GviewListingDetailsVarsBuilder()..update(updates))._build();

  _$GviewListingDetailsVars._({required this.listId, this.preview})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        listId, r'GviewListingDetailsVars', 'listId');
  }

  @override
  GviewListingDetailsVars rebuild(
          void Function(GviewListingDetailsVarsBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GviewListingDetailsVarsBuilder toBuilder() =>
      new GviewListingDetailsVarsBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GviewListingDetailsVars &&
        listId == other.listId &&
        preview == other.preview;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, listId.hashCode);
    _$hash = $jc(_$hash, preview.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'GviewListingDetailsVars')
          ..add('listId', listId)
          ..add('preview', preview))
        .toString();
  }
}

class GviewListingDetailsVarsBuilder
    implements
        Builder<GviewListingDetailsVars, GviewListingDetailsVarsBuilder> {
  _$GviewListingDetailsVars? _$v;

  int? _listId;
  int? get listId => _$this._listId;
  set listId(int? listId) => _$this._listId = listId;

  bool? _preview;
  bool? get preview => _$this._preview;
  set preview(bool? preview) => _$this._preview = preview;

  GviewListingDetailsVarsBuilder();

  GviewListingDetailsVarsBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _listId = $v.listId;
      _preview = $v.preview;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GviewListingDetailsVars other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GviewListingDetailsVars;
  }

  @override
  void update(void Function(GviewListingDetailsVarsBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GviewListingDetailsVars build() => _build();

  _$GviewListingDetailsVars _build() {
    final _$result = _$v ??
        new _$GviewListingDetailsVars._(
            listId: BuiltValueNullFieldError.checkNotNull(
                listId, r'GviewListingDetailsVars', 'listId'),
            preview: preview);
    replace(_$result);
    return _$result;
  }
}

class _$GgetReviewsListVars extends GgetReviewsListVars {
  @override
  final int? listId;
  @override
  final int? currentPage;
  @override
  final String hostId;

  factory _$GgetReviewsListVars(
          [void Function(GgetReviewsListVarsBuilder)? updates]) =>
      (new GgetReviewsListVarsBuilder()..update(updates))._build();

  _$GgetReviewsListVars._({this.listId, this.currentPage, required this.hostId})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        hostId, r'GgetReviewsListVars', 'hostId');
  }

  @override
  GgetReviewsListVars rebuild(
          void Function(GgetReviewsListVarsBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GgetReviewsListVarsBuilder toBuilder() =>
      new GgetReviewsListVarsBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GgetReviewsListVars &&
        listId == other.listId &&
        currentPage == other.currentPage &&
        hostId == other.hostId;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, listId.hashCode);
    _$hash = $jc(_$hash, currentPage.hashCode);
    _$hash = $jc(_$hash, hostId.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'GgetReviewsListVars')
          ..add('listId', listId)
          ..add('currentPage', currentPage)
          ..add('hostId', hostId))
        .toString();
  }
}

class GgetReviewsListVarsBuilder
    implements Builder<GgetReviewsListVars, GgetReviewsListVarsBuilder> {
  _$GgetReviewsListVars? _$v;

  int? _listId;
  int? get listId => _$this._listId;
  set listId(int? listId) => _$this._listId = listId;

  int? _currentPage;
  int? get currentPage => _$this._currentPage;
  set currentPage(int? currentPage) => _$this._currentPage = currentPage;

  String? _hostId;
  String? get hostId => _$this._hostId;
  set hostId(String? hostId) => _$this._hostId = hostId;

  GgetReviewsListVarsBuilder();

  GgetReviewsListVarsBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _listId = $v.listId;
      _currentPage = $v.currentPage;
      _hostId = $v.hostId;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GgetReviewsListVars other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GgetReviewsListVars;
  }

  @override
  void update(void Function(GgetReviewsListVarsBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GgetReviewsListVars build() => _build();

  _$GgetReviewsListVars _build() {
    final _$result = _$v ??
        new _$GgetReviewsListVars._(
            listId: listId,
            currentPage: currentPage,
            hostId: BuiltValueNullFieldError.checkNotNull(
                hostId, r'GgetReviewsListVars', 'hostId'));
    replace(_$result);
    return _$result;
  }
}

class _$GdateAvailabilityVars extends GdateAvailabilityVars {
  @override
  final int listId;
  @override
  final String startDate;
  @override
  final String endDate;

  factory _$GdateAvailabilityVars(
          [void Function(GdateAvailabilityVarsBuilder)? updates]) =>
      (new GdateAvailabilityVarsBuilder()..update(updates))._build();

  _$GdateAvailabilityVars._(
      {required this.listId, required this.startDate, required this.endDate})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        listId, r'GdateAvailabilityVars', 'listId');
    BuiltValueNullFieldError.checkNotNull(
        startDate, r'GdateAvailabilityVars', 'startDate');
    BuiltValueNullFieldError.checkNotNull(
        endDate, r'GdateAvailabilityVars', 'endDate');
  }

  @override
  GdateAvailabilityVars rebuild(
          void Function(GdateAvailabilityVarsBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GdateAvailabilityVarsBuilder toBuilder() =>
      new GdateAvailabilityVarsBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GdateAvailabilityVars &&
        listId == other.listId &&
        startDate == other.startDate &&
        endDate == other.endDate;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, listId.hashCode);
    _$hash = $jc(_$hash, startDate.hashCode);
    _$hash = $jc(_$hash, endDate.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'GdateAvailabilityVars')
          ..add('listId', listId)
          ..add('startDate', startDate)
          ..add('endDate', endDate))
        .toString();
  }
}

class GdateAvailabilityVarsBuilder
    implements Builder<GdateAvailabilityVars, GdateAvailabilityVarsBuilder> {
  _$GdateAvailabilityVars? _$v;

  int? _listId;
  int? get listId => _$this._listId;
  set listId(int? listId) => _$this._listId = listId;

  String? _startDate;
  String? get startDate => _$this._startDate;
  set startDate(String? startDate) => _$this._startDate = startDate;

  String? _endDate;
  String? get endDate => _$this._endDate;
  set endDate(String? endDate) => _$this._endDate = endDate;

  GdateAvailabilityVarsBuilder();

  GdateAvailabilityVarsBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _listId = $v.listId;
      _startDate = $v.startDate;
      _endDate = $v.endDate;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GdateAvailabilityVars other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GdateAvailabilityVars;
  }

  @override
  void update(void Function(GdateAvailabilityVarsBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GdateAvailabilityVars build() => _build();

  _$GdateAvailabilityVars _build() {
    final _$result = _$v ??
        new _$GdateAvailabilityVars._(
            listId: BuiltValueNullFieldError.checkNotNull(
                listId, r'GdateAvailabilityVars', 'listId'),
            startDate: BuiltValueNullFieldError.checkNotNull(
                startDate, r'GdateAvailabilityVars', 'startDate'),
            endDate: BuiltValueNullFieldError.checkNotNull(
                endDate, r'GdateAvailabilityVars', 'endDate'));
    replace(_$result);
    return _$result;
  }
}

class _$GContactHostVars extends GContactHostVars {
  @override
  final int listId;
  @override
  final String hostId;
  @override
  final String content;
  @override
  final String userId;
  @override
  final String? type;
  @override
  final String startDate;
  @override
  final String endDate;
  @override
  final int? personCapacity;
  @override
  final double? startTime;
  @override
  final double? endTime;

  factory _$GContactHostVars(
          [void Function(GContactHostVarsBuilder)? updates]) =>
      (new GContactHostVarsBuilder()..update(updates))._build();

  _$GContactHostVars._(
      {required this.listId,
      required this.hostId,
      required this.content,
      required this.userId,
      this.type,
      required this.startDate,
      required this.endDate,
      this.personCapacity,
      this.startTime,
      this.endTime})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        listId, r'GContactHostVars', 'listId');
    BuiltValueNullFieldError.checkNotNull(
        hostId, r'GContactHostVars', 'hostId');
    BuiltValueNullFieldError.checkNotNull(
        content, r'GContactHostVars', 'content');
    BuiltValueNullFieldError.checkNotNull(
        userId, r'GContactHostVars', 'userId');
    BuiltValueNullFieldError.checkNotNull(
        startDate, r'GContactHostVars', 'startDate');
    BuiltValueNullFieldError.checkNotNull(
        endDate, r'GContactHostVars', 'endDate');
  }

  @override
  GContactHostVars rebuild(void Function(GContactHostVarsBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GContactHostVarsBuilder toBuilder() =>
      new GContactHostVarsBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GContactHostVars &&
        listId == other.listId &&
        hostId == other.hostId &&
        content == other.content &&
        userId == other.userId &&
        type == other.type &&
        startDate == other.startDate &&
        endDate == other.endDate &&
        personCapacity == other.personCapacity &&
        startTime == other.startTime &&
        endTime == other.endTime;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, listId.hashCode);
    _$hash = $jc(_$hash, hostId.hashCode);
    _$hash = $jc(_$hash, content.hashCode);
    _$hash = $jc(_$hash, userId.hashCode);
    _$hash = $jc(_$hash, type.hashCode);
    _$hash = $jc(_$hash, startDate.hashCode);
    _$hash = $jc(_$hash, endDate.hashCode);
    _$hash = $jc(_$hash, personCapacity.hashCode);
    _$hash = $jc(_$hash, startTime.hashCode);
    _$hash = $jc(_$hash, endTime.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'GContactHostVars')
          ..add('listId', listId)
          ..add('hostId', hostId)
          ..add('content', content)
          ..add('userId', userId)
          ..add('type', type)
          ..add('startDate', startDate)
          ..add('endDate', endDate)
          ..add('personCapacity', personCapacity)
          ..add('startTime', startTime)
          ..add('endTime', endTime))
        .toString();
  }
}

class GContactHostVarsBuilder
    implements Builder<GContactHostVars, GContactHostVarsBuilder> {
  _$GContactHostVars? _$v;

  int? _listId;
  int? get listId => _$this._listId;
  set listId(int? listId) => _$this._listId = listId;

  String? _hostId;
  String? get hostId => _$this._hostId;
  set hostId(String? hostId) => _$this._hostId = hostId;

  String? _content;
  String? get content => _$this._content;
  set content(String? content) => _$this._content = content;

  String? _userId;
  String? get userId => _$this._userId;
  set userId(String? userId) => _$this._userId = userId;

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

  double? _startTime;
  double? get startTime => _$this._startTime;
  set startTime(double? startTime) => _$this._startTime = startTime;

  double? _endTime;
  double? get endTime => _$this._endTime;
  set endTime(double? endTime) => _$this._endTime = endTime;

  GContactHostVarsBuilder();

  GContactHostVarsBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _listId = $v.listId;
      _hostId = $v.hostId;
      _content = $v.content;
      _userId = $v.userId;
      _type = $v.type;
      _startDate = $v.startDate;
      _endDate = $v.endDate;
      _personCapacity = $v.personCapacity;
      _startTime = $v.startTime;
      _endTime = $v.endTime;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GContactHostVars other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GContactHostVars;
  }

  @override
  void update(void Function(GContactHostVarsBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GContactHostVars build() => _build();

  _$GContactHostVars _build() {
    final _$result = _$v ??
        new _$GContactHostVars._(
            listId: BuiltValueNullFieldError.checkNotNull(
                listId, r'GContactHostVars', 'listId'),
            hostId: BuiltValueNullFieldError.checkNotNull(
                hostId, r'GContactHostVars', 'hostId'),
            content: BuiltValueNullFieldError.checkNotNull(
                content, r'GContactHostVars', 'content'),
            userId: BuiltValueNullFieldError.checkNotNull(
                userId, r'GContactHostVars', 'userId'),
            type: type,
            startDate: BuiltValueNullFieldError.checkNotNull(
                startDate, r'GContactHostVars', 'startDate'),
            endDate: BuiltValueNullFieldError.checkNotNull(
                endDate, r'GContactHostVars', 'endDate'),
            personCapacity: personCapacity,
            startTime: startTime,
            endTime: endTime);
    replace(_$result);
    return _$result;
  }
}

class _$GCreateReportUserVars extends GCreateReportUserVars {
  @override
  final String? reporterId;
  @override
  final String? userId;
  @override
  final String? reportType;
  @override
  final int? profileId;
  @override
  final String? reporterName;

  factory _$GCreateReportUserVars(
          [void Function(GCreateReportUserVarsBuilder)? updates]) =>
      (new GCreateReportUserVarsBuilder()..update(updates))._build();

  _$GCreateReportUserVars._(
      {this.reporterId,
      this.userId,
      this.reportType,
      this.profileId,
      this.reporterName})
      : super._();

  @override
  GCreateReportUserVars rebuild(
          void Function(GCreateReportUserVarsBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GCreateReportUserVarsBuilder toBuilder() =>
      new GCreateReportUserVarsBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GCreateReportUserVars &&
        reporterId == other.reporterId &&
        userId == other.userId &&
        reportType == other.reportType &&
        profileId == other.profileId &&
        reporterName == other.reporterName;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, reporterId.hashCode);
    _$hash = $jc(_$hash, userId.hashCode);
    _$hash = $jc(_$hash, reportType.hashCode);
    _$hash = $jc(_$hash, profileId.hashCode);
    _$hash = $jc(_$hash, reporterName.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'GCreateReportUserVars')
          ..add('reporterId', reporterId)
          ..add('userId', userId)
          ..add('reportType', reportType)
          ..add('profileId', profileId)
          ..add('reporterName', reporterName))
        .toString();
  }
}

class GCreateReportUserVarsBuilder
    implements Builder<GCreateReportUserVars, GCreateReportUserVarsBuilder> {
  _$GCreateReportUserVars? _$v;

  String? _reporterId;
  String? get reporterId => _$this._reporterId;
  set reporterId(String? reporterId) => _$this._reporterId = reporterId;

  String? _userId;
  String? get userId => _$this._userId;
  set userId(String? userId) => _$this._userId = userId;

  String? _reportType;
  String? get reportType => _$this._reportType;
  set reportType(String? reportType) => _$this._reportType = reportType;

  int? _profileId;
  int? get profileId => _$this._profileId;
  set profileId(int? profileId) => _$this._profileId = profileId;

  String? _reporterName;
  String? get reporterName => _$this._reporterName;
  set reporterName(String? reporterName) => _$this._reporterName = reporterName;

  GCreateReportUserVarsBuilder();

  GCreateReportUserVarsBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _reporterId = $v.reporterId;
      _userId = $v.userId;
      _reportType = $v.reportType;
      _profileId = $v.profileId;
      _reporterName = $v.reporterName;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GCreateReportUserVars other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GCreateReportUserVars;
  }

  @override
  void update(void Function(GCreateReportUserVarsBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GCreateReportUserVars build() => _build();

  _$GCreateReportUserVars _build() {
    final _$result = _$v ??
        new _$GCreateReportUserVars._(
            reporterId: reporterId,
            userId: userId,
            reportType: reportType,
            profileId: profileId,
            reporterName: reporterName);
    replace(_$result);
    return _$result;
  }
}

class _$GgetAllReportTypeVars extends GgetAllReportTypeVars {
  factory _$GgetAllReportTypeVars(
          [void Function(GgetAllReportTypeVarsBuilder)? updates]) =>
      (new GgetAllReportTypeVarsBuilder()..update(updates))._build();

  _$GgetAllReportTypeVars._() : super._();

  @override
  GgetAllReportTypeVars rebuild(
          void Function(GgetAllReportTypeVarsBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GgetAllReportTypeVarsBuilder toBuilder() =>
      new GgetAllReportTypeVarsBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GgetAllReportTypeVars;
  }

  @override
  int get hashCode {
    return 271146426;
  }

  @override
  String toString() {
    return newBuiltValueToStringHelper(r'GgetAllReportTypeVars').toString();
  }
}

class GgetAllReportTypeVarsBuilder
    implements Builder<GgetAllReportTypeVars, GgetAllReportTypeVarsBuilder> {
  _$GgetAllReportTypeVars? _$v;

  GgetAllReportTypeVarsBuilder();

  @override
  void replace(GgetAllReportTypeVars other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GgetAllReportTypeVars;
  }

  @override
  void update(void Function(GgetAllReportTypeVarsBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GgetAllReportTypeVars build() => _build();

  _$GgetAllReportTypeVars _build() {
    final _$result = _$v ?? new _$GgetAllReportTypeVars._();
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
