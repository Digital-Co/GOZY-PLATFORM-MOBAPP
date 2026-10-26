// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'listing_option_fragment.req.gql.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<GlistingOptionFragmentReq> _$glistingOptionFragmentReqSerializer =
    new _$GlistingOptionFragmentReqSerializer();
Serializer<GbookingOptionLineFragmentReq>
    _$gbookingOptionLineFragmentReqSerializer =
    new _$GbookingOptionLineFragmentReqSerializer();
Serializer<GreservationOptionSnapshotFragmentReq>
    _$greservationOptionSnapshotFragmentReqSerializer =
    new _$GreservationOptionSnapshotFragmentReqSerializer();
Serializer<GlistingOptionsResultFragmentReq>
    _$glistingOptionsResultFragmentReqSerializer =
    new _$GlistingOptionsResultFragmentReqSerializer();

class _$GlistingOptionFragmentReqSerializer
    implements StructuredSerializer<GlistingOptionFragmentReq> {
  @override
  final Iterable<Type> types = const [
    GlistingOptionFragmentReq,
    _$GlistingOptionFragmentReq
  ];
  @override
  final String wireName = 'GlistingOptionFragmentReq';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, GlistingOptionFragmentReq object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      'vars',
      serializers.serialize(object.vars,
          specifiedType: const FullType(_i3.GlistingOptionFragmentVars)),
      'document',
      serializers.serialize(object.document,
          specifiedType: const FullType(_i5.DocumentNode)),
      'idFields',
      serializers.serialize(object.idFields,
          specifiedType: const FullType(
              Map, const [const FullType(String), const FullType(dynamic)])),
    ];
    Object? value;
    value = object.fragmentName;
    if (value != null) {
      result
        ..add('fragmentName')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    return result;
  }

  @override
  GlistingOptionFragmentReq deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GlistingOptionFragmentReqBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'vars':
          result.vars.replace(serializers.deserialize(value,
                  specifiedType:
                      const FullType(_i3.GlistingOptionFragmentVars))!
              as _i3.GlistingOptionFragmentVars);
          break;
        case 'document':
          result.document = serializers.deserialize(value,
                  specifiedType: const FullType(_i5.DocumentNode))!
              as _i5.DocumentNode;
          break;
        case 'fragmentName':
          result.fragmentName = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'idFields':
          result.idFields = serializers.deserialize(value,
              specifiedType: const FullType(Map, const [
                const FullType(String),
                const FullType(dynamic)
              ]))! as Map<String, dynamic>;
          break;
      }
    }

    return result.build();
  }
}

class _$GbookingOptionLineFragmentReqSerializer
    implements StructuredSerializer<GbookingOptionLineFragmentReq> {
  @override
  final Iterable<Type> types = const [
    GbookingOptionLineFragmentReq,
    _$GbookingOptionLineFragmentReq
  ];
  @override
  final String wireName = 'GbookingOptionLineFragmentReq';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, GbookingOptionLineFragmentReq object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      'vars',
      serializers.serialize(object.vars,
          specifiedType: const FullType(_i3.GbookingOptionLineFragmentVars)),
      'document',
      serializers.serialize(object.document,
          specifiedType: const FullType(_i5.DocumentNode)),
      'idFields',
      serializers.serialize(object.idFields,
          specifiedType: const FullType(
              Map, const [const FullType(String), const FullType(dynamic)])),
    ];
    Object? value;
    value = object.fragmentName;
    if (value != null) {
      result
        ..add('fragmentName')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    return result;
  }

  @override
  GbookingOptionLineFragmentReq deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GbookingOptionLineFragmentReqBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'vars':
          result.vars.replace(serializers.deserialize(value,
                  specifiedType:
                      const FullType(_i3.GbookingOptionLineFragmentVars))!
              as _i3.GbookingOptionLineFragmentVars);
          break;
        case 'document':
          result.document = serializers.deserialize(value,
                  specifiedType: const FullType(_i5.DocumentNode))!
              as _i5.DocumentNode;
          break;
        case 'fragmentName':
          result.fragmentName = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'idFields':
          result.idFields = serializers.deserialize(value,
              specifiedType: const FullType(Map, const [
                const FullType(String),
                const FullType(dynamic)
              ]))! as Map<String, dynamic>;
          break;
      }
    }

    return result.build();
  }
}

