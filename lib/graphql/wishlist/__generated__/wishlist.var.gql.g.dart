// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'wishlist.var.gql.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<GCreateWishListGroupVars> _$gCreateWishListGroupVarsSerializer =
    new _$GCreateWishListGroupVarsSerializer();
Serializer<GgetAllWishListGroupVars> _$ggetAllWishListGroupVarsSerializer =
    new _$GgetAllWishListGroupVarsSerializer();
Serializer<GCreateWishListVars> _$gCreateWishListVarsSerializer =
    new _$GCreateWishListVarsSerializer();
Serializer<GgetWishListGroupVars> _$ggetWishListGroupVarsSerializer =
    new _$GgetWishListGroupVarsSerializer();
Serializer<GDeleteWishListGroupVars> _$gDeleteWishListGroupVarsSerializer =
    new _$GDeleteWishListGroupVarsSerializer();
Serializer<GUpdateWishListGroupVars> _$gUpdateWishListGroupVarsSerializer =
    new _$GUpdateWishListGroupVarsSerializer();

class _$GCreateWishListGroupVarsSerializer
    implements StructuredSerializer<GCreateWishListGroupVars> {
  @override
  final Iterable<Type> types = const [
    GCreateWishListGroupVars,
    _$GCreateWishListGroupVars
  ];
  @override
  final String wireName = 'GCreateWishListGroupVars';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, GCreateWishListGroupVars object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      'name',
      serializers.serialize(object.name, specifiedType: const FullType(String)),
    ];
    Object? value;
    value = object.id;
    if (value != null) {
      result
        ..add('id')
        ..add(serializers.serialize(value, specifiedType: const FullType(int)));
    }
    value = object.isPublic;
    if (value != null) {
      result
        ..add('isPublic')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    return result;
  }

  @override
  GCreateWishListGroupVars deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GCreateWishListGroupVarsBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'name':
          result.name = serializers.deserialize(value,
              specifiedType: const FullType(String))! as String;
          break;
        case 'id':
          result.id = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int?;
          break;
        case 'isPublic':
          result.isPublic = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
      }
    }

    return result.build();
  }
}

class _$GgetAllWishListGroupVarsSerializer
    implements StructuredSerializer<GgetAllWishListGroupVars> {
  @override
  final Iterable<Type> types = const [
    GgetAllWishListGroupVars,
    _$GgetAllWishListGroupVars
  ];
  @override
  final String wireName = 'GgetAllWishListGroupVars';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, GgetAllWishListGroupVars object,
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
  GgetAllWishListGroupVars deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GgetAllWishListGroupVarsBuilder();

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

class _$GCreateWishListVarsSerializer
    implements StructuredSerializer<GCreateWishListVars> {
  @override
  final Iterable<Type> types = const [
    GCreateWishListVars,
    _$GCreateWishListVars
  ];
  @override
  final String wireName = 'GCreateWishListVars';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, GCreateWishListVars object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      'listId',
      serializers.serialize(object.listId, specifiedType: const FullType(int)),
    ];
    Object? value;
    value = object.wishListGroupId;
    if (value != null) {
      result
        ..add('wishListGroupId')
        ..add(serializers.serialize(value, specifiedType: const FullType(int)));
    }
    value = object.eventKey;
    if (value != null) {
      result
        ..add('eventKey')
        ..add(
            serializers.serialize(value, specifiedType: const FullType(bool)));
    }
    return result;
  }

  @override
  GCreateWishListVars deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GCreateWishListVarsBuilder();

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
        case 'wishListGroupId':
          result.wishListGroupId = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int?;
          break;
        case 'eventKey':
          result.eventKey = serializers.deserialize(value,
              specifiedType: const FullType(bool)) as bool?;
          break;
      }
    }

    return result.build();
  }
}

class _$GgetWishListGroupVarsSerializer
    implements StructuredSerializer<GgetWishListGroupVars> {
  @override
  final Iterable<Type> types = const [
    GgetWishListGroupVars,
    _$GgetWishListGroupVars
  ];
  @override
  final String wireName = 'GgetWishListGroupVars';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, GgetWishListGroupVars object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      'id',
      serializers.serialize(object.id, specifiedType: const FullType(int)),
    ];
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
  GgetWishListGroupVars deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GgetWishListGroupVarsBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'id':
          result.id = serializers.deserialize(value,
              specifiedType: const FullType(int))! as int;
          break;
        case 'currentPage':
          result.currentPage = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int?;
          break;
      }
    }

    return result.build();
  }
}

