// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'static_page_content.data.gql.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<GgetStaticPageContentData> _$ggetStaticPageContentDataSerializer =
    new _$GgetStaticPageContentDataSerializer();
Serializer<GgetStaticPageContentData_getStaticPageContent>
    _$ggetStaticPageContentDataGetStaticPageContentSerializer =
    new _$GgetStaticPageContentData_getStaticPageContentSerializer();
Serializer<GgetStaticPageContentData_getStaticPageContent_result>
    _$ggetStaticPageContentDataGetStaticPageContentResultSerializer =
    new _$GgetStaticPageContentData_getStaticPageContent_resultSerializer();

class _$GgetStaticPageContentDataSerializer
    implements StructuredSerializer<GgetStaticPageContentData> {
  @override
  final Iterable<Type> types = const [
    GgetStaticPageContentData,
    _$GgetStaticPageContentData
  ];
  @override
  final String wireName = 'GgetStaticPageContentData';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, GgetStaticPageContentData object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      '__typename',
      serializers.serialize(object.G__typename,
          specifiedType: const FullType(String)),
    ];
    Object? value;
    value = object.getStaticPageContent;
    if (value != null) {
      result
        ..add('getStaticPageContent')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(
                GgetStaticPageContentData_getStaticPageContent)));
    }
    return result;
  }

  @override
  GgetStaticPageContentData deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GgetStaticPageContentDataBuilder();

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
        case 'getStaticPageContent':
          result.getStaticPageContent.replace(serializers.deserialize(value,
                  specifiedType: const FullType(
                      GgetStaticPageContentData_getStaticPageContent))!
              as GgetStaticPageContentData_getStaticPageContent);
          break;
      }
    }

    return result.build();
  }
}

class _$GgetStaticPageContentData_getStaticPageContentSerializer
    implements
        StructuredSerializer<GgetStaticPageContentData_getStaticPageContent> {
  @override
  final Iterable<Type> types = const [
    GgetStaticPageContentData_getStaticPageContent,
    _$GgetStaticPageContentData_getStaticPageContent
  ];
  @override
  final String wireName = 'GgetStaticPageContentData_getStaticPageContent';

  @override
  Iterable<Object?> serialize(Serializers serializers,
      GgetStaticPageContentData_getStaticPageContent object,
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
    value = object.result;
    if (value != null) {
      result
        ..add('result')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(
                GgetStaticPageContentData_getStaticPageContent_result)));
    }
    return result;
  }

  @override
  GgetStaticPageContentData_getStaticPageContent deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GgetStaticPageContentData_getStaticPageContentBuilder();

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
        case 'result':
          result.result.replace(serializers.deserialize(value,
                  specifiedType: const FullType(
                      GgetStaticPageContentData_getStaticPageContent_result))!
              as GgetStaticPageContentData_getStaticPageContent_result);
          break;
      }
    }

    return result.build();
  }
}