class _$GreservationOptionSnapshotFragmentReqSerializer
    implements StructuredSerializer<GreservationOptionSnapshotFragmentReq> {
  @override
  final Iterable<Type> types = const [
    GreservationOptionSnapshotFragmentReq,
    _$GreservationOptionSnapshotFragmentReq
  ];
  @override
  final String wireName = 'GreservationOptionSnapshotFragmentReq';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, GreservationOptionSnapshotFragmentReq object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      'vars',
      serializers.serialize(object.vars,
          specifiedType:
              const FullType(_i3.GreservationOptionSnapshotFragmentVars)),
      'document',
      serializers.serialize(object.document,
          specifiedType: const FullType(_i5.DocumentNode)),
      'idFields',
      serializers.serialize(object.idFields,
          specifiedType: const FullType(
              Map, const [const FullType(String), const FullType(dynamic)])),
    ];
    Object? value;
    value = object.fragmentName;
    if (value != null) {
      result
        ..add('fragmentName')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    return result;
  }

  @override
  GreservationOptionSnapshotFragmentReq deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GreservationOptionSnapshotFragmentReqBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'vars':
          result.vars.replace(serializers.deserialize(value,
                  specifiedType: const FullType(
                      _i3.GreservationOptionSnapshotFragmentVars))!
              as _i3.GreservationOptionSnapshotFragmentVars);
          break;
        case 'document':
          result.document = serializers.deserialize(value,
                  specifiedType: const FullType(_i5.DocumentNode))!
              as _i5.DocumentNode;
          break;
        case 'fragmentName':
          result.fragmentName = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'idFields':
          result.idFields = serializers.deserialize(value,
              specifiedType: const FullType(Map, const [
                const FullType(String),
                const FullType(dynamic)
              ]))! as Map<String, dynamic>;
          break;
      }
    }

    return result.build();
  }
}

class _$GlistingOptionsResultFragmentReqSerializer
    implements StructuredSerializer<GlistingOptionsResultFragmentReq> {
  @override
  final Iterable<Type> types = const [
    GlistingOptionsResultFragmentReq,
    _$GlistingOptionsResultFragmentReq
  ];
  @override
  final String wireName = 'GlistingOptionsResultFragmentReq';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, GlistingOptionsResultFragmentReq object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      'vars',
      serializers.serialize(object.vars,
          specifiedType: const FullType(_i3.GlistingOptionsResultFragmentVars)),
      'document',
      serializers.serialize(object.document,
          specifiedType: const FullType(_i5.DocumentNode)),
      'idFields',
      serializers.serialize(object.idFields,
          specifiedType: const FullType(
              Map, const [const FullType(String), const FullType(dynamic)])),
    ];
    Object? value;
    value = object.fragmentName;
    if (value != null) {
      result
        ..add('fragmentName')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    return result;
  }

  @override
  GlistingOptionsResultFragmentReq deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GlistingOptionsResultFragmentReqBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'vars':
          result.vars.replace(serializers.deserialize(value,
                  specifiedType:
                      const FullType(_i3.GlistingOptionsResultFragmentVars))!
              as _i3.GlistingOptionsResultFragmentVars);
          break;
        case 'document':
          result.document = serializers.deserialize(value,
                  specifiedType: const FullType(_i5.DocumentNode))!
              as _i5.DocumentNode;
          break;
        case 'fragmentName':
          result.fragmentName = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'idFields':
          result.idFields = serializers.deserialize(value,
              specifiedType: const FullType(Map, const [
                const FullType(String),
                const FullType(dynamic)
              ]))! as Map<String, dynamic>;
          break;
      }
    }

    return result.build();
  }
}

class _$GlistingOptionFragmentReq extends GlistingOptionFragmentReq {
  @override
  final _i3.GlistingOptionFragmentVars vars;
  @override
  final _i5.DocumentNode document;
  @override
  final String? fragmentName;
  @override
  final Map<String, dynamic> idFields;

