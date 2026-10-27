// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'inspection_photo_fragment.data.gql.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<GinspectionPhotoFragmentData>
    _$ginspectionPhotoFragmentDataSerializer =
    new _$GinspectionPhotoFragmentDataSerializer();

class _$GinspectionPhotoFragmentDataSerializer
    implements StructuredSerializer<GinspectionPhotoFragmentData> {
  @override
  final Iterable<Type> types = const [
    GinspectionPhotoFragmentData,
    _$GinspectionPhotoFragmentData
  ];
  @override
  final String wireName = 'GinspectionPhotoFragmentData';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, GinspectionPhotoFragmentData object,
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
    value = object.kind;
    if (value != null) {
      result
        ..add('kind')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.position;
    if (value != null) {
      result
        ..add('position')
        ..add(serializers.serialize(value, specifiedType: const FullType(int)));
    }
    value = object.uploadedBy;
    if (value != null) {
      result
        ..add('uploadedBy')
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
  GinspectionPhotoFragmentData deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GinspectionPhotoFragmentDataBuilder();

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
        case 'kind':
          result.kind = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'position':
          result.position = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int?;
          break;
        case 'uploadedBy':
          result.uploadedBy = serializers.deserialize(value,
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

class _$GinspectionPhotoFragmentData extends GinspectionPhotoFragmentData {
  @override
  final String G__typename;
  @override
  final int? id;
  @override
  final String? kind;
  @override
  final int? position;
  @override
  final String? uploadedBy;
  @override
  final String? createdAt;

  factory _$GinspectionPhotoFragmentData(
          [void Function(GinspectionPhotoFragmentDataBuilder)? updates]) =>
      (new GinspectionPhotoFragmentDataBuilder()..update(updates))._build();

  _$GinspectionPhotoFragmentData._(
      {required this.G__typename,
      this.id,
      this.kind,
      this.position,
      this.uploadedBy,
      this.createdAt})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        G__typename, r'GinspectionPhotoFragmentData', 'G__typename');
  }

  @override
  GinspectionPhotoFragmentData rebuild(
          void Function(GinspectionPhotoFragmentDataBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GinspectionPhotoFragmentDataBuilder toBuilder() =>
      new GinspectionPhotoFragmentDataBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GinspectionPhotoFragmentData &&
        G__typename == other.G__typename &&
        id == other.id &&
        kind == other.kind &&
        position == other.position &&
        uploadedBy == other.uploadedBy &&
        createdAt == other.createdAt;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, G__typename.hashCode);
    _$hash = $jc(_$hash, id.hashCode);
    _$hash = $jc(_$hash, kind.hashCode);
    _$hash = $jc(_$hash, position.hashCode);
    _$hash = $jc(_$hash, uploadedBy.hashCode);
    _$hash = $jc(_$hash, createdAt.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'GinspectionPhotoFragmentData')
          ..add('G__typename', G__typename)
          ..add('id', id)
          ..add('kind', kind)
          ..add('position', position)
          ..add('uploadedBy', uploadedBy)
          ..add('createdAt', createdAt))
        .toString();
  }
}

class GinspectionPhotoFragmentDataBuilder
    implements
        Builder<GinspectionPhotoFragmentData,
            GinspectionPhotoFragmentDataBuilder> {
  _$GinspectionPhotoFragmentData? _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  int? _id;
  int? get id => _$this._id;
  set id(int? id) => _$this._id = id;

  String? _kind;
  String? get kind => _$this._kind;
  set kind(String? kind) => _$this._kind = kind;

  int? _position;
  int? get position => _$this._position;
  set position(int? position) => _$this._position = position;

  String? _uploadedBy;
  String? get uploadedBy => _$this._uploadedBy;
  set uploadedBy(String? uploadedBy) => _$this._uploadedBy = uploadedBy;

  String? _createdAt;
  String? get createdAt => _$this._createdAt;
  set createdAt(String? createdAt) => _$this._createdAt = createdAt;

  GinspectionPhotoFragmentDataBuilder() {
    GinspectionPhotoFragmentData._initializeBuilder(this);
  }

  GinspectionPhotoFragmentDataBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _G__typename = $v.G__typename;
      _id = $v.id;
      _kind = $v.kind;
      _position = $v.position;
      _uploadedBy = $v.uploadedBy;
      _createdAt = $v.createdAt;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GinspectionPhotoFragmentData other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GinspectionPhotoFragmentData;
  }

  @override
  void update(void Function(GinspectionPhotoFragmentDataBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GinspectionPhotoFragmentData build() => _build();

  _$GinspectionPhotoFragmentData _build() {
    final _$result = _$v ??
        new _$GinspectionPhotoFragmentData._(
            G__typename: BuiltValueNullFieldError.checkNotNull(
                G__typename, r'GinspectionPhotoFragmentData', 'G__typename'),
            id: id,
            kind: kind,
            position: position,
            uploadedBy: uploadedBy,
            createdAt: createdAt);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
