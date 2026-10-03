// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'manageListings.var.gql.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<GManageListingsVars> _$gManageListingsVarsSerializer =
    new _$GManageListingsVarsSerializer();
Serializer<GlistBlockedDatesVars> _$glistBlockedDatesVarsSerializer =
    new _$GlistBlockedDatesVarsSerializer();
Serializer<GUpdateListBlockedDatesVars>
    _$gUpdateListBlockedDatesVarsSerializer =
    new _$GUpdateListBlockedDatesVarsSerializer();
Serializer<GRemoveListingVars> _$gRemoveListingVarsSerializer =
    new _$GRemoveListingVarsSerializer();
Serializer<GRemoveMultiPhotosVars> _$gRemoveMultiPhotosVarsSerializer =
    new _$GRemoveMultiPhotosVarsSerializer();
Serializer<GgetListingSpecialPriceVars>
    _$ggetListingSpecialPriceVarsSerializer =
    new _$GgetListingSpecialPriceVarsSerializer();
Serializer<GUpdateSpecialPriceVars> _$gUpdateSpecialPriceVarsSerializer =
    new _$GUpdateSpecialPriceVarsSerializer();

class _$GManageListingsVarsSerializer
    implements StructuredSerializer<GManageListingsVars> {
  @override
  final Iterable<Type> types = const [
    GManageListingsVars,
    _$GManageListingsVars
  ];
  @override
  final String wireName = 'GManageListingsVars';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, GManageListingsVars object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[];
    Object? value;
    value = object.currentPage;
    if (value != null) {
      result
        ..add('currentPage')
        ..add(serializers.serialize(value, specifiedType: const FullType(int)));
    }
    value = object.requestType;
    if (value != null) {
      result
        ..add('requestType')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    return result;
  }

  @override
  GManageListingsVars deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GManageListingsVarsBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'currentPage':
          result.currentPage = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int?;
          break;
        case 'requestType':
          result.requestType = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
      }
    }

    return result.build();
  }
}

class _$GlistBlockedDatesVarsSerializer
    implements StructuredSerializer<GlistBlockedDatesVars> {
  @override
  final Iterable<Type> types = const [
    GlistBlockedDatesVars,
    _$GlistBlockedDatesVars
  ];
  @override
  final String wireName = 'GlistBlockedDatesVars';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, GlistBlockedDatesVars object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      'listId',
      serializers.serialize(object.listId, specifiedType: const FullType(int)),
    ];

    return result;
  }

  @override
  GlistBlockedDatesVars deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GlistBlockedDatesVarsBuilder();

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
      }
    }

    return result.build();
  }
}

class _$GUpdateListBlockedDatesVarsSerializer
    implements StructuredSerializer<GUpdateListBlockedDatesVars> {
  @override
  final Iterable<Type> types = const [
    GUpdateListBlockedDatesVars,
    _$GUpdateListBlockedDatesVars
  ];
  @override
  final String wireName = 'GUpdateListBlockedDatesVars';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, GUpdateListBlockedDatesVars object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      'listId',
      serializers.serialize(object.listId, specifiedType: const FullType(int)),
    ];
    Object? value;
    value = object.blockedDates;
    if (value != null) {
      result
        ..add('blockedDates')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(
                BuiltList, const [const FullType.nullable(String)])));
    }
    return result;
  }

  @override
  GUpdateListBlockedDatesVars deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GUpdateListBlockedDatesVarsBuilder();

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
        case 'blockedDates':
          result.blockedDates.replace(serializers.deserialize(value,
                  specifiedType: const FullType(
                      BuiltList, const [const FullType.nullable(String)]))!
              as BuiltList<Object?>);
          break;
      }
    }

    return result.build();
  }
}

class _$GRemoveListingVarsSerializer
    implements StructuredSerializer<GRemoveListingVars> {
  @override
  final Iterable<Type> types = const [GRemoveListingVars, _$GRemoveListingVars];
  @override
  final String wireName = 'GRemoveListingVars';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, GRemoveListingVars object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      'listId',
      serializers.serialize(object.listId, specifiedType: const FullType(int)),
    ];

    return result;
  }

  @override
  GRemoveListingVars deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GRemoveListingVarsBuilder();

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
      }
    }

    return result.build();
  }
}

