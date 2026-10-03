// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'documentList.data.gql.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<GShowDocumentListData> _$gShowDocumentListDataSerializer =
    new _$GShowDocumentListDataSerializer();
Serializer<GShowDocumentListData_showDocumentList>
    _$gShowDocumentListDataShowDocumentListSerializer =
    new _$GShowDocumentListData_showDocumentListSerializer();
Serializer<GShowDocumentListData_showDocumentList_results>
    _$gShowDocumentListDataShowDocumentListResultsSerializer =
    new _$GShowDocumentListData_showDocumentList_resultsSerializer();
Serializer<GRemoveDocumentsData> _$gRemoveDocumentsDataSerializer =
    new _$GRemoveDocumentsDataSerializer();
Serializer<GRemoveDocumentsData_removeDocuments>
    _$gRemoveDocumentsDataRemoveDocumentsSerializer =
    new _$GRemoveDocumentsData_removeDocumentsSerializer();

class _$GShowDocumentListDataSerializer
    implements StructuredSerializer<GShowDocumentListData> {
  @override
  final Iterable<Type> types = const [
    GShowDocumentListData,
    _$GShowDocumentListData
  ];
  @override
  final String wireName = 'GShowDocumentListData';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, GShowDocumentListData object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      '__typename',
      serializers.serialize(object.G__typename,
          specifiedType: const FullType(String)),
    ];
    Object? value;
    value = object.showDocumentList;
    if (value != null) {
      result
        ..add('showDocumentList')
        ..add(serializers.serialize(value,
            specifiedType:
                const FullType(GShowDocumentListData_showDocumentList)));
    }
    return result;
  }

  @override
  GShowDocumentListData deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GShowDocumentListDataBuilder();

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
        case 'showDocumentList':
          result.showDocumentList.replace(serializers.deserialize(value,
                  specifiedType:
                      const FullType(GShowDocumentListData_showDocumentList))!
              as GShowDocumentListData_showDocumentList);
          break;
      }
    }

    return result.build();
  }
}

class _$GShowDocumentListData_showDocumentListSerializer
    implements StructuredSerializer<GShowDocumentListData_showDocumentList> {
  @override
  final Iterable<Type> types = const [
    GShowDocumentListData_showDocumentList,
    _$GShowDocumentListData_showDocumentList
  ];
  @override
  final String wireName = 'GShowDocumentListData_showDocumentList';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, GShowDocumentListData_showDocumentList object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      '__typename',
      serializers.serialize(object.G__typename,
          specifiedType: const FullType(String)),
    ];
    Object? value;
    value = object.results;
    if (value != null) {
      result
        ..add('results')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(BuiltList, const [
              const FullType.nullable(
                  GShowDocumentListData_showDocumentList_results)
            ])));
    }
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
    return result;
  }

  @override
  GShowDocumentListData_showDocumentList deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GShowDocumentListData_showDocumentListBuilder();

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
        case 'results':
          result.results.replace(serializers.deserialize(value,
              specifiedType: const FullType(BuiltList, const [
                const FullType.nullable(
                    GShowDocumentListData_showDocumentList_results)
              ]))! as BuiltList<Object?>);
          break;
        case 'status':
          result.status = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int?;
          break;
        case 'errorMessage':
          result.errorMessage = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
      }
    }

    return result.build();
  }
}

class _$GShowDocumentListData_showDocumentList_resultsSerializer
    implements
        StructuredSerializer<GShowDocumentListData_showDocumentList_results> {
  @override
  final Iterable<Type> types = const [
    GShowDocumentListData_showDocumentList_results,
    _$GShowDocumentListData_showDocumentList_results
  ];
  @override
  final String wireName = 'GShowDocumentListData_showDocumentList_results';

  @override
  Iterable<Object?> serialize(Serializers serializers,
      GShowDocumentListData_showDocumentList_results object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      '__typename',
      serializers.serialize(object.G__typename,
          specifiedType: const FullType(String)),
      'userId',
      serializers.serialize(object.userId,
          specifiedType: const FullType(String)),
    ];
    Object? value;
    value = object.id;
    if (value != null) {
      result
        ..add('id')
        ..add(serializers.serialize(value, specifiedType: const FullType(int)));
    }
    value = object.fileName;
    if (value != null) {
      result
        ..add('fileName')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.fileType;
    if (value != null) {
      result
        ..add('fileType')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.documentStatus;
    if (value != null) {
      result
        ..add('documentStatus')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    return result;
  }

  @override
  GShowDocumentListData_showDocumentList_results deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GShowDocumentListData_showDocumentList_resultsBuilder();

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
        case 'userId':
          result.userId = serializers.deserialize(value,
              specifiedType: const FullType(String))! as String;
          break;
        case 'fileName':
          result.fileName = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'fileType':
          result.fileType = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'documentStatus':
          result.documentStatus = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
      }
    }

    return result.build();
  }
}

