// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'Reviews.var.gql.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<GgetUserReviewsVars> _$ggetUserReviewsVarsSerializer =
    new _$GgetUserReviewsVarsSerializer();
Serializer<GuserReviewsVars> _$guserReviewsVarsSerializer =
    new _$GuserReviewsVarsSerializer();
Serializer<GgetPropertyReviewsVars> _$ggetPropertyReviewsVarsSerializer =
    new _$GgetPropertyReviewsVarsSerializer();
Serializer<GgetPendingUserReviewsVars> _$ggetPendingUserReviewsVarsSerializer =
    new _$GgetPendingUserReviewsVarsSerializer();
Serializer<GgetPendingUserReviewVars> _$ggetPendingUserReviewVarsSerializer =
    new _$GgetPendingUserReviewVarsSerializer();
Serializer<GwriteUserReviewVars> _$gwriteUserReviewVarsSerializer =
    new _$GwriteUserReviewVarsSerializer();

class _$GgetUserReviewsVarsSerializer
    implements StructuredSerializer<GgetUserReviewsVars> {
  @override
  final Iterable<Type> types = const [
    GgetUserReviewsVars,
    _$GgetUserReviewsVars
  ];
  @override
  final String wireName = 'GgetUserReviewsVars';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, GgetUserReviewsVars object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[];
    Object? value;
    value = object.currentPage;
    if (value != null) {
      result
        ..add('currentPage')
        ..add(serializers.serialize(value, specifiedType: const FullType(int)));
    }
    value = object.ownerType;
    if (value != null) {
      result
        ..add('ownerType')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.searchKey;
    if (value != null) {
      result
        ..add('searchKey')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.reviewType;
    if (value != null) {
      result
        ..add('reviewType')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    return result;
  }

  @override
  GgetUserReviewsVars deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GgetUserReviewsVarsBuilder();

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
        case 'ownerType':
          result.ownerType = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'searchKey':
          result.searchKey = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'reviewType':
          result.reviewType = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
      }
    }

    return result.build();
  }
}

class _$GuserReviewsVarsSerializer
    implements StructuredSerializer<GuserReviewsVars> {
  @override
  final Iterable<Type> types = const [GuserReviewsVars, _$GuserReviewsVars];
  @override
  final String wireName = 'GuserReviewsVars';

  @override
  Iterable<Object?> serialize(Serializers serializers, GuserReviewsVars object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[];
    Object? value;
    value = object.ownerType;
    if (value != null) {
      result
        ..add('ownerType')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.currentPage;
    if (value != null) {
      result
        ..add('currentPage')
        ..add(serializers.serialize(value, specifiedType: const FullType(int)));
    }
    value = object.profileId;
    if (value != null) {
      result
        ..add('profileId')
        ..add(serializers.serialize(value, specifiedType: const FullType(int)));
    }
    return result;
  }

  @override
  GuserReviewsVars deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GuserReviewsVarsBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'ownerType':
          result.ownerType = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'currentPage':
          result.currentPage = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int?;
          break;
        case 'profileId':
          result.profileId = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int?;
          break;
      }
    }

    return result.build();
  }
}

class _$GgetPropertyReviewsVarsSerializer
    implements StructuredSerializer<GgetPropertyReviewsVars> {
  @override
  final Iterable<Type> types = const [
    GgetPropertyReviewsVars,
    _$GgetPropertyReviewsVars
  ];
  @override
  final String wireName = 'GgetPropertyReviewsVars';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, GgetPropertyReviewsVars object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      'currentPage',
      serializers.serialize(object.currentPage,
          specifiedType: const FullType(int)),
      'listId',
      serializers.serialize(object.listId, specifiedType: const FullType(int)),
    ];

    return result;
  }

  @override
  GgetPropertyReviewsVars deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GgetPropertyReviewsVarsBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'currentPage':
          result.currentPage = serializers.deserialize(value,
              specifiedType: const FullType(int))! as int;
          break;
        case 'listId':
          result.listId = serializers.deserialize(value,
              specifiedType: const FullType(int))! as int;
          break;
      }
    }

    return result.build();
  }
}

class _$GgetPendingUserReviewsVarsSerializer
    implements StructuredSerializer<GgetPendingUserReviewsVars> {
  @override
  final Iterable<Type> types = const [
    GgetPendingUserReviewsVars,
    _$GgetPendingUserReviewsVars
  ];
  @override
  final String wireName = 'GgetPendingUserReviewsVars';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, GgetPendingUserReviewsVars object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[];
    Object? value;
    value = object.currentPage;
    if (value != null) {
      result
        ..add('currentPage')
        ..add(serializers.serialize(value, specifiedType: const FullType(int)));
    }
    return result;
  }

  @override
  GgetPendingUserReviewsVars deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GgetPendingUserReviewsVarsBuilder();

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
      }
    }

    return result.build();
  }
}