class _$GRemoveMultiPhotosVarsSerializer
    implements StructuredSerializer<GRemoveMultiPhotosVars> {
  @override
  final Iterable<Type> types = const [
    GRemoveMultiPhotosVars,
    _$GRemoveMultiPhotosVars
  ];
  @override
  final String wireName = 'GRemoveMultiPhotosVars';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, GRemoveMultiPhotosVars object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[];
    Object? value;
    value = object.photos;
    if (value != null) {
      result
        ..add('photos')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    return result;
  }

  @override
  GRemoveMultiPhotosVars deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GRemoveMultiPhotosVarsBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'photos':
          result.photos = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
      }
    }

    return result.build();
  }
}

class _$GgetListingSpecialPriceVarsSerializer
    implements StructuredSerializer<GgetListingSpecialPriceVars> {
  @override
  final Iterable<Type> types = const [
    GgetListingSpecialPriceVars,
    _$GgetListingSpecialPriceVars
  ];
  @override
  final String wireName = 'GgetListingSpecialPriceVars';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, GgetListingSpecialPriceVars object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      'listId',
      serializers.serialize(object.listId, specifiedType: const FullType(int)),
    ];

    return result;
  }

  @override
  GgetListingSpecialPriceVars deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GgetListingSpecialPriceVarsBuilder();

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
      }
    }

    return result.build();
  }
}

class _$GUpdateSpecialPriceVarsSerializer
    implements StructuredSerializer<GUpdateSpecialPriceVars> {
  @override
  final Iterable<Type> types = const [
    GUpdateSpecialPriceVars,
    _$GUpdateSpecialPriceVars
  ];
  @override
  final String wireName = 'GUpdateSpecialPriceVars';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, GUpdateSpecialPriceVars object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      'listId',
      serializers.serialize(object.listId, specifiedType: const FullType(int)),
    ];
    Object? value;
    value = object.blockedDates;
    if (value != null) {
      result
        ..add('blockedDates')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(
                BuiltList, const [const FullType.nullable(String)])));
    }
    value = object.calendarStatus;
    if (value != null) {
      result
        ..add('calendarStatus')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.isSpecialPrice;
    if (value != null) {
      result
        ..add('isSpecialPrice')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(double)));
    }
    return result;
  }

  @override
  GUpdateSpecialPriceVars deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GUpdateSpecialPriceVarsBuilder();

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
        case 'blockedDates':
          result.blockedDates.replace(serializers.deserialize(value,
                  specifiedType: const FullType(
                      BuiltList, const [const FullType.nullable(String)]))!
              as BuiltList<Object?>);
          break;
        case 'calendarStatus':
          result.calendarStatus = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'isSpecialPrice':
          result.isSpecialPrice = serializers.deserialize(value,
              specifiedType: const FullType(double)) as double?;
          break;
      }
    }

    return result.build();
  }
}

class _$GManageListingsVars extends GManageListingsVars {
  @override
  final int? currentPage;
  @override
  final String? requestType;

  factory _$GManageListingsVars(
          [void Function(GManageListingsVarsBuilder)? updates]) =>
      (new GManageListingsVarsBuilder()..update(updates))._build();

  _$GManageListingsVars._({this.currentPage, this.requestType}) : super._();

  @override
  GManageListingsVars rebuild(
          void Function(GManageListingsVarsBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GManageListingsVarsBuilder toBuilder() =>
      new GManageListingsVarsBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GManageListingsVars &&
        currentPage == other.currentPage &&
        requestType == other.requestType;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, currentPage.hashCode);
    _$hash = $jc(_$hash, requestType.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'GManageListingsVars')
          ..add('currentPage', currentPage)
          ..add('requestType', requestType))
        .toString();
  }
}

class GManageListingsVarsBuilder
    implements Builder<GManageListingsVars, GManageListingsVarsBuilder> {
  _$GManageListingsVars? _$v;

  int? _currentPage;
  int? get currentPage => _$this._currentPage;
  set currentPage(int? currentPage) => _$this._currentPage = currentPage;

  String? _requestType;
  String? get requestType => _$this._requestType;
  set requestType(String? requestType) => _$this._requestType = requestType;

  GManageListingsVarsBuilder();

  GManageListingsVarsBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _currentPage = $v.currentPage;
      _requestType = $v.requestType;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GManageListingsVars other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GManageListingsVars;
  }

  @override
  void update(void Function(GManageListingsVarsBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GManageListingsVars build() => _build();

  _$GManageListingsVars _build() {
    final _$result = _$v ??
        new _$GManageListingsVars._(
            currentPage: currentPage, requestType: requestType);
    replace(_$result);
    return _$result;
  }
}

class _$GlistBlockedDatesVars extends GlistBlockedDatesVars {
  @override
  final int listId;

  factory _$GlistBlockedDatesVars(
          [void Function(GlistBlockedDatesVarsBuilder)? updates]) =>
      (new GlistBlockedDatesVarsBuilder()..update(updates))._build();

  _$GlistBlockedDatesVars._({required this.listId}) : super._() {
    BuiltValueNullFieldError.checkNotNull(
        listId, r'GlistBlockedDatesVars', 'listId');
  }

  @override
  GlistBlockedDatesVars rebuild(
          void Function(GlistBlockedDatesVarsBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GlistBlockedDatesVarsBuilder toBuilder() =>
      new GlistBlockedDatesVarsBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GlistBlockedDatesVars && listId == other.listId;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, listId.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'GlistBlockedDatesVars')
          ..add('listId', listId))
        .toString();
  }
}