class _$GRemoveDocumentsDataSerializer
    implements StructuredSerializer<GRemoveDocumentsData> {
  @override
  final Iterable<Type> types = const [
    GRemoveDocumentsData,
    _$GRemoveDocumentsData
  ];
  @override
  final String wireName = 'GRemoveDocumentsData';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, GRemoveDocumentsData object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      '__typename',
      serializers.serialize(object.G__typename,
          specifiedType: const FullType(String)),
    ];
    Object? value;
    value = object.removeDocuments;
    if (value != null) {
      result
        ..add('removeDocuments')
        ..add(serializers.serialize(value,
            specifiedType:
                const FullType(GRemoveDocumentsData_removeDocuments)));
    }
    return result;
  }

  @override
  GRemoveDocumentsData deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GRemoveDocumentsDataBuilder();

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
        case 'removeDocuments':
          result.removeDocuments.replace(serializers.deserialize(value,
                  specifiedType:
                      const FullType(GRemoveDocumentsData_removeDocuments))!
              as GRemoveDocumentsData_removeDocuments);
          break;
      }
    }

    return result.build();
  }
}

class _$GRemoveDocumentsData_removeDocumentsSerializer
    implements StructuredSerializer<GRemoveDocumentsData_removeDocuments> {
  @override
  final Iterable<Type> types = const [
    GRemoveDocumentsData_removeDocuments,
    _$GRemoveDocumentsData_removeDocuments
  ];
  @override
  final String wireName = 'GRemoveDocumentsData_removeDocuments';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, GRemoveDocumentsData_removeDocuments object,
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
    return result;
  }

  @override
  GRemoveDocumentsData_removeDocuments deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GRemoveDocumentsData_removeDocumentsBuilder();

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
      }
    }

    return result.build();
  }
}

class _$GShowDocumentListData extends GShowDocumentListData {
  @override
  final String G__typename;
  @override
  final GShowDocumentListData_showDocumentList? showDocumentList;

  factory _$GShowDocumentListData(
          [void Function(GShowDocumentListDataBuilder)? updates]) =>
      (new GShowDocumentListDataBuilder()..update(updates))._build();

  _$GShowDocumentListData._({required this.G__typename, this.showDocumentList})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        G__typename, r'GShowDocumentListData', 'G__typename');
  }

  @override
  GShowDocumentListData rebuild(
          void Function(GShowDocumentListDataBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GShowDocumentListDataBuilder toBuilder() =>
      new GShowDocumentListDataBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GShowDocumentListData &&
        G__typename == other.G__typename &&
        showDocumentList == other.showDocumentList;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, G__typename.hashCode);
    _$hash = $jc(_$hash, showDocumentList.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'GShowDocumentListData')
          ..add('G__typename', G__typename)
          ..add('showDocumentList', showDocumentList))
        .toString();
  }
}