class _$GgetPendingUserReviewVarsSerializer
    implements StructuredSerializer<GgetPendingUserReviewVars> {
  @override
  final Iterable<Type> types = const [
    GgetPendingUserReviewVars,
    _$GgetPendingUserReviewVars
  ];
  @override
  final String wireName = 'GgetPendingUserReviewVars';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, GgetPendingUserReviewVars object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      'reservationId',
      serializers.serialize(object.reservationId,
          specifiedType: const FullType(int)),
    ];

    return result;
  }

  @override
  GgetPendingUserReviewVars deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GgetPendingUserReviewVarsBuilder();

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
      }
    }

    return result.build();
  }
}

class _$GwriteUserReviewVarsSerializer
    implements StructuredSerializer<GwriteUserReviewVars> {
  @override
  final Iterable<Type> types = const [
    GwriteUserReviewVars,
    _$GwriteUserReviewVars
  ];
  @override
  final String wireName = 'GwriteUserReviewVars';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, GwriteUserReviewVars object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      'reservationId',
      serializers.serialize(object.reservationId,
          specifiedType: const FullType(int)),
      'listId',
      serializers.serialize(object.listId, specifiedType: const FullType(int)),
      'reviewContent',
      serializers.serialize(object.reviewContent,
          specifiedType: const FullType(String)),
      'rating',
      serializers.serialize(object.rating,
          specifiedType: const FullType(double)),
      'receiverId',
      serializers.serialize(object.receiverId,
          specifiedType: const FullType(String)),
    ];

    return result;
  }

  @override
  GwriteUserReviewVars deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GwriteUserReviewVarsBuilder();

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
        case 'listId':
          result.listId = serializers.deserialize(value,
              specifiedType: const FullType(int))! as int;
          break;
        case 'reviewContent':
          result.reviewContent = serializers.deserialize(value,
              specifiedType: const FullType(String))! as String;
          break;
        case 'rating':
          result.rating = serializers.deserialize(value,
              specifiedType: const FullType(double))! as double;
          break;
        case 'receiverId':
          result.receiverId = serializers.deserialize(value,
              specifiedType: const FullType(String))! as String;
          break;
      }
    }

    return result.build();
  }
}

class _$GgetUserReviewsVars extends GgetUserReviewsVars {
  @override
  final int? currentPage;
  @override
  final String? ownerType;
  @override
  final String? searchKey;
  @override
  final String? reviewType;

  factory _$GgetUserReviewsVars(
          [void Function(GgetUserReviewsVarsBuilder)? updates]) =>
      (new GgetUserReviewsVarsBuilder()..update(updates))._build();

  _$GgetUserReviewsVars._(
      {this.currentPage, this.ownerType, this.searchKey, this.reviewType})
      : super._();

  @override
  GgetUserReviewsVars rebuild(
          void Function(GgetUserReviewsVarsBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GgetUserReviewsVarsBuilder toBuilder() =>
      new GgetUserReviewsVarsBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GgetUserReviewsVars &&
        currentPage == other.currentPage &&
        ownerType == other.ownerType &&
        searchKey == other.searchKey &&
        reviewType == other.reviewType;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, currentPage.hashCode);
    _$hash = $jc(_$hash, ownerType.hashCode);
    _$hash = $jc(_$hash, searchKey.hashCode);
    _$hash = $jc(_$hash, reviewType.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'GgetUserReviewsVars')
          ..add('currentPage', currentPage)
          ..add('ownerType', ownerType)
          ..add('searchKey', searchKey)
          ..add('reviewType', reviewType))
        .toString();
  }
}