class _$GgetStaticPageContentData_getStaticPageContent_resultSerializer
    implements
        StructuredSerializer<
            GgetStaticPageContentData_getStaticPageContent_result> {
  @override
  final Iterable<Type> types = const [
    GgetStaticPageContentData_getStaticPageContent_result,
    _$GgetStaticPageContentData_getStaticPageContent_result
  ];
  @override
  final String wireName =
      'GgetStaticPageContentData_getStaticPageContent_result';

  @override
  Iterable<Object?> serialize(Serializers serializers,
      GgetStaticPageContentData_getStaticPageContent_result object,
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
    value = object.pageName;
    if (value != null) {
      result
        ..add('pageName')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.metaTitle;
    if (value != null) {
      result
        ..add('metaTitle')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.metaDescription;
    if (value != null) {
      result
        ..add('metaDescription')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.content;
    if (value != null) {
      result
        ..add('content')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.createdAt;
    if (value != null) {
      result
        ..add('createdAt')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    return result;
  }

  @override
  GgetStaticPageContentData_getStaticPageContent_result deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result =
        new GgetStaticPageContentData_getStaticPageContent_resultBuilder();

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
        case 'pageName':
          result.pageName = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'metaTitle':
          result.metaTitle = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'metaDescription':
          result.metaDescription = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'content':
          result.content = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'createdAt':
          result.createdAt = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
      }
    }

    return result.build();
  }
}

class _$GgetStaticPageContentData extends GgetStaticPageContentData {
  @override
  final String G__typename;
  @override
  final GgetStaticPageContentData_getStaticPageContent? getStaticPageContent;

  factory _$GgetStaticPageContentData(
          [void Function(GgetStaticPageContentDataBuilder)? updates]) =>
      (new GgetStaticPageContentDataBuilder()..update(updates))._build();

  _$GgetStaticPageContentData._(
      {required this.G__typename, this.getStaticPageContent})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        G__typename, r'GgetStaticPageContentData', 'G__typename');
  }

  @override
  GgetStaticPageContentData rebuild(
          void Function(GgetStaticPageContentDataBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GgetStaticPageContentDataBuilder toBuilder() =>
      new GgetStaticPageContentDataBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GgetStaticPageContentData &&
        G__typename == other.G__typename &&
        getStaticPageContent == other.getStaticPageContent;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, G__typename.hashCode);
    _$hash = $jc(_$hash, getStaticPageContent.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'GgetStaticPageContentData')
          ..add('G__typename', G__typename)
          ..add('getStaticPageContent', getStaticPageContent))
        .toString();
  }
}