class GlistBlockedDatesVarsBuilder
    implements Builder<GlistBlockedDatesVars, GlistBlockedDatesVarsBuilder> {
  _$GlistBlockedDatesVars? _$v;

  int? _listId;
  int? get listId => _$this._listId;
  set listId(int? listId) => _$this._listId = listId;

  GlistBlockedDatesVarsBuilder();

  GlistBlockedDatesVarsBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _listId = $v.listId;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GlistBlockedDatesVars other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GlistBlockedDatesVars;
  }

  @override
  void update(void Function(GlistBlockedDatesVarsBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GlistBlockedDatesVars build() => _build();

  _$GlistBlockedDatesVars _build() {
    final _$result = _$v ??
        new _$GlistBlockedDatesVars._(
            listId: BuiltValueNullFieldError.checkNotNull(
                listId, r'GlistBlockedDatesVars', 'listId'));
    replace(_$result);
    return _$result;
  }
}

class _$GUpdateListBlockedDatesVars extends GUpdateListBlockedDatesVars {
  @override
  final int listId;
  @override
  final BuiltList<String?>? blockedDates;

  factory _$GUpdateListBlockedDatesVars(
          [void Function(GUpdateListBlockedDatesVarsBuilder)? updates]) =>
      (new GUpdateListBlockedDatesVarsBuilder()..update(updates))._build();

  _$GUpdateListBlockedDatesVars._({required this.listId, this.blockedDates})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        listId, r'GUpdateListBlockedDatesVars', 'listId');
  }

  @override
  GUpdateListBlockedDatesVars rebuild(
          void Function(GUpdateListBlockedDatesVarsBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GUpdateListBlockedDatesVarsBuilder toBuilder() =>
      new GUpdateListBlockedDatesVarsBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GUpdateListBlockedDatesVars &&
        listId == other.listId &&
        blockedDates == other.blockedDates;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, listId.hashCode);
    _$hash = $jc(_$hash, blockedDates.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'GUpdateListBlockedDatesVars')
          ..add('listId', listId)
          ..add('blockedDates', blockedDates))
        .toString();
  }
}