class GgetUserReviewsVarsBuilder
    implements Builder<GgetUserReviewsVars, GgetUserReviewsVarsBuilder> {
  _$GgetUserReviewsVars? _$v;

  int? _currentPage;
  int? get currentPage => _$this._currentPage;
  set currentPage(int? currentPage) => _$this._currentPage = currentPage;

  String? _ownerType;
  String? get ownerType => _$this._ownerType;
  set ownerType(String? ownerType) => _$this._ownerType = ownerType;

  String? _searchKey;
  String? get searchKey => _$this._searchKey;
  set searchKey(String? searchKey) => _$this._searchKey = searchKey;

  String? _reviewType;
  String? get reviewType => _$this._reviewType;
  set reviewType(String? reviewType) => _$this._reviewType = reviewType;

  GgetUserReviewsVarsBuilder();

  GgetUserReviewsVarsBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _currentPage = $v.currentPage;
      _ownerType = $v.ownerType;
      _searchKey = $v.searchKey;
      _reviewType = $v.reviewType;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GgetUserReviewsVars other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GgetUserReviewsVars;
  }

  @override
  void update(void Function(GgetUserReviewsVarsBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GgetUserReviewsVars build() => _build();

  _$GgetUserReviewsVars _build() {
    final _$result = _$v ??
        new _$GgetUserReviewsVars._(
            currentPage: currentPage,
            ownerType: ownerType,
            searchKey: searchKey,
            reviewType: reviewType);
    replace(_$result);
    return _$result;
  }
}

class _$GuserReviewsVars extends GuserReviewsVars {
  @override
  final String? ownerType;
  @override
  final int? currentPage;
  @override
  final int? profileId;

  factory _$GuserReviewsVars(
          [void Function(GuserReviewsVarsBuilder)? updates]) =>
      (new GuserReviewsVarsBuilder()..update(updates))._build();

  _$GuserReviewsVars._({this.ownerType, this.currentPage, this.profileId})
      : super._();

  @override
  GuserReviewsVars rebuild(void Function(GuserReviewsVarsBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GuserReviewsVarsBuilder toBuilder() =>
      new GuserReviewsVarsBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GuserReviewsVars &&
        ownerType == other.ownerType &&
        currentPage == other.currentPage &&
        profileId == other.profileId;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, ownerType.hashCode);
    _$hash = $jc(_$hash, currentPage.hashCode);
    _$hash = $jc(_$hash, profileId.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'GuserReviewsVars')
          ..add('ownerType', ownerType)
          ..add('currentPage', currentPage)
          ..add('profileId', profileId))
        .toString();
  }
}

class GuserReviewsVarsBuilder
    implements Builder<GuserReviewsVars, GuserReviewsVarsBuilder> {
  _$GuserReviewsVars? _$v;

  String? _ownerType;
  String? get ownerType => _$this._ownerType;
  set ownerType(String? ownerType) => _$this._ownerType = ownerType;

  int? _currentPage;
  int? get currentPage => _$this._currentPage;
  set currentPage(int? currentPage) => _$this._currentPage = currentPage;

  int? _profileId;
  int? get profileId => _$this._profileId;
  set profileId(int? profileId) => _$this._profileId = profileId;

  GuserReviewsVarsBuilder();

  GuserReviewsVarsBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _ownerType = $v.ownerType;
      _currentPage = $v.currentPage;
      _profileId = $v.profileId;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GuserReviewsVars other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GuserReviewsVars;
  }

  @override
  void update(void Function(GuserReviewsVarsBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GuserReviewsVars build() => _build();

  _$GuserReviewsVars _build() {
    final _$result = _$v ??
        new _$GuserReviewsVars._(
            ownerType: ownerType,
            currentPage: currentPage,
            profileId: profileId);
    replace(_$result);
    return _$result;
  }
}

class _$GgetPropertyReviewsVars extends GgetPropertyReviewsVars {
  @override
  final int currentPage;
  @override
  final int listId;

  factory _$GgetPropertyReviewsVars(
          [void Function(GgetPropertyReviewsVarsBuilder)? updates]) =>
      (new GgetPropertyReviewsVarsBuilder()..update(updates))._build();

  _$GgetPropertyReviewsVars._({required this.currentPage, required this.listId})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        currentPage, r'GgetPropertyReviewsVars', 'currentPage');
    BuiltValueNullFieldError.checkNotNull(
        listId, r'GgetPropertyReviewsVars', 'listId');
  }

  @override
  GgetPropertyReviewsVars rebuild(
          void Function(GgetPropertyReviewsVarsBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GgetPropertyReviewsVarsBuilder toBuilder() =>
      new GgetPropertyReviewsVarsBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GgetPropertyReviewsVars &&
        currentPage == other.currentPage &&
        listId == other.listId;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, currentPage.hashCode);
    _$hash = $jc(_$hash, listId.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'GgetPropertyReviewsVars')
          ..add('currentPage', currentPage)
          ..add('listId', listId))
        .toString();
  }
}