class GShowDocumentListDataBuilder
    implements Builder<GShowDocumentListData, GShowDocumentListDataBuilder> {
  _$GShowDocumentListData? _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  GShowDocumentListData_showDocumentListBuilder? _showDocumentList;
  GShowDocumentListData_showDocumentListBuilder get showDocumentList =>
      _$this._showDocumentList ??=
          new GShowDocumentListData_showDocumentListBuilder();
  set showDocumentList(
          GShowDocumentListData_showDocumentListBuilder? showDocumentList) =>
      _$this._showDocumentList = showDocumentList;

  GShowDocumentListDataBuilder() {
    GShowDocumentListData._initializeBuilder(this);
  }

  GShowDocumentListDataBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _G__typename = $v.G__typename;
      _showDocumentList = $v.showDocumentList?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GShowDocumentListData other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GShowDocumentListData;
  }

  @override
  void update(void Function(GShowDocumentListDataBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GShowDocumentListData build() => _build();

  _$GShowDocumentListData _build() {
    _$GShowDocumentListData _$result;
    try {
      _$result = _$v ??
          new _$GShowDocumentListData._(
              G__typename: BuiltValueNullFieldError.checkNotNull(
                  G__typename, r'GShowDocumentListData', 'G__typename'),
              showDocumentList: _showDocumentList?.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'showDocumentList';
        _showDocumentList?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'GShowDocumentListData', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

class _$GShowDocumentListData_showDocumentList
    extends GShowDocumentListData_showDocumentList {
  @override
  final String G__typename;
  @override
  final BuiltList<GShowDocumentListData_showDocumentList_results?>? results;
  @override
  final int? status;
  @override
  final String? errorMessage;

  factory _$GShowDocumentListData_showDocumentList(
          [void Function(GShowDocumentListData_showDocumentListBuilder)?
              updates]) =>
      (new GShowDocumentListData_showDocumentListBuilder()..update(updates))
          ._build();

  _$GShowDocumentListData_showDocumentList._(
      {required this.G__typename, this.results, this.status, this.errorMessage})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        G__typename, r'GShowDocumentListData_showDocumentList', 'G__typename');
  }

  @override
  GShowDocumentListData_showDocumentList rebuild(
          void Function(GShowDocumentListData_showDocumentListBuilder)
              updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GShowDocumentListData_showDocumentListBuilder toBuilder() =>
      new GShowDocumentListData_showDocumentListBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GShowDocumentListData_showDocumentList &&
        G__typename == other.G__typename &&
        results == other.results &&
        status == other.status &&
        errorMessage == other.errorMessage;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, G__typename.hashCode);
    _$hash = $jc(_$hash, results.hashCode);
    _$hash = $jc(_$hash, status.hashCode);
    _$hash = $jc(_$hash, errorMessage.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(
            r'GShowDocumentListData_showDocumentList')
          ..add('G__typename', G__typename)
          ..add('results', results)
          ..add('status', status)
          ..add('errorMessage', errorMessage))
        .toString();
  }
}

class GShowDocumentListData_showDocumentListBuilder
    implements
        Builder<GShowDocumentListData_showDocumentList,
            GShowDocumentListData_showDocumentListBuilder> {
  _$GShowDocumentListData_showDocumentList? _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  ListBuilder<GShowDocumentListData_showDocumentList_results?>? _results;
  ListBuilder<GShowDocumentListData_showDocumentList_results?> get results =>
      _$this._results ??=
          new ListBuilder<GShowDocumentListData_showDocumentList_results?>();
  set results(
          ListBuilder<GShowDocumentListData_showDocumentList_results?>?
              results) =>
      _$this._results = results;

  int? _status;
  int? get status => _$this._status;
  set status(int? status) => _$this._status = status;

  String? _errorMessage;
  String? get errorMessage => _$this._errorMessage;
  set errorMessage(String? errorMessage) => _$this._errorMessage = errorMessage;

  GShowDocumentListData_showDocumentListBuilder() {
    GShowDocumentListData_showDocumentList._initializeBuilder(this);
  }

  GShowDocumentListData_showDocumentListBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _G__typename = $v.G__typename;
      _results = $v.results?.toBuilder();
      _status = $v.status;
      _errorMessage = $v.errorMessage;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GShowDocumentListData_showDocumentList other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GShowDocumentListData_showDocumentList;
  }

  @override
  void update(
      void Function(GShowDocumentListData_showDocumentListBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GShowDocumentListData_showDocumentList build() => _build();

  _$GShowDocumentListData_showDocumentList _build() {
    _$GShowDocumentListData_showDocumentList _$result;
    try {
      _$result = _$v ??
          new _$GShowDocumentListData_showDocumentList._(
              G__typename: BuiltValueNullFieldError.checkNotNull(G__typename,
                  r'GShowDocumentListData_showDocumentList', 'G__typename'),
              results: _results?.build(),
              status: status,
              errorMessage: errorMessage);
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'results';
        _results?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'GShowDocumentListData_showDocumentList',
            _$failedField,
            e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

class _$GShowDocumentListData_showDocumentList_results
    extends GShowDocumentListData_showDocumentList_results {
  @override
  final String G__typename;
  @override
  final int? id;
  @override
  final String userId;
  @override
  final String? fileName;
  @override
  final String? fileType;
  @override
  final String? documentStatus;

  factory _$GShowDocumentListData_showDocumentList_results(
          [void Function(GShowDocumentListData_showDocumentList_resultsBuilder)?
              updates]) =>
      (new GShowDocumentListData_showDocumentList_resultsBuilder()
            ..update(updates))
          ._build();

  _$GShowDocumentListData_showDocumentList_results._(
      {required this.G__typename,
      this.id,
      required this.userId,
      this.fileName,
      this.fileType,
      this.documentStatus})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(G__typename,
        r'GShowDocumentListData_showDocumentList_results', 'G__typename');
    BuiltValueNullFieldError.checkNotNull(
        userId, r'GShowDocumentListData_showDocumentList_results', 'userId');
  }

  @override
  GShowDocumentListData_showDocumentList_results rebuild(
          void Function(GShowDocumentListData_showDocumentList_resultsBuilder)
              updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GShowDocumentListData_showDocumentList_resultsBuilder toBuilder() =>
      new GShowDocumentListData_showDocumentList_resultsBuilder()
        ..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GShowDocumentListData_showDocumentList_results &&
        G__typename == other.G__typename &&
        id == other.id &&
        userId == other.userId &&
        fileName == other.fileName &&
        fileType == other.fileType &&
        documentStatus == other.documentStatus;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, G__typename.hashCode);
    _$hash = $jc(_$hash, id.hashCode);
    _$hash = $jc(_$hash, userId.hashCode);
    _$hash = $jc(_$hash, fileName.hashCode);
    _$hash = $jc(_$hash, fileType.hashCode);
    _$hash = $jc(_$hash, documentStatus.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(
            r'GShowDocumentListData_showDocumentList_results')
          ..add('G__typename', G__typename)
          ..add('id', id)
          ..add('userId', userId)
          ..add('fileName', fileName)
          ..add('fileType', fileType)
          ..add('documentStatus', documentStatus))
        .toString();
  }
}

class GShowDocumentListData_showDocumentList_resultsBuilder
    implements
        Builder<GShowDocumentListData_showDocumentList_results,
            GShowDocumentListData_showDocumentList_resultsBuilder> {
  _$GShowDocumentListData_showDocumentList_results? _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  int? _id;
  int? get id => _$this._id;
  set id(int? id) => _$this._id = id;

  String? _userId;
  String? get userId => _$this._userId;
  set userId(String? userId) => _$this._userId = userId;

  String? _fileName;
  String? get fileName => _$this._fileName;
  set fileName(String? fileName) => _$this._fileName = fileName;

  String? _fileType;
  String? get fileType => _$this._fileType;
  set fileType(String? fileType) => _$this._fileType = fileType;

  String? _documentStatus;
  String? get documentStatus => _$this._documentStatus;
  set documentStatus(String? documentStatus) =>
      _$this._documentStatus = documentStatus;

  GShowDocumentListData_showDocumentList_resultsBuilder() {
    GShowDocumentListData_showDocumentList_results._initializeBuilder(this);
  }

  GShowDocumentListData_showDocumentList_resultsBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _G__typename = $v.G__typename;
      _id = $v.id;
      _userId = $v.userId;
      _fileName = $v.fileName;
      _fileType = $v.fileType;
      _documentStatus = $v.documentStatus;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GShowDocumentListData_showDocumentList_results other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GShowDocumentListData_showDocumentList_results;
  }

  @override
  void update(
      void Function(GShowDocumentListData_showDocumentList_resultsBuilder)?
          updates) {
    if (updates != null) updates(this);
  }

  @override
  GShowDocumentListData_showDocumentList_results build() => _build();

  _$GShowDocumentListData_showDocumentList_results _build() {
    final _$result = _$v ??
        new _$GShowDocumentListData_showDocumentList_results._(
            G__typename: BuiltValueNullFieldError.checkNotNull(
                G__typename,
                r'GShowDocumentListData_showDocumentList_results',
                'G__typename'),
            id: id,
            userId: BuiltValueNullFieldError.checkNotNull(userId,
                r'GShowDocumentListData_showDocumentList_results', 'userId'),
            fileName: fileName,
            fileType: fileType,
            documentStatus: documentStatus);
    replace(_$result);
    return _$result;
  }
}

class _$GRemoveDocumentsData extends GRemoveDocumentsData {
  @override
  final String G__typename;
  @override
  final GRemoveDocumentsData_removeDocuments? removeDocuments;

  factory _$GRemoveDocumentsData(
          [void Function(GRemoveDocumentsDataBuilder)? updates]) =>
      (new GRemoveDocumentsDataBuilder()..update(updates))._build();

  _$GRemoveDocumentsData._({required this.G__typename, this.removeDocuments})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        G__typename, r'GRemoveDocumentsData', 'G__typename');
  }

  @override
  GRemoveDocumentsData rebuild(
          void Function(GRemoveDocumentsDataBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GRemoveDocumentsDataBuilder toBuilder() =>
      new GRemoveDocumentsDataBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GRemoveDocumentsData &&
        G__typename == other.G__typename &&
        removeDocuments == other.removeDocuments;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, G__typename.hashCode);
    _$hash = $jc(_$hash, removeDocuments.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'GRemoveDocumentsData')
          ..add('G__typename', G__typename)
          ..add('removeDocuments', removeDocuments))
        .toString();
  }
}

