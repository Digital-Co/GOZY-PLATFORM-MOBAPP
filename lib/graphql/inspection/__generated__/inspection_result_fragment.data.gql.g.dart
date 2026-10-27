// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'inspection_result_fragment.data.gql.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<GinspectionResultFragmentData>
    _$ginspectionResultFragmentDataSerializer =
    new _$GinspectionResultFragmentDataSerializer();
Serializer<GinspectionResultFragmentData_inspection>
    _$ginspectionResultFragmentDataInspectionSerializer =
    new _$GinspectionResultFragmentData_inspectionSerializer();
Serializer<GinspectionResultFragmentData_inspection_checklist>
    _$ginspectionResultFragmentDataInspectionChecklistSerializer =
    new _$GinspectionResultFragmentData_inspection_checklistSerializer();
Serializer<GinspectionResultFragmentData_inspection_photos>
    _$ginspectionResultFragmentDataInspectionPhotosSerializer =
    new _$GinspectionResultFragmentData_inspection_photosSerializer();

class _$GinspectionResultFragmentDataSerializer
    implements StructuredSerializer<GinspectionResultFragmentData> {
  @override
  final Iterable<Type> types = const [
    GinspectionResultFragmentData,
    _$GinspectionResultFragmentData
  ];
  @override
  final String wireName = 'GinspectionResultFragmentData';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, GinspectionResultFragmentData object,
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
    value = object.windowOpen;
    if (value != null) {
      result
        ..add('windowOpen')
        ..add(
            serializers.serialize(value, specifiedType: const FullType(bool)));
    }
    value = object.windowReason;
    if (value != null) {
      result
        ..add('windowReason')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.opensAt;
    if (value != null) {
      result
        ..add('opensAt')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.closesAt;
    if (value != null) {
      result
        ..add('closesAt')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.viewerRole;
    if (value != null) {
      result
        ..add('viewerRole')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.inspection;
    if (value != null) {
      result
        ..add('inspection')
        ..add(serializers.serialize(value,
            specifiedType:
                const FullType(GinspectionResultFragmentData_inspection)));
    }
    return result;
  }

  @override
  GinspectionResultFragmentData deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GinspectionResultFragmentDataBuilder();

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
        case 'windowOpen':
          result.windowOpen = serializers.deserialize(value,
              specifiedType: const FullType(bool)) as bool?;
          break;
        case 'windowReason':
          result.windowReason = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'opensAt':
          result.opensAt = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'closesAt':
          result.closesAt = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'viewerRole':
          result.viewerRole = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'inspection':
          result.inspection.replace(serializers.deserialize(value,
                  specifiedType:
                      const FullType(GinspectionResultFragmentData_inspection))!
              as GinspectionResultFragmentData_inspection);
          break;
      }
    }

    return result.build();
  }
}