  factory _$GlistingOptionFragmentReq(
          [void Function(GlistingOptionFragmentReqBuilder)? updates]) =>
      (new GlistingOptionFragmentReqBuilder()..update(updates))._build();

  _$GlistingOptionFragmentReq._(
      {required this.vars,
      required this.document,
      this.fragmentName,
      required this.idFields})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        vars, r'GlistingOptionFragmentReq', 'vars');
    BuiltValueNullFieldError.checkNotNull(
        document, r'GlistingOptionFragmentReq', 'document');
    BuiltValueNullFieldError.checkNotNull(
        idFields, r'GlistingOptionFragmentReq', 'idFields');
  }

  @override
  GlistingOptionFragmentReq rebuild(
          void Function(GlistingOptionFragmentReqBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GlistingOptionFragmentReqBuilder toBuilder() =>
      new GlistingOptionFragmentReqBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GlistingOptionFragmentReq &&
        vars == other.vars &&
        document == other.document &&
        fragmentName == other.fragmentName &&
        idFields == other.idFields;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, vars.hashCode);
    _$hash = $jc(_$hash, document.hashCode);
    _$hash = $jc(_$hash, fragmentName.hashCode);
    _$hash = $jc(_$hash, idFields.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'GlistingOptionFragmentReq')
          ..add('vars', vars)
          ..add('document', document)
          ..add('fragmentName', fragmentName)
          ..add('idFields', idFields))
        .toString();
  }
}

