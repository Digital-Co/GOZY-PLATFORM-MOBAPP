// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'documentList.var.gql.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<GShowDocumentListVars> _$gShowDocumentListVarsSerializer =
    new _$GShowDocumentListVarsSerializer();
Serializer<GRemoveDocumentsVars> _$gRemoveDocumentsVarsSerializer =
    new _$GRemoveDocumentsVarsSerializer();

class _$GShowDocumentListVarsSerializer
    implements StructuredSerializer<GShowDocumentListVars> {
  @override
  final Iterable<Type> types = const [
    GShowDocumentListVars,
    _$GShowDocumentListVars
  ];
  @override
  final String wireName = 'GShowDocumentListVars';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, GShowDocumentListVars object,
      {FullType specifiedType = FullType.unspecified}) {
    return <Object?>[];
  }

  @override
  GShowDocumentListVars deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    return new GShowDocumentListVarsBuilder().build();
  }
}

class _$GRemoveDocumentsVarsSerializer
    implements StructuredSerializer<GRemoveDocumentsVars> {
  @override
  final Iterable<Type> types = const [
    GRemoveDocumentsVars,
    _$GRemoveDocumentsVars
  ];
  @override
  final String wireName = 'GRemoveDocumentsVars';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, GRemoveDocumentsVars object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[];
    Object? value;
    value = object.fileName;
    if (value != null) {
      result
        ..add('fileName')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    return result;
  }

  @override
  GRemoveDocumentsVars deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GRemoveDocumentsVarsBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'fileName':
          result.fileName = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
      }
    }

    return result.build();
  }
}

class _$GShowDocumentListVars extends GShowDocumentListVars {
  factory _$GShowDocumentListVars(
          [void Function(GShowDocumentListVarsBuilder)? updates]) =>
      (new GShowDocumentListVarsBuilder()..update(updates))._build();

  _$GShowDocumentListVars._() : super._();

  @override
  GShowDocumentListVars rebuild(
          void Function(GShowDocumentListVarsBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GShowDocumentListVarsBuilder toBuilder() =>
      new GShowDocumentListVarsBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GShowDocumentListVars;
  }

  @override
  int get hashCode {
    return 930067688;
  }

  @override
  String toString() {
    return newBuiltValueToStringHelper(r'GShowDocumentListVars').toString();
  }
}

class GShowDocumentListVarsBuilder
    implements Builder<GShowDocumentListVars, GShowDocumentListVarsBuilder> {
  _$GShowDocumentListVars? _$v;

  GShowDocumentListVarsBuilder();

  @override
  void replace(GShowDocumentListVars other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GShowDocumentListVars;
  }

  @override
  void update(void Function(GShowDocumentListVarsBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GShowDocumentListVars build() => _build();

  _$GShowDocumentListVars _build() {
    final _$result = _$v ?? new _$GShowDocumentListVars._();
    replace(_$result);
    return _$result;
  }
}

class _$GRemoveDocumentsVars extends GRemoveDocumentsVars {
  @override
  final String? fileName;

  factory _$GRemoveDocumentsVars(
          [void Function(GRemoveDocumentsVarsBuilder)? updates]) =>
      (new GRemoveDocumentsVarsBuilder()..update(updates))._build();

  _$GRemoveDocumentsVars._({this.fileName}) : super._();

  @override
  GRemoveDocumentsVars rebuild(
          void Function(GRemoveDocumentsVarsBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GRemoveDocumentsVarsBuilder toBuilder() =>
      new GRemoveDocumentsVarsBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GRemoveDocumentsVars && fileName == other.fileName;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, fileName.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'GRemoveDocumentsVars')
          ..add('fileName', fileName))
        .toString();
  }
}

class GRemoveDocumentsVarsBuilder
    implements Builder<GRemoveDocumentsVars, GRemoveDocumentsVarsBuilder> {
  _$GRemoveDocumentsVars? _$v;

  String? _fileName;
  String? get fileName => _$this._fileName;
  set fileName(String? fileName) => _$this._fileName = fileName;

  GRemoveDocumentsVarsBuilder();

  GRemoveDocumentsVarsBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _fileName = $v.fileName;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GRemoveDocumentsVars other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GRemoveDocumentsVars;
  }

  @override
  void update(void Function(GRemoveDocumentsVarsBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GRemoveDocumentsVars build() => _build();

  _$GRemoveDocumentsVars _build() {
    final _$result = _$v ?? new _$GRemoveDocumentsVars._(fileName: fileName);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