class _$GinspectionResultFragmentData_inspectionSerializer
    implements StructuredSerializer<GinspectionResultFragmentData_inspection> {
  @override
  final Iterable<Type> types = const [
    GinspectionResultFragmentData_inspection,
    _$GinspectionResultFragmentData_inspection
  ];
  @override
  final String wireName = 'GinspectionResultFragmentData_inspection';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, GinspectionResultFragmentData_inspection object,
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
    value = object.reservationId;
    if (value != null) {
      result
        ..add('reservationId')
        ..add(serializers.serialize(value, specifiedType: const FullType(int)));
    }
    value = object.type;
    if (value != null) {
      result
        ..add('type')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.status;
    if (value != null) {
      result
        ..add('status')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.version;
    if (value != null) {
      result
        ..add('version')
        ..add(serializers.serialize(value, specifiedType: const FullType(int)));
    }
    value = object.authorId;
    if (value != null) {
      result
        ..add('authorId')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.authorRole;
    if (value != null) {
      result
        ..add('authorRole')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.generalState;
    if (value != null) {
      result
        ..add('generalState')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.mileage;
    if (value != null) {
      result
        ..add('mileage')
        ..add(serializers.serialize(value, specifiedType: const FullType(int)));
    }
    value = object.fuelLevel;
    if (value != null) {
      result
        ..add('fuelLevel')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.keysConfirmed;
    if (value != null) {
      result
        ..add('keysConfirmed')
        ..add(
            serializers.serialize(value, specifiedType: const FullType(bool)));
    }
    value = object.hasDamage;
    if (value != null) {
      result
        ..add('hasDamage')
        ..add(
            serializers.serialize(value, specifiedType: const FullType(bool)));
    }
    value = object.damageDescription;
    if (value != null) {
      result
        ..add('damageDescription')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.comment;
    if (value != null) {
      result
        ..add('comment')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.checklist;
    if (value != null) {
      result
        ..add('checklist')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(BuiltList, const [
              const FullType.nullable(
                  GinspectionResultFragmentData_inspection_checklist)
            ])));
    }
    value = object.hostValidatedAt;
    if (value != null) {
      result
        ..add('hostValidatedAt')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.guestValidatedAt;
    if (value != null) {
      result
        ..add('guestValidatedAt')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.contestedAt;
    if (value != null) {
      result
        ..add('contestedAt')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.lockedAt;
    if (value != null) {
      result
        ..add('lockedAt')
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
    value = object.updatedAt;
    if (value != null) {
      result
        ..add('updatedAt')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.photos;
    if (value != null) {
      result
        ..add('photos')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(BuiltList, const [
              const FullType.nullable(
                  GinspectionResultFragmentData_inspection_photos)
            ])));
    }
    value = object.viewerRole;
    if (value != null) {
      result
        ..add('viewerRole')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.windowOpen;
    if (value != null) {
      result
        ..add('windowOpen')
        ..add(
            serializers.serialize(value, specifiedType: const FullType(bool)));
    }
    value = object.windowReason;
    if (value != null) {
      result
        ..add('windowReason')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.canEdit;
    if (value != null) {
      result
        ..add('canEdit')
        ..add(
            serializers.serialize(value, specifiedType: const FullType(bool)));
    }
    value = object.canValidate;
    if (value != null) {
      result
        ..add('canValidate')
        ..add(
            serializers.serialize(value, specifiedType: const FullType(bool)));
    }
    value = object.canContest;
    if (value != null) {
      result
        ..add('canContest')
        ..add(
            serializers.serialize(value, specifiedType: const FullType(bool)));
    }
    return result;
  }

  @override
  GinspectionResultFragmentData_inspection deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GinspectionResultFragmentData_inspectionBuilder();

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
        case 'reservationId':
          result.reservationId = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int?;
          break;
        case 'type':
          result.type = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'status':
          result.status = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'version':
          result.version = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int?;
          break;
        case 'authorId':
          result.authorId = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'authorRole':
          result.authorRole = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'generalState':
          result.generalState = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'mileage':
          result.mileage = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int?;
          break;
        case 'fuelLevel':
          result.fuelLevel = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'keysConfirmed':
          result.keysConfirmed = serializers.deserialize(value,
              specifiedType: const FullType(bool)) as bool?;
          break;
        case 'hasDamage':
          result.hasDamage = serializers.deserialize(value,
              specifiedType: const FullType(bool)) as bool?;
          break;
        case 'damageDescription':
          result.damageDescription = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'comment':
          result.comment = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'checklist':
          result.checklist.replace(serializers.deserialize(value,
              specifiedType: const FullType(BuiltList, const [
                const FullType.nullable(
                    GinspectionResultFragmentData_inspection_checklist)
              ]))! as BuiltList<Object?>);
          break;
        case 'hostValidatedAt':
          result.hostValidatedAt = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'guestValidatedAt':
          result.guestValidatedAt = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'contestedAt':
          result.contestedAt = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'lockedAt':
          result.lockedAt = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'createdAt':
          result.createdAt = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'updatedAt':
          result.updatedAt = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'photos':
          result.photos.replace(serializers.deserialize(value,
              specifiedType: const FullType(BuiltList, const [
                const FullType.nullable(
                    GinspectionResultFragmentData_inspection_photos)
              ]))! as BuiltList<Object?>);
          break;
        case 'viewerRole':
          result.viewerRole = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'windowOpen':
          result.windowOpen = serializers.deserialize(value,
              specifiedType: const FullType(bool)) as bool?;
          break;
        case 'windowReason':
          result.windowReason = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'canEdit':
          result.canEdit = serializers.deserialize(value,
              specifiedType: const FullType(bool)) as bool?;
          break;
        case 'canValidate':
          result.canValidate = serializers.deserialize(value,
              specifiedType: const FullType(bool)) as bool?;
          break;
        case 'canContest':
          result.canContest = serializers.deserialize(value,
              specifiedType: const FullType(bool)) as bool?;
          break;
      }
    }

    return result.build();
  }
}

class _$GinspectionResultFragmentData_inspection_checklistSerializer
    implements
        StructuredSerializer<
            GinspectionResultFragmentData_inspection_checklist> {
  @override
  final Iterable<Type> types = const [
    GinspectionResultFragmentData_inspection_checklist,
    _$GinspectionResultFragmentData_inspection_checklist
  ];
  @override
  final String wireName = 'GinspectionResultFragmentData_inspection_checklist';

  @override
  Iterable<Object?> serialize(Serializers serializers,
      GinspectionResultFragmentData_inspection_checklist object,
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
    value = object.present;
    if (value != null) {
      result
        ..add('present')
        ..add(
            serializers.serialize(value, specifiedType: const FullType(bool)));
    }
    return result;
  }

  @override
  GinspectionResultFragmentData_inspection_checklist deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result =
        new GinspectionResultFragmentData_inspection_checklistBuilder();

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
        case 'present':
          result.present = serializers.deserialize(value,
              specifiedType: const FullType(bool)) as bool?;
          break;
      }
    }

    return result.build();
  }
}

class _$GinspectionResultFragmentData_inspection_photosSerializer
    implements
        StructuredSerializer<GinspectionResultFragmentData_inspection_photos> {
  @override
  final Iterable<Type> types = const [
    GinspectionResultFragmentData_inspection_photos,
    _$GinspectionResultFragmentData_inspection_photos
  ];
  @override
  final String wireName = 'GinspectionResultFragmentData_inspection_photos';

  @override
  Iterable<Object?> serialize(Serializers serializers,
      GinspectionResultFragmentData_inspection_photos object,
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
  GinspectionResultFragmentData_inspection_photos deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GinspectionResultFragmentData_inspection_photosBuilder();

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

class _$GinspectionResultFragmentData extends GinspectionResultFragmentData {
  @override
  final String G__typename;
  @override
  final int? status;
  @override
  final String? errorMessage;
  @override
  final bool? windowOpen;
  @override
  final String? windowReason;
  @override
  final String? opensAt;
  @override
  final String? closesAt;
  @override
  final String? viewerRole;
  @override
  final GinspectionResultFragmentData_inspection? inspection;

  factory _$GinspectionResultFragmentData(
          [void Function(GinspectionResultFragmentDataBuilder)? updates]) =>
      (new GinspectionResultFragmentDataBuilder()..update(updates))._build();

  _$GinspectionResultFragmentData._(
      {required this.G__typename,
      this.status,
      this.errorMessage,
      this.windowOpen,
      this.windowReason,
      this.opensAt,
      this.closesAt,
      this.viewerRole,
      this.inspection})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        G__typename, r'GinspectionResultFragmentData', 'G__typename');
  }

  @override
  GinspectionResultFragmentData rebuild(
          void Function(GinspectionResultFragmentDataBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GinspectionResultFragmentDataBuilder toBuilder() =>
      new GinspectionResultFragmentDataBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GinspectionResultFragmentData &&
        G__typename == other.G__typename &&
        status == other.status &&
        errorMessage == other.errorMessage &&
        windowOpen == other.windowOpen &&
        windowReason == other.windowReason &&
        opensAt == other.opensAt &&
        closesAt == other.closesAt &&
        viewerRole == other.viewerRole &&
        inspection == other.inspection;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, G__typename.hashCode);
    _$hash = $jc(_$hash, status.hashCode);
    _$hash = $jc(_$hash, errorMessage.hashCode);
    _$hash = $jc(_$hash, windowOpen.hashCode);
    _$hash = $jc(_$hash, windowReason.hashCode);
    _$hash = $jc(_$hash, opensAt.hashCode);
    _$hash = $jc(_$hash, closesAt.hashCode);
    _$hash = $jc(_$hash, viewerRole.hashCode);
    _$hash = $jc(_$hash, inspection.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'GinspectionResultFragmentData')
          ..add('G__typename', G__typename)
          ..add('status', status)
          ..add('errorMessage', errorMessage)
          ..add('windowOpen', windowOpen)
          ..add('windowReason', windowReason)
          ..add('opensAt', opensAt)
          ..add('closesAt', closesAt)
          ..add('viewerRole', viewerRole)
          ..add('inspection', inspection))
        .toString();
  }
}

class GinspectionResultFragmentDataBuilder
    implements
        Builder<GinspectionResultFragmentData,
            GinspectionResultFragmentDataBuilder> {
  _$GinspectionResultFragmentData? _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  int? _status;
  int? get status => _$this._status;
  set status(int? status) => _$this._status = status;

  String? _errorMessage;
  String? get errorMessage => _$this._errorMessage;
  set errorMessage(String? errorMessage) => _$this._errorMessage = errorMessage;

  bool? _windowOpen;
  bool? get windowOpen => _$this._windowOpen;
  set windowOpen(bool? windowOpen) => _$this._windowOpen = windowOpen;

  String? _windowReason;
  String? get windowReason => _$this._windowReason;
  set windowReason(String? windowReason) => _$this._windowReason = windowReason;

  String? _opensAt;
  String? get opensAt => _$this._opensAt;
  set opensAt(String? opensAt) => _$this._opensAt = opensAt;

  String? _closesAt;
  String? get closesAt => _$this._closesAt;
  set closesAt(String? closesAt) => _$this._closesAt = closesAt;

  String? _viewerRole;
  String? get viewerRole => _$this._viewerRole;
  set viewerRole(String? viewerRole) => _$this._viewerRole = viewerRole;

  GinspectionResultFragmentData_inspectionBuilder? _inspection;
  GinspectionResultFragmentData_inspectionBuilder get inspection =>
      _$this._inspection ??=
          new GinspectionResultFragmentData_inspectionBuilder();
  set inspection(GinspectionResultFragmentData_inspectionBuilder? inspection) =>
      _$this._inspection = inspection;

  GinspectionResultFragmentDataBuilder() {
    GinspectionResultFragmentData._initializeBuilder(this);
  }

  GinspectionResultFragmentDataBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _G__typename = $v.G__typename;
      _status = $v.status;
      _errorMessage = $v.errorMessage;
      _windowOpen = $v.windowOpen;
      _windowReason = $v.windowReason;
      _opensAt = $v.opensAt;
      _closesAt = $v.closesAt;
      _viewerRole = $v.viewerRole;
      _inspection = $v.inspection?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GinspectionResultFragmentData other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GinspectionResultFragmentData;
  }

  @override
  void update(void Function(GinspectionResultFragmentDataBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GinspectionResultFragmentData build() => _build();

  _$GinspectionResultFragmentData _build() {
    _$GinspectionResultFragmentData _$result;
    try {
      _$result = _$v ??
          new _$GinspectionResultFragmentData._(
              G__typename: BuiltValueNullFieldError.checkNotNull(
                  G__typename, r'GinspectionResultFragmentData', 'G__typename'),
              status: status,
              errorMessage: errorMessage,
              windowOpen: windowOpen,
              windowReason: windowReason,
              opensAt: opensAt,
              closesAt: closesAt,
              viewerRole: viewerRole,
              inspection: _inspection?.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'inspection';
        _inspection?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'GinspectionResultFragmentData', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

class _$GinspectionResultFragmentData_inspection
    extends GinspectionResultFragmentData_inspection {
  @override
  final String G__typename;
  @override
  final int? id;
  @override
  final int? reservationId;
  @override
  final String? type;
  @override
  final String? status;
  @override
  final int? version;
  @override
  final String? authorId;
  @override
  final String? authorRole;
  @override
  final String? generalState;
  @override
  final int? mileage;
  @override
  final String? fuelLevel;
  @override
  final bool? keysConfirmed;
  @override
  final bool? hasDamage;
  @override
  final String? damageDescription;
  @override
  final String? comment;
  @override
  final BuiltList<GinspectionResultFragmentData_inspection_checklist?>?
      checklist;
  @override
  final String? hostValidatedAt;
  @override
  final String? guestValidatedAt;
  @override
  final String? contestedAt;
  @override
  final String? lockedAt;
  @override
  final String? createdAt;
  @override
  final String? updatedAt;
  @override
  final BuiltList<GinspectionResultFragmentData_inspection_photos?>? photos;
  @override
  final String? viewerRole;
  @override
  final bool? windowOpen;
  @override
  final String? windowReason;
  @override
  final bool? canEdit;
  @override
  final bool? canValidate;
  @override
  final bool? canContest;

  factory _$GinspectionResultFragmentData_inspection(
          [void Function(GinspectionResultFragmentData_inspectionBuilder)?
              updates]) =>
      (new GinspectionResultFragmentData_inspectionBuilder()..update(updates))
          ._build();

  _$GinspectionResultFragmentData_inspection._(
      {required this.G__typename,
      this.id,
      this.reservationId,
      this.type,
      this.status,
      this.version,
      this.authorId,
      this.authorRole,
      this.generalState,
      this.mileage,
      this.fuelLevel,
      this.keysConfirmed,
      this.hasDamage,
      this.damageDescription,
      this.comment,
      this.checklist,
      this.hostValidatedAt,
      this.guestValidatedAt,
      this.contestedAt,
      this.lockedAt,
      this.createdAt,
      this.updatedAt,
      this.photos,
      this.viewerRole,
      this.windowOpen,
      this.windowReason,
      this.canEdit,
      this.canValidate,
      this.canContest})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(G__typename,
        r'GinspectionResultFragmentData_inspection', 'G__typename');
  }

  @override
  GinspectionResultFragmentData_inspection rebuild(
          void Function(GinspectionResultFragmentData_inspectionBuilder)
              updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GinspectionResultFragmentData_inspectionBuilder toBuilder() =>
      new GinspectionResultFragmentData_inspectionBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GinspectionResultFragmentData_inspection &&
        G__typename == other.G__typename &&
        id == other.id &&
        reservationId == other.reservationId &&
        type == other.type &&
        status == other.status &&
        version == other.version &&
        authorId == other.authorId &&
        authorRole == other.authorRole &&
        generalState == other.generalState &&
        mileage == other.mileage &&
        fuelLevel == other.fuelLevel &&
        keysConfirmed == other.keysConfirmed &&
        hasDamage == other.hasDamage &&
        damageDescription == other.damageDescription &&
        comment == other.comment &&
        checklist == other.checklist &&
        hostValidatedAt == other.hostValidatedAt &&
        guestValidatedAt == other.guestValidatedAt &&
        contestedAt == other.contestedAt &&
        lockedAt == other.lockedAt &&
        createdAt == other.createdAt &&
        updatedAt == other.updatedAt &&
        photos == other.photos &&
        viewerRole == other.viewerRole &&
        windowOpen == other.windowOpen &&
        windowReason == other.windowReason &&
        canEdit == other.canEdit &&
        canValidate == other.canValidate &&
        canContest == other.canContest;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, G__typename.hashCode);
    _$hash = $jc(_$hash, id.hashCode);
    _$hash = $jc(_$hash, reservationId.hashCode);
    _$hash = $jc(_$hash, type.hashCode);
    _$hash = $jc(_$hash, status.hashCode);
    _$hash = $jc(_$hash, version.hashCode);
    _$hash = $jc(_$hash, authorId.hashCode);
    _$hash = $jc(_$hash, authorRole.hashCode);
    _$hash = $jc(_$hash, generalState.hashCode);
    _$hash = $jc(_$hash, mileage.hashCode);
    _$hash = $jc(_$hash, fuelLevel.hashCode);
    _$hash = $jc(_$hash, keysConfirmed.hashCode);
    _$hash = $jc(_$hash, hasDamage.hashCode);
    _$hash = $jc(_$hash, damageDescription.hashCode);
    _$hash = $jc(_$hash, comment.hashCode);
    _$hash = $jc(_$hash, checklist.hashCode);
    _$hash = $jc(_$hash, hostValidatedAt.hashCode);
    _$hash = $jc(_$hash, guestValidatedAt.hashCode);
    _$hash = $jc(_$hash, contestedAt.hashCode);
    _$hash = $jc(_$hash, lockedAt.hashCode);
    _$hash = $jc(_$hash, createdAt.hashCode);
    _$hash = $jc(_$hash, updatedAt.hashCode);
    _$hash = $jc(_$hash, photos.hashCode);
    _$hash = $jc(_$hash, viewerRole.hashCode);
    _$hash = $jc(_$hash, windowOpen.hashCode);
    _$hash = $jc(_$hash, windowReason.hashCode);
    _$hash = $jc(_$hash, canEdit.hashCode);
    _$hash = $jc(_$hash, canValidate.hashCode);
    _$hash = $jc(_$hash, canContest.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(
            r'GinspectionResultFragmentData_inspection')
          ..add('G__typename', G__typename)
          ..add('id', id)
          ..add('reservationId', reservationId)
          ..add('type', type)
          ..add('status', status)
          ..add('version', version)
          ..add('authorId', authorId)
          ..add('authorRole', authorRole)
          ..add('generalState', generalState)
          ..add('mileage', mileage)
          ..add('fuelLevel', fuelLevel)
          ..add('keysConfirmed', keysConfirmed)
          ..add('hasDamage', hasDamage)
          ..add('damageDescription', damageDescription)
          ..add('comment', comment)
          ..add('checklist', checklist)
          ..add('hostValidatedAt', hostValidatedAt)
          ..add('guestValidatedAt', guestValidatedAt)
          ..add('contestedAt', contestedAt)
          ..add('lockedAt', lockedAt)
          ..add('createdAt', createdAt)
          ..add('updatedAt', updatedAt)
          ..add('photos', photos)
          ..add('viewerRole', viewerRole)
          ..add('windowOpen', windowOpen)
          ..add('windowReason', windowReason)
          ..add('canEdit', canEdit)
          ..add('canValidate', canValidate)
          ..add('canContest', canContest))
        .toString();
  }
}

class GinspectionResultFragmentData_inspectionBuilder
    implements
        Builder<GinspectionResultFragmentData_inspection,
            GinspectionResultFragmentData_inspectionBuilder> {
  _$GinspectionResultFragmentData_inspection? _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  int? _id;
  int? get id => _$this._id;
  set id(int? id) => _$this._id = id;

  int? _reservationId;
  int? get reservationId => _$this._reservationId;
  set reservationId(int? reservationId) =>
      _$this._reservationId = reservationId;

  String? _type;
  String? get type => _$this._type;
  set type(String? type) => _$this._type = type;

  String? _status;
  String? get status => _$this._status;
  set status(String? status) => _$this._status = status;

  int? _version;
  int? get version => _$this._version;
  set version(int? version) => _$this._version = version;

  String? _authorId;
  String? get authorId => _$this._authorId;
  set authorId(String? authorId) => _$this._authorId = authorId;

  String? _authorRole;
  String? get authorRole => _$this._authorRole;
  set authorRole(String? authorRole) => _$this._authorRole = authorRole;

  String? _generalState;
  String? get generalState => _$this._generalState;
  set generalState(String? generalState) => _$this._generalState = generalState;

  int? _mileage;
  int? get mileage => _$this._mileage;
  set mileage(int? mileage) => _$this._mileage = mileage;

  String? _fuelLevel;
  String? get fuelLevel => _$this._fuelLevel;
  set fuelLevel(String? fuelLevel) => _$this._fuelLevel = fuelLevel;

  bool? _keysConfirmed;
  bool? get keysConfirmed => _$this._keysConfirmed;
  set keysConfirmed(bool? keysConfirmed) =>
      _$this._keysConfirmed = keysConfirmed;

  bool? _hasDamage;
  bool? get hasDamage => _$this._hasDamage;
  set hasDamage(bool? hasDamage) => _$this._hasDamage = hasDamage;

  String? _damageDescription;
  String? get damageDescription => _$this._damageDescription;
  set damageDescription(String? damageDescription) =>
      _$this._damageDescription = damageDescription;

  String? _comment;
  String? get comment => _$this._comment;
  set comment(String? comment) => _$this._comment = comment;

  ListBuilder<GinspectionResultFragmentData_inspection_checklist?>? _checklist;
  ListBuilder<GinspectionResultFragmentData_inspection_checklist?>
      get checklist => _$this._checklist ??= new ListBuilder<
          GinspectionResultFragmentData_inspection_checklist?>();
  set checklist(
          ListBuilder<GinspectionResultFragmentData_inspection_checklist?>?
              checklist) =>
      _$this._checklist = checklist;

  String? _hostValidatedAt;
  String? get hostValidatedAt => _$this._hostValidatedAt;
  set hostValidatedAt(String? hostValidatedAt) =>
      _$this._hostValidatedAt = hostValidatedAt;

  String? _guestValidatedAt;
  String? get guestValidatedAt => _$this._guestValidatedAt;
  set guestValidatedAt(String? guestValidatedAt) =>
      _$this._guestValidatedAt = guestValidatedAt;

  String? _contestedAt;
  String? get contestedAt => _$this._contestedAt;
  set contestedAt(String? contestedAt) => _$this._contestedAt = contestedAt;

  String? _lockedAt;
  String? get lockedAt => _$this._lockedAt;
  set lockedAt(String? lockedAt) => _$this._lockedAt = lockedAt;

  String? _createdAt;
  String? get createdAt => _$this._createdAt;
  set createdAt(String? createdAt) => _$this._createdAt = createdAt;

  String? _updatedAt;
  String? get updatedAt => _$this._updatedAt;
  set updatedAt(String? updatedAt) => _$this._updatedAt = updatedAt;

  ListBuilder<GinspectionResultFragmentData_inspection_photos?>? _photos;
  ListBuilder<GinspectionResultFragmentData_inspection_photos?> get photos =>
      _$this._photos ??=
          new ListBuilder<GinspectionResultFragmentData_inspection_photos?>();
  set photos(
          ListBuilder<GinspectionResultFragmentData_inspection_photos?>?
              photos) =>
      _$this._photos = photos;

  String? _viewerRole;
  String? get viewerRole => _$this._viewerRole;
  set viewerRole(String? viewerRole) => _$this._viewerRole = viewerRole;

  bool? _windowOpen;
  bool? get windowOpen => _$this._windowOpen;
  set windowOpen(bool? windowOpen) => _$this._windowOpen = windowOpen;

  String? _windowReason;
  String? get windowReason => _$this._windowReason;
  set windowReason(String? windowReason) => _$this._windowReason = windowReason;

  bool? _canEdit;
  bool? get canEdit => _$this._canEdit;
  set canEdit(bool? canEdit) => _$this._canEdit = canEdit;

  bool? _canValidate;
  bool? get canValidate => _$this._canValidate;
  set canValidate(bool? canValidate) => _$this._canValidate = canValidate;

  bool? _canContest;
  bool? get canContest => _$this._canContest;
  set canContest(bool? canContest) => _$this._canContest = canContest;

  GinspectionResultFragmentData_inspectionBuilder() {
    GinspectionResultFragmentData_inspection._initializeBuilder(this);
  }

  GinspectionResultFragmentData_inspectionBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _G__typename = $v.G__typename;
      _id = $v.id;
      _reservationId = $v.reservationId;
      _type = $v.type;
      _status = $v.status;
      _version = $v.version;
      _authorId = $v.authorId;
      _authorRole = $v.authorRole;
      _generalState = $v.generalState;
      _mileage = $v.mileage;
      _fuelLevel = $v.fuelLevel;
      _keysConfirmed = $v.keysConfirmed;
      _hasDamage = $v.hasDamage;
      _damageDescription = $v.damageDescription;
      _comment = $v.comment;
      _checklist = $v.checklist?.toBuilder();
      _hostValidatedAt = $v.hostValidatedAt;
      _guestValidatedAt = $v.guestValidatedAt;
      _contestedAt = $v.contestedAt;
      _lockedAt = $v.lockedAt;
      _createdAt = $v.createdAt;
      _updatedAt = $v.updatedAt;
      _photos = $v.photos?.toBuilder();
      _viewerRole = $v.viewerRole;
      _windowOpen = $v.windowOpen;
      _windowReason = $v.windowReason;
      _canEdit = $v.canEdit;
      _canValidate = $v.canValidate;
      _canContest = $v.canContest;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GinspectionResultFragmentData_inspection other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GinspectionResultFragmentData_inspection;
  }

  @override
  void update(
      void Function(GinspectionResultFragmentData_inspectionBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GinspectionResultFragmentData_inspection build() => _build();

  _$GinspectionResultFragmentData_inspection _build() {
    _$GinspectionResultFragmentData_inspection _$result;
    try {
      _$result = _$v ??
          new _$GinspectionResultFragmentData_inspection._(
              G__typename: BuiltValueNullFieldError.checkNotNull(G__typename,
                  r'GinspectionResultFragmentData_inspection', 'G__typename'),
              id: id,
              reservationId: reservationId,
              type: type,
              status: status,
              version: version,
              authorId: authorId,
              authorRole: authorRole,
              generalState: generalState,
              mileage: mileage,
              fuelLevel: fuelLevel,
              keysConfirmed: keysConfirmed,
              hasDamage: hasDamage,
              damageDescription: damageDescription,
              comment: comment,
              checklist: _checklist?.build(),
              hostValidatedAt: hostValidatedAt,
              guestValidatedAt: guestValidatedAt,
              contestedAt: contestedAt,
              lockedAt: lockedAt,
              createdAt: createdAt,
              updatedAt: updatedAt,
              photos: _photos?.build(),
              viewerRole: viewerRole,
              windowOpen: windowOpen,
              windowReason: windowReason,
              canEdit: canEdit,
              canValidate: canValidate,
              canContest: canContest);
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'checklist';
        _checklist?.build();

        _$failedField = 'photos';
        _photos?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'GinspectionResultFragmentData_inspection',
            _$failedField,
            e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

class _$GinspectionResultFragmentData_inspection_checklist
    extends GinspectionResultFragmentData_inspection_checklist {
  @override
  final String G__typename;
  @override
  final String? key;
  @override
  final bool? present;

  factory _$GinspectionResultFragmentData_inspection_checklist(
          [void Function(
                  GinspectionResultFragmentData_inspection_checklistBuilder)?
              updates]) =>
      (new GinspectionResultFragmentData_inspection_checklistBuilder()
            ..update(updates))
          ._build();

  _$GinspectionResultFragmentData_inspection_checklist._(
      {required this.G__typename, this.key, this.present})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(G__typename,
        r'GinspectionResultFragmentData_inspection_checklist', 'G__typename');
  }

  @override
  GinspectionResultFragmentData_inspection_checklist rebuild(
          void Function(
                  GinspectionResultFragmentData_inspection_checklistBuilder)
              updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GinspectionResultFragmentData_inspection_checklistBuilder toBuilder() =>
      new GinspectionResultFragmentData_inspection_checklistBuilder()
        ..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GinspectionResultFragmentData_inspection_checklist &&
        G__typename == other.G__typename &&
        key == other.key &&
        present == other.present;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, G__typename.hashCode);
    _$hash = $jc(_$hash, key.hashCode);
    _$hash = $jc(_$hash, present.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(
            r'GinspectionResultFragmentData_inspection_checklist')
          ..add('G__typename', G__typename)
          ..add('key', key)
          ..add('present', present))
        .toString();
  }
}

class GinspectionResultFragmentData_inspection_checklistBuilder
    implements
        Builder<GinspectionResultFragmentData_inspection_checklist,
            GinspectionResultFragmentData_inspection_checklistBuilder> {
  _$GinspectionResultFragmentData_inspection_checklist? _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  String? _key;
  String? get key => _$this._key;
  set key(String? key) => _$this._key = key;

  bool? _present;
  bool? get present => _$this._present;
  set present(bool? present) => _$this._present = present;

  GinspectionResultFragmentData_inspection_checklistBuilder() {
    GinspectionResultFragmentData_inspection_checklist._initializeBuilder(this);
  }

  GinspectionResultFragmentData_inspection_checklistBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _G__typename = $v.G__typename;
      _key = $v.key;
      _present = $v.present;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GinspectionResultFragmentData_inspection_checklist other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GinspectionResultFragmentData_inspection_checklist;
  }

  @override
  void update(
      void Function(GinspectionResultFragmentData_inspection_checklistBuilder)?
          updates) {
    if (updates != null) updates(this);
  }

  @override
  GinspectionResultFragmentData_inspection_checklist build() => _build();

  _$GinspectionResultFragmentData_inspection_checklist _build() {
    final _$result = _$v ??
        new _$GinspectionResultFragmentData_inspection_checklist._(
            G__typename: BuiltValueNullFieldError.checkNotNull(
                G__typename,
                r'GinspectionResultFragmentData_inspection_checklist',
                'G__typename'),
            key: key,
            present: present);
    replace(_$result);
    return _$result;
  }
}

class _$GinspectionResultFragmentData_inspection_photos
    extends GinspectionResultFragmentData_inspection_photos {
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

  factory _$GinspectionResultFragmentData_inspection_photos(
          [void Function(
                  GinspectionResultFragmentData_inspection_photosBuilder)?
              updates]) =>
      (new GinspectionResultFragmentData_inspection_photosBuilder()
            ..update(updates))
          ._build();

  _$GinspectionResultFragmentData_inspection_photos._(
      {required this.G__typename,
      this.id,
      this.kind,
      this.position,
      this.uploadedBy,
      this.createdAt})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(G__typename,
        r'GinspectionResultFragmentData_inspection_photos', 'G__typename');
  }

  @override
  GinspectionResultFragmentData_inspection_photos rebuild(
          void Function(GinspectionResultFragmentData_inspection_photosBuilder)
              updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GinspectionResultFragmentData_inspection_photosBuilder toBuilder() =>
      new GinspectionResultFragmentData_inspection_photosBuilder()
        ..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GinspectionResultFragmentData_inspection_photos &&
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
    return (newBuiltValueToStringHelper(
            r'GinspectionResultFragmentData_inspection_photos')
          ..add('G__typename', G__typename)
          ..add('id', id)
          ..add('kind', kind)
          ..add('position', position)
          ..add('uploadedBy', uploadedBy)
          ..add('createdAt', createdAt))
        .toString();
  }
}

class GinspectionResultFragmentData_inspection_photosBuilder
    implements
        Builder<GinspectionResultFragmentData_inspection_photos,
            GinspectionResultFragmentData_inspection_photosBuilder> {
  _$GinspectionResultFragmentData_inspection_photos? _$v;

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

  GinspectionResultFragmentData_inspection_photosBuilder() {
    GinspectionResultFragmentData_inspection_photos._initializeBuilder(this);
  }

  GinspectionResultFragmentData_inspection_photosBuilder get _$this {
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
  void replace(GinspectionResultFragmentData_inspection_photos other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GinspectionResultFragmentData_inspection_photos;
  }

  @override
  void update(
      void Function(GinspectionResultFragmentData_inspection_photosBuilder)?
          updates) {
    if (updates != null) updates(this);
  }

  @override
  GinspectionResultFragmentData_inspection_photos build() => _build();

  _$GinspectionResultFragmentData_inspection_photos _build() {
    final _$result = _$v ??
        new _$GinspectionResultFragmentData_inspection_photos._(
            G__typename: BuiltValueNullFieldError.checkNotNull(
                G__typename,
                r'GinspectionResultFragmentData_inspection_photos',
                'G__typename'),
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