class GlistingOptionFragmentReqBuilder
    implements
        Builder<GlistingOptionFragmentReq, GlistingOptionFragmentReqBuilder> {
  _$GlistingOptionFragmentReq? _$v;

  _i3.GlistingOptionFragmentVarsBuilder? _vars;
  _i3.GlistingOptionFragmentVarsBuilder get vars =>
      _$this._vars ??= new _i3.GlistingOptionFragmentVarsBuilder();
  set vars(_i3.GlistingOptionFragmentVarsBuilder? vars) => _$this._vars = vars;

  _i5.DocumentNode? _document;
  _i5.DocumentNode? get document => _$this._document;
  set document(_i5.DocumentNode? document) => _$this._document = document;

  String? _fragmentName;
  String? get fragmentName => _$this._fragmentName;
  set fragmentName(String? fragmentName) => _$this._fragmentName = fragmentName;

  Map<String, dynamic>? _idFields;
  Map<String, dynamic>? get idFields => _$this._idFields;
  set idFields(Map<String, dynamic>? idFields) => _$this._idFields = idFields;

  GlistingOptionFragmentReqBuilder() {
    GlistingOptionFragmentReq._initializeBuilder(this);
  }

  GlistingOptionFragmentReqBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _vars = $v.vars.toBuilder();
      _document = $v.document;
      _fragmentName = $v.fragmentName;
      _idFields = $v.idFields;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GlistingOptionFragmentReq other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GlistingOptionFragmentReq;
  }

  @override
  void update(void Function(GlistingOptionFragmentReqBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GlistingOptionFragmentReq build() => _build();

  _$GlistingOptionFragmentReq _build() {
    _$GlistingOptionFragmentReq _$result;
    try {
      _$result = _$v ??
          new _$GlistingOptionFragmentReq._(
              vars: vars.build(),
              document: BuiltValueNullFieldError.checkNotNull(
                  document, r'GlistingOptionFragmentReq', 'document'),
              fragmentName: fragmentName,
              idFields: BuiltValueNullFieldError.checkNotNull(
                  idFields, r'GlistingOptionFragmentReq', 'idFields'));
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'vars';
        vars.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'GlistingOptionFragmentReq', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

class _$GbookingOptionLineFragmentReq extends GbookingOptionLineFragmentReq {
  @override
  final _i3.GbookingOptionLineFragmentVars vars;
  @override
  final _i5.DocumentNode document;
  @override
  final String? fragmentName;
  @override
  final Map<String, dynamic> idFields;

  factory _$GbookingOptionLineFragmentReq(
          [void Function(GbookingOptionLineFragmentReqBuilder)? updates]) =>
      (new GbookingOptionLineFragmentReqBuilder()..update(updates))._build();

  _$GbookingOptionLineFragmentReq._(
      {required this.vars,
      required this.document,
      this.fragmentName,
      required this.idFields})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        vars, r'GbookingOptionLineFragmentReq', 'vars');
    BuiltValueNullFieldError.checkNotNull(
        document, r'GbookingOptionLineFragmentReq', 'document');
    BuiltValueNullFieldError.checkNotNull(
        idFields, r'GbookingOptionLineFragmentReq', 'idFields');
  }

  @override
  GbookingOptionLineFragmentReq rebuild(
          void Function(GbookingOptionLineFragmentReqBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GbookingOptionLineFragmentReqBuilder toBuilder() =>
      new GbookingOptionLineFragmentReqBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GbookingOptionLineFragmentReq &&
        vars == other.vars &&
        document == other.document &&
        fragmentName == other.fragmentName &&
        idFields == other.idFields;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, vars.hashCode);
    _$hash = $jc(_$hash, document.hashCode);
    _$hash = $jc(_$hash, fragmentName.hashCode);
    _$hash = $jc(_$hash, idFields.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'GbookingOptionLineFragmentReq')
          ..add('vars', vars)
          ..add('document', document)
          ..add('fragmentName', fragmentName)
          ..add('idFields', idFields))
        .toString();
  }
}

class GbookingOptionLineFragmentReqBuilder
    implements
        Builder<GbookingOptionLineFragmentReq,
            GbookingOptionLineFragmentReqBuilder> {
  _$GbookingOptionLineFragmentReq? _$v;

  _i3.GbookingOptionLineFragmentVarsBuilder? _vars;
  _i3.GbookingOptionLineFragmentVarsBuilder get vars =>
      _$this._vars ??= new _i3.GbookingOptionLineFragmentVarsBuilder();
  set vars(_i3.GbookingOptionLineFragmentVarsBuilder? vars) =>
      _$this._vars = vars;

  _i5.DocumentNode? _document;
  _i5.DocumentNode? get document => _$this._document;
  set document(_i5.DocumentNode? document) => _$this._document = document;

  String? _fragmentName;
  String? get fragmentName => _$this._fragmentName;
  set fragmentName(String? fragmentName) => _$this._fragmentName = fragmentName;

  Map<String, dynamic>? _idFields;
  Map<String, dynamic>? get idFields => _$this._idFields;
  set idFields(Map<String, dynamic>? idFields) => _$this._idFields = idFields;

  GbookingOptionLineFragmentReqBuilder() {
    GbookingOptionLineFragmentReq._initializeBuilder(this);
  }

  GbookingOptionLineFragmentReqBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _vars = $v.vars.toBuilder();
      _document = $v.document;
      _fragmentName = $v.fragmentName;
      _idFields = $v.idFields;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GbookingOptionLineFragmentReq other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GbookingOptionLineFragmentReq;
  }

  @override
  void update(void Function(GbookingOptionLineFragmentReqBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GbookingOptionLineFragmentReq build() => _build();

  _$GbookingOptionLineFragmentReq _build() {
    _$GbookingOptionLineFragmentReq _$result;
    try {
      _$result = _$v ??
          new _$GbookingOptionLineFragmentReq._(
              vars: vars.build(),
              document: BuiltValueNullFieldError.checkNotNull(
                  document, r'GbookingOptionLineFragmentReq', 'document'),
              fragmentName: fragmentName,
              idFields: BuiltValueNullFieldError.checkNotNull(
                  idFields, r'GbookingOptionLineFragmentReq', 'idFields'));
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'vars';
        vars.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'GbookingOptionLineFragmentReq', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

class _$GreservationOptionSnapshotFragmentReq
    extends GreservationOptionSnapshotFragmentReq {
  @override
  final _i3.GreservationOptionSnapshotFragmentVars vars;
  @override
  final _i5.DocumentNode document;
  @override
  final String? fragmentName;
  @override
  final Map<String, dynamic> idFields;

  factory _$GreservationOptionSnapshotFragmentReq(
          [void Function(GreservationOptionSnapshotFragmentReqBuilder)?
              updates]) =>
      (new GreservationOptionSnapshotFragmentReqBuilder()..update(updates))
          ._build();

  _$GreservationOptionSnapshotFragmentReq._(
      {required this.vars,
      required this.document,
      this.fragmentName,
      required this.idFields})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        vars, r'GreservationOptionSnapshotFragmentReq', 'vars');
    BuiltValueNullFieldError.checkNotNull(
        document, r'GreservationOptionSnapshotFragmentReq', 'document');
    BuiltValueNullFieldError.checkNotNull(
        idFields, r'GreservationOptionSnapshotFragmentReq', 'idFields');
  }

  @override
  GreservationOptionSnapshotFragmentReq rebuild(
          void Function(GreservationOptionSnapshotFragmentReqBuilder)
              updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GreservationOptionSnapshotFragmentReqBuilder toBuilder() =>
      new GreservationOptionSnapshotFragmentReqBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GreservationOptionSnapshotFragmentReq &&
        vars == other.vars &&
        document == other.document &&
        fragmentName == other.fragmentName &&
        idFields == other.idFields;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, vars.hashCode);
    _$hash = $jc(_$hash, document.hashCode);
    _$hash = $jc(_$hash, fragmentName.hashCode);
    _$hash = $jc(_$hash, idFields.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(
            r'GreservationOptionSnapshotFragmentReq')
          ..add('vars', vars)
          ..add('document', document)
          ..add('fragmentName', fragmentName)
          ..add('idFields', idFields))
        .toString();
  }
}

class GreservationOptionSnapshotFragmentReqBuilder
    implements
        Builder<GreservationOptionSnapshotFragmentReq,
            GreservationOptionSnapshotFragmentReqBuilder> {
  _$GreservationOptionSnapshotFragmentReq? _$v;

  _i3.GreservationOptionSnapshotFragmentVarsBuilder? _vars;
  _i3.GreservationOptionSnapshotFragmentVarsBuilder get vars =>
      _$this._vars ??= new _i3.GreservationOptionSnapshotFragmentVarsBuilder();
  set vars(_i3.GreservationOptionSnapshotFragmentVarsBuilder? vars) =>
      _$this._vars = vars;

  _i5.DocumentNode? _document;
  _i5.DocumentNode? get document => _$this._document;
  set document(_i5.DocumentNode? document) => _$this._document = document;

  String? _fragmentName;
  String? get fragmentName => _$this._fragmentName;
  set fragmentName(String? fragmentName) => _$this._fragmentName = fragmentName;

  Map<String, dynamic>? _idFields;
  Map<String, dynamic>? get idFields => _$this._idFields;
  set idFields(Map<String, dynamic>? idFields) => _$this._idFields = idFields;

  GreservationOptionSnapshotFragmentReqBuilder() {
    GreservationOptionSnapshotFragmentReq._initializeBuilder(this);
  }

  GreservationOptionSnapshotFragmentReqBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _vars = $v.vars.toBuilder();
      _document = $v.document;
      _fragmentName = $v.fragmentName;
      _idFields = $v.idFields;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GreservationOptionSnapshotFragmentReq other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GreservationOptionSnapshotFragmentReq;
  }

  @override
  void update(
      void Function(GreservationOptionSnapshotFragmentReqBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GreservationOptionSnapshotFragmentReq build() => _build();

  _$GreservationOptionSnapshotFragmentReq _build() {
    _$GreservationOptionSnapshotFragmentReq _$result;
    try {
      _$result = _$v ??
          new _$GreservationOptionSnapshotFragmentReq._(
              vars: vars.build(),
              document: BuiltValueNullFieldError.checkNotNull(document,
                  r'GreservationOptionSnapshotFragmentReq', 'document'),
              fragmentName: fragmentName,
              idFields: BuiltValueNullFieldError.checkNotNull(idFields,
                  r'GreservationOptionSnapshotFragmentReq', 'idFields'));
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'vars';
        vars.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'GreservationOptionSnapshotFragmentReq',
            _$failedField,
            e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

class _$GlistingOptionsResultFragmentReq
    extends GlistingOptionsResultFragmentReq {
  @override
  final _i3.GlistingOptionsResultFragmentVars vars;
  @override
  final _i5.DocumentNode document;
  @override
  final String? fragmentName;
  @override
  final Map<String, dynamic> idFields;

  factory _$GlistingOptionsResultFragmentReq(
          [void Function(GlistingOptionsResultFragmentReqBuilder)? updates]) =>
      (new GlistingOptionsResultFragmentReqBuilder()..update(updates))._build();

  _$GlistingOptionsResultFragmentReq._(
      {required this.vars,
      required this.document,
      this.fragmentName,
      required this.idFields})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        vars, r'GlistingOptionsResultFragmentReq', 'vars');
    BuiltValueNullFieldError.checkNotNull(
        document, r'GlistingOptionsResultFragmentReq', 'document');
    BuiltValueNullFieldError.checkNotNull(
        idFields, r'GlistingOptionsResultFragmentReq', 'idFields');
  }

  @override
  GlistingOptionsResultFragmentReq rebuild(
          void Function(GlistingOptionsResultFragmentReqBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GlistingOptionsResultFragmentReqBuilder toBuilder() =>
      new GlistingOptionsResultFragmentReqBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GlistingOptionsResultFragmentReq &&
        vars == other.vars &&
        document == other.document &&
        fragmentName == other.fragmentName &&
        idFields == other.idFields;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, vars.hashCode);
    _$hash = $jc(_$hash, document.hashCode);
    _$hash = $jc(_$hash, fragmentName.hashCode);
    _$hash = $jc(_$hash, idFields.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'GlistingOptionsResultFragmentReq')
          ..add('vars', vars)
          ..add('document', document)
          ..add('fragmentName', fragmentName)
          ..add('idFields', idFields))
        .toString();
  }
}

class GlistingOptionsResultFragmentReqBuilder
    implements
        Builder<GlistingOptionsResultFragmentReq,
            GlistingOptionsResultFragmentReqBuilder> {
  _$GlistingOptionsResultFragmentReq? _$v;

  _i3.GlistingOptionsResultFragmentVarsBuilder? _vars;
  _i3.GlistingOptionsResultFragmentVarsBuilder get vars =>
      _$this._vars ??= new _i3.GlistingOptionsResultFragmentVarsBuilder();
  set vars(_i3.GlistingOptionsResultFragmentVarsBuilder? vars) =>
      _$this._vars = vars;

  _i5.DocumentNode? _document;
  _i5.DocumentNode? get document => _$this._document;
  set document(_i5.DocumentNode? document) => _$this._document = document;

  String? _fragmentName;
  String? get fragmentName => _$this._fragmentName;
  set fragmentName(String? fragmentName) => _$this._fragmentName = fragmentName;

  Map<String, dynamic>? _idFields;
  Map<String, dynamic>? get idFields => _$this._idFields;
  set idFields(Map<String, dynamic>? idFields) => _$this._idFields = idFields;

  GlistingOptionsResultFragmentReqBuilder() {
    GlistingOptionsResultFragmentReq._initializeBuilder(this);
  }

  GlistingOptionsResultFragmentReqBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _vars = $v.vars.toBuilder();
      _document = $v.document;
      _fragmentName = $v.fragmentName;
      _idFields = $v.idFields;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GlistingOptionsResultFragmentReq other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GlistingOptionsResultFragmentReq;
  }

  @override
  void update(void Function(GlistingOptionsResultFragmentReqBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GlistingOptionsResultFragmentReq build() => _build();

  _$GlistingOptionsResultFragmentReq _build() {
    _$GlistingOptionsResultFragmentReq _$result;
    try {
      _$result = _$v ??
          new _$GlistingOptionsResultFragmentReq._(
              vars: vars.build(),
              document: BuiltValueNullFieldError.checkNotNull(
                  document, r'GlistingOptionsResultFragmentReq', 'document'),
              fragmentName: fragmentName,
              idFields: BuiltValueNullFieldError.checkNotNull(
                  idFields, r'GlistingOptionsResultFragmentReq', 'idFields'));
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'vars';
        vars.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'GlistingOptionsResultFragmentReq', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