class GRemoveDocumentsDataBuilder
    implements Builder<GRemoveDocumentsData, GRemoveDocumentsDataBuilder> {
  _$GRemoveDocumentsData? _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  GRemoveDocumentsData_removeDocumentsBuilder? _removeDocuments;
  GRemoveDocumentsData_removeDocumentsBuilder get removeDocuments =>
      _$this._removeDocuments ??=
          new GRemoveDocumentsData_removeDocumentsBuilder();
  set removeDocuments(
          GRemoveDocumentsData_removeDocumentsBuilder? removeDocuments) =>
      _$this._removeDocuments = removeDocuments;

  GRemoveDocumentsDataBuilder() {
    GRemoveDocumentsData._initializeBuilder(this);
  }

  GRemoveDocumentsDataBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _G__typename = $v.G__typename;
      _removeDocuments = $v.removeDocuments?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GRemoveDocumentsData other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GRemoveDocumentsData;
  }

  @override
  void update(void Function(GRemoveDocumentsDataBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GRemoveDocumentsData build() => _build();

  _$GRemoveDocumentsData _build() {
    _$GRemoveDocumentsData _$result;
    try {
      _$result = _$v ??
          new _$GRemoveDocumentsData._(
              G__typename: BuiltValueNullFieldError.checkNotNull(
                  G__typename, r'GRemoveDocumentsData', 'G__typename'),
              removeDocuments: _removeDocuments?.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'removeDocuments';
        _removeDocuments?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'GRemoveDocumentsData', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

class _$GRemoveDocumentsData_removeDocuments
    extends GRemoveDocumentsData_removeDocuments {
  @override
  final String G__typename;
  @override
  final int? status;
  @override
  final String? errorMessage;

  factory _$GRemoveDocumentsData_removeDocuments(
          [void Function(GRemoveDocumentsData_removeDocumentsBuilder)?
              updates]) =>
      (new GRemoveDocumentsData_removeDocumentsBuilder()..update(updates))
          ._build();

  _$GRemoveDocumentsData_removeDocuments._(
      {required this.G__typename, this.status, this.errorMessage})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        G__typename, r'GRemoveDocumentsData_removeDocuments', 'G__typename');
  }

  @override
  GRemoveDocumentsData_removeDocuments rebuild(
          void Function(GRemoveDocumentsData_removeDocumentsBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GRemoveDocumentsData_removeDocumentsBuilder toBuilder() =>
      new GRemoveDocumentsData_removeDocumentsBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GRemoveDocumentsData_removeDocuments &&
        G__typename == other.G__typename &&
        status == other.status &&
        errorMessage == other.errorMessage;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, G__typename.hashCode);
    _$hash = $jc(_$hash, status.hashCode);
    _$hash = $jc(_$hash, errorMessage.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'GRemoveDocumentsData_removeDocuments')
          ..add('G__typename', G__typename)
          ..add('status', status)
          ..add('errorMessage', errorMessage))
        .toString();
  }
}

class GRemoveDocumentsData_removeDocumentsBuilder
    implements
        Builder<GRemoveDocumentsData_removeDocuments,
            GRemoveDocumentsData_removeDocumentsBuilder> {
  _$GRemoveDocumentsData_removeDocuments? _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  int? _status;
  int? get status => _$this._status;
  set status(int? status) => _$this._status = status;

  String? _errorMessage;
  String? get errorMessage => _$this._errorMessage;
  set errorMessage(String? errorMessage) => _$this._errorMessage = errorMessage;

  GRemoveDocumentsData_removeDocumentsBuilder() {
    GRemoveDocumentsData_removeDocuments._initializeBuilder(this);
  }

  GRemoveDocumentsData_removeDocumentsBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _G__typename = $v.G__typename;
      _status = $v.status;
      _errorMessage = $v.errorMessage;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GRemoveDocumentsData_removeDocuments other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GRemoveDocumentsData_removeDocuments;
  }

  @override
  void update(
      void Function(GRemoveDocumentsData_removeDocumentsBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GRemoveDocumentsData_removeDocuments build() => _build();

  _$GRemoveDocumentsData_removeDocuments _build() {
    final _$result = _$v ??
        new _$GRemoveDocumentsData_removeDocuments._(
            G__typename: BuiltValueNullFieldError.checkNotNull(G__typename,
                r'GRemoveDocumentsData_removeDocuments', 'G__typename'),
            status: status,
            errorMessage: errorMessage);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