class _$GDeleteWishListGroupVarsSerializer
    implements StructuredSerializer<GDeleteWishListGroupVars> {
  @override
  final Iterable<Type> types = const [
    GDeleteWishListGroupVars,
    _$GDeleteWishListGroupVars
  ];
  @override
  final String wireName = 'GDeleteWishListGroupVars';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, GDeleteWishListGroupVars object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      'id',
      serializers.serialize(object.id, specifiedType: const FullType(int)),
    ];

    return result;
  }

  @override
  GDeleteWishListGroupVars deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GDeleteWishListGroupVarsBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'id':
          result.id = serializers.deserialize(value,
              specifiedType: const FullType(int))! as int;
          break;
      }
    }

    return result.build();
  }
}

class _$GUpdateWishListGroupVarsSerializer
    implements StructuredSerializer<GUpdateWishListGroupVars> {
  @override
  final Iterable<Type> types = const [
    GUpdateWishListGroupVars,
    _$GUpdateWishListGroupVars
  ];
  @override
  final String wireName = 'GUpdateWishListGroupVars';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, GUpdateWishListGroupVars object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      'id',
      serializers.serialize(object.id, specifiedType: const FullType(int)),
    ];
    Object? value;
    value = object.isPublic;
    if (value != null) {
      result
        ..add('isPublic')
        ..add(serializers.serialize(value, specifiedType: const FullType(int)));
    }
    return result;
  }

  @override
  GUpdateWishListGroupVars deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GUpdateWishListGroupVarsBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'isPublic':
          result.isPublic = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int?;
          break;
        case 'id':
          result.id = serializers.deserialize(value,
              specifiedType: const FullType(int))! as int;
          break;
      }
    }

    return result.build();
  }
}

class _$GCreateWishListGroupVars extends GCreateWishListGroupVars {
  @override
  final String name;
  @override
  final int? id;
  @override
  final String? isPublic;

  factory _$GCreateWishListGroupVars(
          [void Function(GCreateWishListGroupVarsBuilder)? updates]) =>
      (new GCreateWishListGroupVarsBuilder()..update(updates))._build();

  _$GCreateWishListGroupVars._({required this.name, this.id, this.isPublic})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        name, r'GCreateWishListGroupVars', 'name');
  }

  @override
  GCreateWishListGroupVars rebuild(
          void Function(GCreateWishListGroupVarsBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GCreateWishListGroupVarsBuilder toBuilder() =>
      new GCreateWishListGroupVarsBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GCreateWishListGroupVars &&
        name == other.name &&
        id == other.id &&
        isPublic == other.isPublic;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, name.hashCode);
    _$hash = $jc(_$hash, id.hashCode);
    _$hash = $jc(_$hash, isPublic.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'GCreateWishListGroupVars')
          ..add('name', name)
          ..add('id', id)
          ..add('isPublic', isPublic))
        .toString();
  }
}

class GCreateWishListGroupVarsBuilder
    implements
        Builder<GCreateWishListGroupVars, GCreateWishListGroupVarsBuilder> {
  _$GCreateWishListGroupVars? _$v;

  String? _name;
  String? get name => _$this._name;
  set name(String? name) => _$this._name = name;

  int? _id;
  int? get id => _$this._id;
  set id(int? id) => _$this._id = id;

  String? _isPublic;
  String? get isPublic => _$this._isPublic;
  set isPublic(String? isPublic) => _$this._isPublic = isPublic;

  GCreateWishListGroupVarsBuilder();

  GCreateWishListGroupVarsBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _name = $v.name;
      _id = $v.id;
      _isPublic = $v.isPublic;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GCreateWishListGroupVars other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GCreateWishListGroupVars;
  }

  @override
  void update(void Function(GCreateWishListGroupVarsBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GCreateWishListGroupVars build() => _build();

  _$GCreateWishListGroupVars _build() {
    final _$result = _$v ??
        new _$GCreateWishListGroupVars._(
            name: BuiltValueNullFieldError.checkNotNull(
                name, r'GCreateWishListGroupVars', 'name'),
            id: id,
            isPublic: isPublic);
    replace(_$result);
    return _$result;
  }
}

class _$GgetAllWishListGroupVars extends GgetAllWishListGroupVars {
  @override
  final int? currentPage;

  factory _$GgetAllWishListGroupVars(
          [void Function(GgetAllWishListGroupVarsBuilder)? updates]) =>
      (new GgetAllWishListGroupVarsBuilder()..update(updates))._build();

  _$GgetAllWishListGroupVars._({this.currentPage}) : super._();

  @override
  GgetAllWishListGroupVars rebuild(
          void Function(GgetAllWishListGroupVarsBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GgetAllWishListGroupVarsBuilder toBuilder() =>
      new GgetAllWishListGroupVarsBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GgetAllWishListGroupVars &&
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
    return (newBuiltValueToStringHelper(r'GgetAllWishListGroupVars')
          ..add('currentPage', currentPage))
        .toString();
  }
}

class GgetAllWishListGroupVarsBuilder
    implements
        Builder<GgetAllWishListGroupVars, GgetAllWishListGroupVarsBuilder> {
  _$GgetAllWishListGroupVars? _$v;

  int? _currentPage;
  int? get currentPage => _$this._currentPage;
  set currentPage(int? currentPage) => _$this._currentPage = currentPage;

  GgetAllWishListGroupVarsBuilder();

  GgetAllWishListGroupVarsBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _currentPage = $v.currentPage;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GgetAllWishListGroupVars other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GgetAllWishListGroupVars;
  }

  @override
  void update(void Function(GgetAllWishListGroupVarsBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GgetAllWishListGroupVars build() => _build();

  _$GgetAllWishListGroupVars _build() {
    final _$result =
        _$v ?? new _$GgetAllWishListGroupVars._(currentPage: currentPage);
    replace(_$result);
    return _$result;
  }
}

class _$GCreateWishListVars extends GCreateWishListVars {
  @override
  final int listId;
  @override
  final int? wishListGroupId;
  @override
  final bool? eventKey;

  factory _$GCreateWishListVars(
          [void Function(GCreateWishListVarsBuilder)? updates]) =>
      (new GCreateWishListVarsBuilder()..update(updates))._build();

  _$GCreateWishListVars._(
      {required this.listId, this.wishListGroupId, this.eventKey})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        listId, r'GCreateWishListVars', 'listId');
  }

  @override
  GCreateWishListVars rebuild(
          void Function(GCreateWishListVarsBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GCreateWishListVarsBuilder toBuilder() =>
      new GCreateWishListVarsBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GCreateWishListVars &&
        listId == other.listId &&
        wishListGroupId == other.wishListGroupId &&
        eventKey == other.eventKey;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, listId.hashCode);
    _$hash = $jc(_$hash, wishListGroupId.hashCode);
    _$hash = $jc(_$hash, eventKey.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'GCreateWishListVars')
          ..add('listId', listId)
          ..add('wishListGroupId', wishListGroupId)
          ..add('eventKey', eventKey))
        .toString();
  }
}