class GgetStaticPageContentDataBuilder
    implements
        Builder<GgetStaticPageContentData, GgetStaticPageContentDataBuilder> {
  _$GgetStaticPageContentData? _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  GgetStaticPageContentData_getStaticPageContentBuilder? _getStaticPageContent;
  GgetStaticPageContentData_getStaticPageContentBuilder
      get getStaticPageContent => _$this._getStaticPageContent ??=
          new GgetStaticPageContentData_getStaticPageContentBuilder();
  set getStaticPageContent(
          GgetStaticPageContentData_getStaticPageContentBuilder?
              getStaticPageContent) =>
      _$this._getStaticPageContent = getStaticPageContent;

  GgetStaticPageContentDataBuilder() {
    GgetStaticPageContentData._initializeBuilder(this);
  }

  GgetStaticPageContentDataBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _G__typename = $v.G__typename;
      _getStaticPageContent = $v.getStaticPageContent?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GgetStaticPageContentData other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GgetStaticPageContentData;
  }

  @override
  void update(void Function(GgetStaticPageContentDataBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GgetStaticPageContentData build() => _build();

  _$GgetStaticPageContentData _build() {
    _$GgetStaticPageContentData _$result;
    try {
      _$result = _$v ??
          new _$GgetStaticPageContentData._(
              G__typename: BuiltValueNullFieldError.checkNotNull(
                  G__typename, r'GgetStaticPageContentData', 'G__typename'),
              getStaticPageContent: _getStaticPageContent?.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'getStaticPageContent';
        _getStaticPageContent?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'GgetStaticPageContentData', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

class _$GgetStaticPageContentData_getStaticPageContent
    extends GgetStaticPageContentData_getStaticPageContent {
  @override
  final String G__typename;
  @override
  final int? status;
  @override
  final String? errorMessage;
  @override
  final GgetStaticPageContentData_getStaticPageContent_result? result;

  factory _$GgetStaticPageContentData_getStaticPageContent(
          [void Function(GgetStaticPageContentData_getStaticPageContentBuilder)?
              updates]) =>
      (new GgetStaticPageContentData_getStaticPageContentBuilder()
            ..update(updates))
          ._build();

  _$GgetStaticPageContentData_getStaticPageContent._(
      {required this.G__typename, this.status, this.errorMessage, this.result})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(G__typename,
        r'GgetStaticPageContentData_getStaticPageContent', 'G__typename');
  }

  @override
  GgetStaticPageContentData_getStaticPageContent rebuild(
          void Function(GgetStaticPageContentData_getStaticPageContentBuilder)
              updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GgetStaticPageContentData_getStaticPageContentBuilder toBuilder() =>
      new GgetStaticPageContentData_getStaticPageContentBuilder()
        ..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GgetStaticPageContentData_getStaticPageContent &&
        G__typename == other.G__typename &&
        status == other.status &&
        errorMessage == other.errorMessage &&
        result == other.result;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, G__typename.hashCode);
    _$hash = $jc(_$hash, status.hashCode);
    _$hash = $jc(_$hash, errorMessage.hashCode);
    _$hash = $jc(_$hash, result.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(
            r'GgetStaticPageContentData_getStaticPageContent')
          ..add('G__typename', G__typename)
          ..add('status', status)
          ..add('errorMessage', errorMessage)
          ..add('result', result))
        .toString();
  }
}

class GgetStaticPageContentData_getStaticPageContentBuilder
    implements
        Builder<GgetStaticPageContentData_getStaticPageContent,
            GgetStaticPageContentData_getStaticPageContentBuilder> {
  _$GgetStaticPageContentData_getStaticPageContent? _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  int? _status;
  int? get status => _$this._status;
  set status(int? status) => _$this._status = status;

  String? _errorMessage;
  String? get errorMessage => _$this._errorMessage;
  set errorMessage(String? errorMessage) => _$this._errorMessage = errorMessage;

  GgetStaticPageContentData_getStaticPageContent_resultBuilder? _result;
  GgetStaticPageContentData_getStaticPageContent_resultBuilder get result =>
      _$this._result ??=
          new GgetStaticPageContentData_getStaticPageContent_resultBuilder();
  set result(
          GgetStaticPageContentData_getStaticPageContent_resultBuilder?
              result) =>
      _$this._result = result;

  GgetStaticPageContentData_getStaticPageContentBuilder() {
    GgetStaticPageContentData_getStaticPageContent._initializeBuilder(this);
  }

  GgetStaticPageContentData_getStaticPageContentBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _G__typename = $v.G__typename;
      _status = $v.status;
      _errorMessage = $v.errorMessage;
      _result = $v.result?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GgetStaticPageContentData_getStaticPageContent other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GgetStaticPageContentData_getStaticPageContent;
  }

  @override
  void update(
      void Function(GgetStaticPageContentData_getStaticPageContentBuilder)?
          updates) {
    if (updates != null) updates(this);
  }

  @override
  GgetStaticPageContentData_getStaticPageContent build() => _build();

  _$GgetStaticPageContentData_getStaticPageContent _build() {
    _$GgetStaticPageContentData_getStaticPageContent _$result;
    try {
      _$result = _$v ??
          new _$GgetStaticPageContentData_getStaticPageContent._(
              G__typename: BuiltValueNullFieldError.checkNotNull(
                  G__typename,
                  r'GgetStaticPageContentData_getStaticPageContent',
                  'G__typename'),
              status: status,
              errorMessage: errorMessage,
              result: _result?.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'result';
        _result?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'GgetStaticPageContentData_getStaticPageContent',
            _$failedField,
            e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

class _$GgetStaticPageContentData_getStaticPageContent_result
    extends GgetStaticPageContentData_getStaticPageContent_result {
  @override
  final String G__typename;
  @override
  final int? id;
  @override
  final String? pageName;
  @override
  final String? metaTitle;
  @override
  final String? metaDescription;
  @override
  final String? content;
  @override
  final String? createdAt;

  factory _$GgetStaticPageContentData_getStaticPageContent_result(
          [void Function(
                  GgetStaticPageContentData_getStaticPageContent_resultBuilder)?
              updates]) =>
      (new GgetStaticPageContentData_getStaticPageContent_resultBuilder()
            ..update(updates))
          ._build();

  _$GgetStaticPageContentData_getStaticPageContent_result._(
      {required this.G__typename,
      this.id,
      this.pageName,
      this.metaTitle,
      this.metaDescription,
      this.content,
      this.createdAt})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        G__typename,
        r'GgetStaticPageContentData_getStaticPageContent_result',
        'G__typename');
  }

  @override
  GgetStaticPageContentData_getStaticPageContent_result rebuild(
          void Function(
                  GgetStaticPageContentData_getStaticPageContent_resultBuilder)
              updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GgetStaticPageContentData_getStaticPageContent_resultBuilder toBuilder() =>
      new GgetStaticPageContentData_getStaticPageContent_resultBuilder()
        ..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GgetStaticPageContentData_getStaticPageContent_result &&
        G__typename == other.G__typename &&
        id == other.id &&
        pageName == other.pageName &&
        metaTitle == other.metaTitle &&
        metaDescription == other.metaDescription &&
        content == other.content &&
        createdAt == other.createdAt;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, G__typename.hashCode);
    _$hash = $jc(_$hash, id.hashCode);
    _$hash = $jc(_$hash, pageName.hashCode);
    _$hash = $jc(_$hash, metaTitle.hashCode);
    _$hash = $jc(_$hash, metaDescription.hashCode);
    _$hash = $jc(_$hash, content.hashCode);
    _$hash = $jc(_$hash, createdAt.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(
            r'GgetStaticPageContentData_getStaticPageContent_result')
          ..add('G__typename', G__typename)
          ..add('id', id)
          ..add('pageName', pageName)
          ..add('metaTitle', metaTitle)
          ..add('metaDescription', metaDescription)
          ..add('content', content)
          ..add('createdAt', createdAt))
        .toString();
  }
}

class GgetStaticPageContentData_getStaticPageContent_resultBuilder
    implements
        Builder<GgetStaticPageContentData_getStaticPageContent_result,
            GgetStaticPageContentData_getStaticPageContent_resultBuilder> {
  _$GgetStaticPageContentData_getStaticPageContent_result? _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  int? _id;
  int? get id => _$this._id;
  set id(int? id) => _$this._id = id;

  String? _pageName;
  String? get pageName => _$this._pageName;
  set pageName(String? pageName) => _$this._pageName = pageName;

  String? _metaTitle;
  String? get metaTitle => _$this._metaTitle;
  set metaTitle(String? metaTitle) => _$this._metaTitle = metaTitle;

  String? _metaDescription;
  String? get metaDescription => _$this._metaDescription;
  set metaDescription(String? metaDescription) =>
      _$this._metaDescription = metaDescription;

  String? _content;
  String? get content => _$this._content;
  set content(String? content) => _$this._content = content;

  String? _createdAt;
  String? get createdAt => _$this._createdAt;
  set createdAt(String? createdAt) => _$this._createdAt = createdAt;

  GgetStaticPageContentData_getStaticPageContent_resultBuilder() {
    GgetStaticPageContentData_getStaticPageContent_result._initializeBuilder(
        this);
  }

  GgetStaticPageContentData_getStaticPageContent_resultBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _G__typename = $v.G__typename;
      _id = $v.id;
      _pageName = $v.pageName;
      _metaTitle = $v.metaTitle;
      _metaDescription = $v.metaDescription;
      _content = $v.content;
      _createdAt = $v.createdAt;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GgetStaticPageContentData_getStaticPageContent_result other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GgetStaticPageContentData_getStaticPageContent_result;
  }

  @override
  void update(
      void Function(
              GgetStaticPageContentData_getStaticPageContent_resultBuilder)?
          updates) {
    if (updates != null) updates(this);
  }

  @override
  GgetStaticPageContentData_getStaticPageContent_result build() => _build();

  _$GgetStaticPageContentData_getStaticPageContent_result _build() {
    final _$result = _$v ??
        new _$GgetStaticPageContentData_getStaticPageContent_result._(
            G__typename: BuiltValueNullFieldError.checkNotNull(
                G__typename,
                r'GgetStaticPageContentData_getStaticPageContent_result',
                'G__typename'),
            id: id,
            pageName: pageName,
            metaTitle: metaTitle,
            metaDescription: metaDescription,
            content: content,
            createdAt: createdAt);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