class GgetPropertyReviewsVarsBuilder
    implements
        Builder<GgetPropertyReviewsVars, GgetPropertyReviewsVarsBuilder> {
  _$GgetPropertyReviewsVars? _$v;

  int? _currentPage;
  int? get currentPage => _$this._currentPage;
  set currentPage(int? currentPage) => _$this._currentPage = currentPage;

  int? _listId;
  int? get listId => _$this._listId;
  set listId(int? listId) => _$this._listId = listId;

  GgetPropertyReviewsVarsBuilder();

  GgetPropertyReviewsVarsBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _currentPage = $v.currentPage;
      _listId = $v.listId;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GgetPropertyReviewsVars other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GgetPropertyReviewsVars;
  }

  @override
  void update(void Function(GgetPropertyReviewsVarsBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GgetPropertyReviewsVars build() => _build();

  _$GgetPropertyReviewsVars _build() {
    final _$result = _$v ??
        new _$GgetPropertyReviewsVars._(
            currentPage: BuiltValueNullFieldError.checkNotNull(
                currentPage, r'GgetPropertyReviewsVars', 'currentPage'),
            listId: BuiltValueNullFieldError.checkNotNull(
                listId, r'GgetPropertyReviewsVars', 'listId'));
    replace(_$result);
    return _$result;
  }
}

class _$GgetPendingUserReviewsVars extends GgetPendingUserReviewsVars {
  @override
  final int? currentPage;

  factory _$GgetPendingUserReviewsVars(
          [void Function(GgetPendingUserReviewsVarsBuilder)? updates]) =>
      (new GgetPendingUserReviewsVarsBuilder()..update(updates))._build();

  _$GgetPendingUserReviewsVars._({this.currentPage}) : super._();

  @override
  GgetPendingUserReviewsVars rebuild(
          void Function(GgetPendingUserReviewsVarsBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GgetPendingUserReviewsVarsBuilder toBuilder() =>
      new GgetPendingUserReviewsVarsBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GgetPendingUserReviewsVars &&
        currentPage == other.currentPage;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, currentPage.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'GgetPendingUserReviewsVars')
          ..add('currentPage', currentPage))
        .toString();
  }
}

class GgetPendingUserReviewsVarsBuilder
    implements
        Builder<GgetPendingUserReviewsVars, GgetPendingUserReviewsVarsBuilder> {
  _$GgetPendingUserReviewsVars? _$v;

  int? _currentPage;
  int? get currentPage => _$this._currentPage;
  set currentPage(int? currentPage) => _$this._currentPage = currentPage;

  GgetPendingUserReviewsVarsBuilder();

  GgetPendingUserReviewsVarsBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _currentPage = $v.currentPage;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GgetPendingUserReviewsVars other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GgetPendingUserReviewsVars;
  }

  @override
  void update(void Function(GgetPendingUserReviewsVarsBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GgetPendingUserReviewsVars build() => _build();

  _$GgetPendingUserReviewsVars _build() {
    final _$result =
        _$v ?? new _$GgetPendingUserReviewsVars._(currentPage: currentPage);
    replace(_$result);
    return _$result;
  }
}

class _$GgetPendingUserReviewVars extends GgetPendingUserReviewVars {
  @override
  final int reservationId;

  factory _$GgetPendingUserReviewVars(
          [void Function(GgetPendingUserReviewVarsBuilder)? updates]) =>
      (new GgetPendingUserReviewVarsBuilder()..update(updates))._build();

  _$GgetPendingUserReviewVars._({required this.reservationId}) : super._() {
    BuiltValueNullFieldError.checkNotNull(
        reservationId, r'GgetPendingUserReviewVars', 'reservationId');
  }

  @override
  GgetPendingUserReviewVars rebuild(
          void Function(GgetPendingUserReviewVarsBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GgetPendingUserReviewVarsBuilder toBuilder() =>
      new GgetPendingUserReviewVarsBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GgetPendingUserReviewVars &&
        reservationId == other.reservationId;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, reservationId.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'GgetPendingUserReviewVars')
          ..add('reservationId', reservationId))
        .toString();
  }
}