class GCreateWishListVarsBuilder
    implements Builder<GCreateWishListVars, GCreateWishListVarsBuilder> {
  _$GCreateWishListVars? _$v;

  int? _listId;
  int? get listId => _$this._listId;
  set listId(int? listId) => _$this._listId = listId;

  int? _wishListGroupId;
  int? get wishListGroupId => _$this._wishListGroupId;
  set wishListGroupId(int? wishListGroupId) =>
      _$this._wishListGroupId = wishListGroupId;

  bool? _eventKey;
  bool? get eventKey => _$this._eventKey;
  set eventKey(bool? eventKey) => _$this._eventKey = eventKey;

  GCreateWishListVarsBuilder();

  GCreateWishListVarsBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _listId = $v.listId;
      _wishListGroupId = $v.wishListGroupId;
      _eventKey = $v.eventKey;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GCreateWishListVars other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GCreateWishListVars;
  }

  @override
  void update(void Function(GCreateWishListVarsBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GCreateWishListVars build() => _build();

  _$GCreateWishListVars _build() {
    final _$result = _$v ??
        new _$GCreateWishListVars._(
            listId: BuiltValueNullFieldError.checkNotNull(
                listId, r'GCreateWishListVars', 'listId'),
            wishListGroupId: wishListGroupId,
            eventKey: eventKey);
    replace(_$result);
    return _$result;
  }
}

class _$GgetWishListGroupVars extends GgetWishListGroupVars {
  @override
  final int id;
  @override
  final int? currentPage;

  factory _$GgetWishListGroupVars(
          [void Function(GgetWishListGroupVarsBuilder)? updates]) =>
      (new GgetWishListGroupVarsBuilder()..update(updates))._build();

  _$GgetWishListGroupVars._({required this.id, this.currentPage}) : super._() {
    BuiltValueNullFieldError.checkNotNull(id, r'GgetWishListGroupVars', 'id');
  }

  @override
  GgetWishListGroupVars rebuild(
          void Function(GgetWishListGroupVarsBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GgetWishListGroupVarsBuilder toBuilder() =>
      new GgetWishListGroupVarsBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GgetWishListGroupVars &&
        id == other.id &&
        currentPage == other.currentPage;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, id.hashCode);
    _$hash = $jc(_$hash, currentPage.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'GgetWishListGroupVars')
          ..add('id', id)
          ..add('currentPage', currentPage))
        .toString();
  }
}