class GUpdateListBlockedDatesVarsBuilder
    implements
        Builder<GUpdateListBlockedDatesVars,
            GUpdateListBlockedDatesVarsBuilder> {
  _$GUpdateListBlockedDatesVars? _$v;

  int? _listId;
  int? get listId => _$this._listId;
  set listId(int? listId) => _$this._listId = listId;

  ListBuilder<String?>? _blockedDates;
  ListBuilder<String?> get blockedDates =>
      _$this._blockedDates ??= new ListBuilder<String?>();
  set blockedDates(ListBuilder<String?>? blockedDates) =>
      _$this._blockedDates = blockedDates;

  GUpdateListBlockedDatesVarsBuilder();

  GUpdateListBlockedDatesVarsBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _listId = $v.listId;
      _blockedDates = $v.blockedDates?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GUpdateListBlockedDatesVars other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GUpdateListBlockedDatesVars;
  }

  @override
  void update(void Function(GUpdateListBlockedDatesVarsBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GUpdateListBlockedDatesVars build() => _build();

  _$GUpdateListBlockedDatesVars _build() {
    _$GUpdateListBlockedDatesVars _$result;
    try {
      _$result = _$v ??
          new _$GUpdateListBlockedDatesVars._(
              listId: BuiltValueNullFieldError.checkNotNull(
                  listId, r'GUpdateListBlockedDatesVars', 'listId'),
              blockedDates: _blockedDates?.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'blockedDates';
        _blockedDates?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'GUpdateListBlockedDatesVars', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

class _$GRemoveListingVars extends GRemoveListingVars {
  @override
  final int listId;

  factory _$GRemoveListingVars(
          [void Function(GRemoveListingVarsBuilder)? updates]) =>
      (new GRemoveListingVarsBuilder()..update(updates))._build();

  _$GRemoveListingVars._({required this.listId}) : super._() {
    BuiltValueNullFieldError.checkNotNull(
        listId, r'GRemoveListingVars', 'listId');
  }

  @override
  GRemoveListingVars rebuild(
          void Function(GRemoveListingVarsBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GRemoveListingVarsBuilder toBuilder() =>
      new GRemoveListingVarsBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GRemoveListingVars && listId == other.listId;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, listId.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'GRemoveListingVars')
          ..add('listId', listId))
        .toString();
  }
}

class GRemoveListingVarsBuilder
    implements Builder<GRemoveListingVars, GRemoveListingVarsBuilder> {
  _$GRemoveListingVars? _$v;

  int? _listId;
  int? get listId => _$this._listId;
  set listId(int? listId) => _$this._listId = listId;

  GRemoveListingVarsBuilder();

  GRemoveListingVarsBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _listId = $v.listId;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GRemoveListingVars other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GRemoveListingVars;
  }

  @override
  void update(void Function(GRemoveListingVarsBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GRemoveListingVars build() => _build();

  _$GRemoveListingVars _build() {
    final _$result = _$v ??
        new _$GRemoveListingVars._(
            listId: BuiltValueNullFieldError.checkNotNull(
                listId, r'GRemoveListingVars', 'listId'));
    replace(_$result);
    return _$result;
  }
}

class _$GRemoveMultiPhotosVars extends GRemoveMultiPhotosVars {
  @override
  final String? photos;

  factory _$GRemoveMultiPhotosVars(
          [void Function(GRemoveMultiPhotosVarsBuilder)? updates]) =>
      (new GRemoveMultiPhotosVarsBuilder()..update(updates))._build();

  _$GRemoveMultiPhotosVars._({this.photos}) : super._();

  @override
  GRemoveMultiPhotosVars rebuild(
          void Function(GRemoveMultiPhotosVarsBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GRemoveMultiPhotosVarsBuilder toBuilder() =>
      new GRemoveMultiPhotosVarsBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GRemoveMultiPhotosVars && photos == other.photos;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, photos.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'GRemoveMultiPhotosVars')
          ..add('photos', photos))
        .toString();
  }
}

class GRemoveMultiPhotosVarsBuilder
    implements Builder<GRemoveMultiPhotosVars, GRemoveMultiPhotosVarsBuilder> {
  _$GRemoveMultiPhotosVars? _$v;

  String? _photos;
  String? get photos => _$this._photos;
  set photos(String? photos) => _$this._photos = photos;

  GRemoveMultiPhotosVarsBuilder();

  GRemoveMultiPhotosVarsBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _photos = $v.photos;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GRemoveMultiPhotosVars other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GRemoveMultiPhotosVars;
  }

  @override
  void update(void Function(GRemoveMultiPhotosVarsBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GRemoveMultiPhotosVars build() => _build();

  _$GRemoveMultiPhotosVars _build() {
    final _$result = _$v ?? new _$GRemoveMultiPhotosVars._(photos: photos);
    replace(_$result);
    return _$result;
  }
}

class _$GgetListingSpecialPriceVars extends GgetListingSpecialPriceVars {
  @override
  final int listId;

  factory _$GgetListingSpecialPriceVars(
          [void Function(GgetListingSpecialPriceVarsBuilder)? updates]) =>
      (new GgetListingSpecialPriceVarsBuilder()..update(updates))._build();

  _$GgetListingSpecialPriceVars._({required this.listId}) : super._() {
    BuiltValueNullFieldError.checkNotNull(
        listId, r'GgetListingSpecialPriceVars', 'listId');
  }

  @override
  GgetListingSpecialPriceVars rebuild(
          void Function(GgetListingSpecialPriceVarsBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GgetListingSpecialPriceVarsBuilder toBuilder() =>
      new GgetListingSpecialPriceVarsBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GgetListingSpecialPriceVars && listId == other.listId;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, listId.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'GgetListingSpecialPriceVars')
          ..add('listId', listId))
        .toString();
  }
}

class GgetListingSpecialPriceVarsBuilder
    implements
        Builder<GgetListingSpecialPriceVars,
            GgetListingSpecialPriceVarsBuilder> {
  _$GgetListingSpecialPriceVars? _$v;

  int? _listId;
  int? get listId => _$this._listId;
  set listId(int? listId) => _$this._listId = listId;

  GgetListingSpecialPriceVarsBuilder();

  GgetListingSpecialPriceVarsBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _listId = $v.listId;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GgetListingSpecialPriceVars other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GgetListingSpecialPriceVars;
  }

  @override
  void update(void Function(GgetListingSpecialPriceVarsBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GgetListingSpecialPriceVars build() => _build();

  _$GgetListingSpecialPriceVars _build() {
    final _$result = _$v ??
        new _$GgetListingSpecialPriceVars._(
            listId: BuiltValueNullFieldError.checkNotNull(
                listId, r'GgetListingSpecialPriceVars', 'listId'));
    replace(_$result);
    return _$result;
  }
}

class _$GUpdateSpecialPriceVars extends GUpdateSpecialPriceVars {
  @override
  final int listId;
  @override
  final BuiltList<String?>? blockedDates;
  @override
  final String? calendarStatus;
  @override
  final double? isSpecialPrice;

  factory _$GUpdateSpecialPriceVars(
          [void Function(GUpdateSpecialPriceVarsBuilder)? updates]) =>
      (new GUpdateSpecialPriceVarsBuilder()..update(updates))._build();

  _$GUpdateSpecialPriceVars._(
      {required this.listId,
      this.blockedDates,
      this.calendarStatus,
      this.isSpecialPrice})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        listId, r'GUpdateSpecialPriceVars', 'listId');
  }

  @override
  GUpdateSpecialPriceVars rebuild(
          void Function(GUpdateSpecialPriceVarsBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GUpdateSpecialPriceVarsBuilder toBuilder() =>
      new GUpdateSpecialPriceVarsBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GUpdateSpecialPriceVars &&
        listId == other.listId &&
        blockedDates == other.blockedDates &&
        calendarStatus == other.calendarStatus &&
        isSpecialPrice == other.isSpecialPrice;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, listId.hashCode);
    _$hash = $jc(_$hash, blockedDates.hashCode);
    _$hash = $jc(_$hash, calendarStatus.hashCode);
    _$hash = $jc(_$hash, isSpecialPrice.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'GUpdateSpecialPriceVars')
          ..add('listId', listId)
          ..add('blockedDates', blockedDates)
          ..add('calendarStatus', calendarStatus)
          ..add('isSpecialPrice', isSpecialPrice))
        .toString();
  }
}

class GUpdateSpecialPriceVarsBuilder
    implements
        Builder<GUpdateSpecialPriceVars, GUpdateSpecialPriceVarsBuilder> {
  _$GUpdateSpecialPriceVars? _$v;

  int? _listId;
  int? get listId => _$this._listId;
  set listId(int? listId) => _$this._listId = listId;

  ListBuilder<String?>? _blockedDates;
  ListBuilder<String?> get blockedDates =>
      _$this._blockedDates ??= new ListBuilder<String?>();
  set blockedDates(ListBuilder<String?>? blockedDates) =>
      _$this._blockedDates = blockedDates;

  String? _calendarStatus;
  String? get calendarStatus => _$this._calendarStatus;
  set calendarStatus(String? calendarStatus) =>
      _$this._calendarStatus = calendarStatus;

  double? _isSpecialPrice;
  double? get isSpecialPrice => _$this._isSpecialPrice;
  set isSpecialPrice(double? isSpecialPrice) =>
      _$this._isSpecialPrice = isSpecialPrice;

  GUpdateSpecialPriceVarsBuilder();

  GUpdateSpecialPriceVarsBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _listId = $v.listId;
      _blockedDates = $v.blockedDates?.toBuilder();
      _calendarStatus = $v.calendarStatus;
      _isSpecialPrice = $v.isSpecialPrice;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GUpdateSpecialPriceVars other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GUpdateSpecialPriceVars;
  }

  @override
  void update(void Function(GUpdateSpecialPriceVarsBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GUpdateSpecialPriceVars build() => _build();

  _$GUpdateSpecialPriceVars _build() {
    _$GUpdateSpecialPriceVars _$result;
    try {
      _$result = _$v ??
          new _$GUpdateSpecialPriceVars._(
              listId: BuiltValueNullFieldError.checkNotNull(
                  listId, r'GUpdateSpecialPriceVars', 'listId'),
              blockedDates: _blockedDates?.build(),
              calendarStatus: calendarStatus,
              isSpecialPrice: isSpecialPrice);
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'blockedDates';
        _blockedDates?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'GUpdateSpecialPriceVars', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