class GgetPendingUserReviewVarsBuilder
    implements
        Builder<GgetPendingUserReviewVars, GgetPendingUserReviewVarsBuilder> {
  _$GgetPendingUserReviewVars? _$v;

  int? _reservationId;
  int? get reservationId => _$this._reservationId;
  set reservationId(int? reservationId) =>
      _$this._reservationId = reservationId;

  GgetPendingUserReviewVarsBuilder();

  GgetPendingUserReviewVarsBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _reservationId = $v.reservationId;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GgetPendingUserReviewVars other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GgetPendingUserReviewVars;
  }

  @override
  void update(void Function(GgetPendingUserReviewVarsBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GgetPendingUserReviewVars build() => _build();

  _$GgetPendingUserReviewVars _build() {
    final _$result = _$v ??
        new _$GgetPendingUserReviewVars._(
            reservationId: BuiltValueNullFieldError.checkNotNull(
                reservationId, r'GgetPendingUserReviewVars', 'reservationId'));
    replace(_$result);
    return _$result;
  }
}

class _$GwriteUserReviewVars extends GwriteUserReviewVars {
  @override
  final int reservationId;
  @override
  final int listId;
  @override
  final String reviewContent;
  @override
  final double rating;
  @override
  final String receiverId;

  factory _$GwriteUserReviewVars(
          [void Function(GwriteUserReviewVarsBuilder)? updates]) =>
      (new GwriteUserReviewVarsBuilder()..update(updates))._build();

  _$GwriteUserReviewVars._(
      {required this.reservationId,
      required this.listId,
      required this.reviewContent,
      required this.rating,
      required this.receiverId})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        reservationId, r'GwriteUserReviewVars', 'reservationId');
    BuiltValueNullFieldError.checkNotNull(
        listId, r'GwriteUserReviewVars', 'listId');
    BuiltValueNullFieldError.checkNotNull(
        reviewContent, r'GwriteUserReviewVars', 'reviewContent');
    BuiltValueNullFieldError.checkNotNull(
        rating, r'GwriteUserReviewVars', 'rating');
    BuiltValueNullFieldError.checkNotNull(
        receiverId, r'GwriteUserReviewVars', 'receiverId');
  }

  @override
  GwriteUserReviewVars rebuild(
          void Function(GwriteUserReviewVarsBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GwriteUserReviewVarsBuilder toBuilder() =>
      new GwriteUserReviewVarsBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GwriteUserReviewVars &&
        reservationId == other.reservationId &&
        listId == other.listId &&
        reviewContent == other.reviewContent &&
        rating == other.rating &&
        receiverId == other.receiverId;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, reservationId.hashCode);
    _$hash = $jc(_$hash, listId.hashCode);
    _$hash = $jc(_$hash, reviewContent.hashCode);
    _$hash = $jc(_$hash, rating.hashCode);
    _$hash = $jc(_$hash, receiverId.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'GwriteUserReviewVars')
          ..add('reservationId', reservationId)
          ..add('listId', listId)
          ..add('reviewContent', reviewContent)
          ..add('rating', rating)
          ..add('receiverId', receiverId))
        .toString();
  }
}

class GwriteUserReviewVarsBuilder
    implements Builder<GwriteUserReviewVars, GwriteUserReviewVarsBuilder> {
  _$GwriteUserReviewVars? _$v;

  int? _reservationId;
  int? get reservationId => _$this._reservationId;
  set reservationId(int? reservationId) =>
      _$this._reservationId = reservationId;

  int? _listId;
  int? get listId => _$this._listId;
  set listId(int? listId) => _$this._listId = listId;

  String? _reviewContent;
  String? get reviewContent => _$this._reviewContent;
  set reviewContent(String? reviewContent) =>
      _$this._reviewContent = reviewContent;

  double? _rating;
  double? get rating => _$this._rating;
  set rating(double? rating) => _$this._rating = rating;

  String? _receiverId;
  String? get receiverId => _$this._receiverId;
  set receiverId(String? receiverId) => _$this._receiverId = receiverId;

  GwriteUserReviewVarsBuilder();

  GwriteUserReviewVarsBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _reservationId = $v.reservationId;
      _listId = $v.listId;
      _reviewContent = $v.reviewContent;
      _rating = $v.rating;
      _receiverId = $v.receiverId;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GwriteUserReviewVars other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GwriteUserReviewVars;
  }

  @override
  void update(void Function(GwriteUserReviewVarsBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GwriteUserReviewVars build() => _build();

  _$GwriteUserReviewVars _build() {
    final _$result = _$v ??
        new _$GwriteUserReviewVars._(
            reservationId: BuiltValueNullFieldError.checkNotNull(
                reservationId, r'GwriteUserReviewVars', 'reservationId'),
            listId: BuiltValueNullFieldError.checkNotNull(
                listId, r'GwriteUserReviewVars', 'listId'),
            reviewContent: BuiltValueNullFieldError.checkNotNull(
                reviewContent, r'GwriteUserReviewVars', 'reviewContent'),
            rating: BuiltValueNullFieldError.checkNotNull(
                rating, r'GwriteUserReviewVars', 'rating'),
            receiverId: BuiltValueNullFieldError.checkNotNull(
                receiverId, r'GwriteUserReviewVars', 'receiverId'));
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