class GgetWishListGroupVarsBuilder
    implements Builder<GgetWishListGroupVars, GgetWishListGroupVarsBuilder> {
  _$GgetWishListGroupVars? _$v;

  int? _id;
  int? get id => _$this._id;
  set id(int? id) => _$this._id = id;

  int? _currentPage;
  int? get currentPage => _$this._currentPage;
  set currentPage(int? currentPage) => _$this._currentPage = currentPage;

  GgetWishListGroupVarsBuilder();

  GgetWishListGroupVarsBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _id = $v.id;
      _currentPage = $v.currentPage;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GgetWishListGroupVars other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GgetWishListGroupVars;
  }

  @override
  void update(void Function(GgetWishListGroupVarsBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GgetWishListGroupVars build() => _build();

  _$GgetWishListGroupVars _build() {
    final _$result = _$v ??
        new _$GgetWishListGroupVars._(
            id: BuiltValueNullFieldError.checkNotNull(
                id, r'GgetWishListGroupVars', 'id'),
            currentPage: currentPage);
    replace(_$result);
    return _$result;
  }
}

class _$GDeleteWishListGroupVars extends GDeleteWishListGroupVars {
  @override
  final int id;

  factory _$GDeleteWishListGroupVars(
          [void Function(GDeleteWishListGroupVarsBuilder)? updates]) =>
      (new GDeleteWishListGroupVarsBuilder()..update(updates))._build();

  _$GDeleteWishListGroupVars._({required this.id}) : super._() {
    BuiltValueNullFieldError.checkNotNull(
        id, r'GDeleteWishListGroupVars', 'id');
  }

  @override
  GDeleteWishListGroupVars rebuild(
          void Function(GDeleteWishListGroupVarsBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GDeleteWishListGroupVarsBuilder toBuilder() =>
      new GDeleteWishListGroupVarsBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GDeleteWishListGroupVars && id == other.id;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, id.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'GDeleteWishListGroupVars')
          ..add('id', id))
        .toString();
  }
}

class GDeleteWishListGroupVarsBuilder
    implements
        Builder<GDeleteWishListGroupVars, GDeleteWishListGroupVarsBuilder> {
  _$GDeleteWishListGroupVars? _$v;

  int? _id;
  int? get id => _$this._id;
  set id(int? id) => _$this._id = id;

  GDeleteWishListGroupVarsBuilder();

  GDeleteWishListGroupVarsBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _id = $v.id;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GDeleteWishListGroupVars other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GDeleteWishListGroupVars;
  }

  @override
  void update(void Function(GDeleteWishListGroupVarsBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GDeleteWishListGroupVars build() => _build();

  _$GDeleteWishListGroupVars _build() {
    final _$result = _$v ??
        new _$GDeleteWishListGroupVars._(
            id: BuiltValueNullFieldError.checkNotNull(
                id, r'GDeleteWishListGroupVars', 'id'));
    replace(_$result);
    return _$result;
  }
}

class _$GUpdateWishListGroupVars extends GUpdateWishListGroupVars {
  @override
  final int? isPublic;
  @override
  final int id;

  factory _$GUpdateWishListGroupVars(
          [void Function(GUpdateWishListGroupVarsBuilder)? updates]) =>
      (new GUpdateWishListGroupVarsBuilder()..update(updates))._build();

  _$GUpdateWishListGroupVars._({this.isPublic, required this.id}) : super._() {
    BuiltValueNullFieldError.checkNotNull(
        id, r'GUpdateWishListGroupVars', 'id');
  }

  @override
  GUpdateWishListGroupVars rebuild(
          void Function(GUpdateWishListGroupVarsBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GUpdateWishListGroupVarsBuilder toBuilder() =>
      new GUpdateWishListGroupVarsBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GUpdateWishListGroupVars &&
        isPublic == other.isPublic &&
        id == other.id;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, isPublic.hashCode);
    _$hash = $jc(_$hash, id.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'GUpdateWishListGroupVars')
          ..add('isPublic', isPublic)
          ..add('id', id))
        .toString();
  }
}

class GUpdateWishListGroupVarsBuilder
    implements
        Builder<GUpdateWishListGroupVars, GUpdateWishListGroupVarsBuilder> {
  _$GUpdateWishListGroupVars? _$v;

  int? _isPublic;
  int? get isPublic => _$this._isPublic;
  set isPublic(int? isPublic) => _$this._isPublic = isPublic;

  int? _id;
  int? get id => _$this._id;
  set id(int? id) => _$this._id = id;

  GUpdateWishListGroupVarsBuilder();

  GUpdateWishListGroupVarsBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _isPublic = $v.isPublic;
      _id = $v.id;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GUpdateWishListGroupVars other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GUpdateWishListGroupVars;
  }

  @override
  void update(void Function(GUpdateWishListGroupVarsBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GUpdateWishListGroupVars build() => _build();

  _$GUpdateWishListGroupVars _build() {
    final _$result = _$v ??
        new _$GUpdateWishListGroupVars._(
            isPublic: isPublic,
            id: BuiltValueNullFieldError.checkNotNull(
                id, r'GUpdateWishListGroupVars', 'id'));
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
