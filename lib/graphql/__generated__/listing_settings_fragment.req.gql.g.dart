// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'listing_settings_fragment.req.gql.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<GlistingSettingsFragmentReq>
    _$glistingSettingsFragmentReqSerializer =
    new _$GlistingSettingsFragmentReqSerializer();
Serializer<GcancellationFragmentReq> _$gcancellationFragmentReqSerializer =
    new _$GcancellationFragmentReqSerializer();
Serializer<GavailabilityFragmentReq> _$gavailabilityFragmentReqSerializer =
    new _$GavailabilityFragmentReqSerializer();
Serializer<GlistingSettingsTypesFragmentReq>
    _$glistingSettingsTypesFragmentReqSerializer =
    new _$GlistingSettingsTypesFragmentReqSerializer();

class _$GlistingSettingsFragmentReqSerializer
    implements StructuredSerializer<GlistingSettingsFragmentReq> {
  @override
  final Iterable<Type> types = const [
    GlistingSettingsFragmentReq,
    _$GlistingSettingsFragmentReq
  ];
  @override
  final String wireName = 'GlistingSettingsFragmentReq';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, GlistingSettingsFragmentReq object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      'vars',
      serializers.serialize(object.vars,
          specifiedType: const FullType(_i3.GlistingSettingsFragmentVars)),
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
  GlistingSettingsFragmentReq deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GlistingSettingsFragmentReqBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'vars':
          result.vars.replace(serializers.deserialize(value,
                  specifiedType:
                      const FullType(_i3.GlistingSettingsFragmentVars))!
              as _i3.GlistingSettingsFragmentVars);
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

class _$GcancellationFragmentReqSerializer
    implements StructuredSerializer<GcancellationFragmentReq> {
  @override
  final Iterable<Type> types = const [
    GcancellationFragmentReq,
    _$GcancellationFragmentReq
  ];
  @override
  final String wireName = 'GcancellationFragmentReq';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, GcancellationFragmentReq object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      'vars',
      serializers.serialize(object.vars,
          specifiedType: const FullType(_i3.GcancellationFragmentVars)),
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
  GcancellationFragmentReq deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GcancellationFragmentReqBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'vars':
          result.vars.replace(serializers.deserialize(value,
                  specifiedType: const FullType(_i3.GcancellationFragmentVars))!
              as _i3.GcancellationFragmentVars);
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

class _$GavailabilityFragmentReqSerializer
    implements StructuredSerializer<GavailabilityFragmentReq> {
  @override
  final Iterable<Type> types = const [
    GavailabilityFragmentReq,
    _$GavailabilityFragmentReq
  ];
  @override
  final String wireName = 'GavailabilityFragmentReq';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, GavailabilityFragmentReq object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      'vars',
      serializers.serialize(object.vars,
          specifiedType: const FullType(_i3.GavailabilityFragmentVars)),
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
  GavailabilityFragmentReq deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GavailabilityFragmentReqBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'vars':
          result.vars.replace(serializers.deserialize(value,
                  specifiedType: const FullType(_i3.GavailabilityFragmentVars))!
              as _i3.GavailabilityFragmentVars);
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

class _$GlistingSettingsTypesFragmentReqSerializer
    implements StructuredSerializer<GlistingSettingsTypesFragmentReq> {
  @override
  final Iterable<Type> types = const [
    GlistingSettingsTypesFragmentReq,
    _$GlistingSettingsTypesFragmentReq
  ];
  @override
  final String wireName = 'GlistingSettingsTypesFragmentReq';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, GlistingSettingsTypesFragmentReq object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      'vars',
      serializers.serialize(object.vars,
          specifiedType: const FullType(_i3.GlistingSettingsTypesFragmentVars)),
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
  GlistingSettingsTypesFragmentReq deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GlistingSettingsTypesFragmentReqBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'vars':
          result.vars.replace(serializers.deserialize(value,
                  specifiedType:
                      const FullType(_i3.GlistingSettingsTypesFragmentVars))!
              as _i3.GlistingSettingsTypesFragmentVars);
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

class _$GlistingSettingsFragmentReq extends GlistingSettingsFragmentReq {
  @override
  final _i3.GlistingSettingsFragmentVars vars;
  @override
  final _i5.DocumentNode document;
  @override
  final String? fragmentName;
  @override
  final Map<String, dynamic> idFields;

  factory _$GlistingSettingsFragmentReq(
          [void Function(GlistingSettingsFragmentReqBuilder)? updates]) =>
      (new GlistingSettingsFragmentReqBuilder()..update(updates))._build();

  _$GlistingSettingsFragmentReq._(
      {required this.vars,
      required this.document,
      this.fragmentName,
      required this.idFields})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        vars, r'GlistingSettingsFragmentReq', 'vars');
    BuiltValueNullFieldError.checkNotNull(
        document, r'GlistingSettingsFragmentReq', 'document');
    BuiltValueNullFieldError.checkNotNull(
        idFields, r'GlistingSettingsFragmentReq', 'idFields');
  }

  @override
  GlistingSettingsFragmentReq rebuild(
          void Function(GlistingSettingsFragmentReqBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GlistingSettingsFragmentReqBuilder toBuilder() =>
      new GlistingSettingsFragmentReqBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GlistingSettingsFragmentReq &&
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
    return (newBuiltValueToStringHelper(r'GlistingSettingsFragmentReq')
          ..add('vars', vars)
          ..add('document', document)
          ..add('fragmentName', fragmentName)
          ..add('idFields', idFields))
        .toString();
  }
}

class GlistingSettingsFragmentReqBuilder
    implements
        Builder<GlistingSettingsFragmentReq,
            GlistingSettingsFragmentReqBuilder> {
  _$GlistingSettingsFragmentReq? _$v;

  _i3.GlistingSettingsFragmentVarsBuilder? _vars;
  _i3.GlistingSettingsFragmentVarsBuilder get vars =>
      _$this._vars ??= new _i3.GlistingSettingsFragmentVarsBuilder();
  set vars(_i3.GlistingSettingsFragmentVarsBuilder? vars) =>
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

  GlistingSettingsFragmentReqBuilder() {
    GlistingSettingsFragmentReq._initializeBuilder(this);
  }

  GlistingSettingsFragmentReqBuilder get _$this {
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
  void replace(GlistingSettingsFragmentReq other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GlistingSettingsFragmentReq;
  }

  @override
  void update(void Function(GlistingSettingsFragmentReqBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GlistingSettingsFragmentReq build() => _build();

  _$GlistingSettingsFragmentReq _build() {
    _$GlistingSettingsFragmentReq _$result;
    try {
      _$result = _$v ??
          new _$GlistingSettingsFragmentReq._(
              vars: vars.build(),
              document: BuiltValueNullFieldError.checkNotNull(
                  document, r'GlistingSettingsFragmentReq', 'document'),
              fragmentName: fragmentName,
              idFields: BuiltValueNullFieldError.checkNotNull(
                  idFields, r'GlistingSettingsFragmentReq', 'idFields'));
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'vars';
        vars.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'GlistingSettingsFragmentReq', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

class _$GcancellationFragmentReq extends GcancellationFragmentReq {
  @override
  final _i3.GcancellationFragmentVars vars;
  @override
  final _i5.DocumentNode document;
  @override
  final String? fragmentName;
  @override
  final Map<String, dynamic> idFields;

  factory _$GcancellationFragmentReq(
          [void Function(GcancellationFragmentReqBuilder)? updates]) =>
      (new GcancellationFragmentReqBuilder()..update(updates))._build();

  _$GcancellationFragmentReq._(
      {required this.vars,
      required this.document,
      this.fragmentName,
      required this.idFields})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        vars, r'GcancellationFragmentReq', 'vars');
    BuiltValueNullFieldError.checkNotNull(
        document, r'GcancellationFragmentReq', 'document');
    BuiltValueNullFieldError.checkNotNull(
        idFields, r'GcancellationFragmentReq', 'idFields');
  }

  @override
  GcancellationFragmentReq rebuild(
          void Function(GcancellationFragmentReqBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GcancellationFragmentReqBuilder toBuilder() =>
      new GcancellationFragmentReqBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GcancellationFragmentReq &&
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
    return (newBuiltValueToStringHelper(r'GcancellationFragmentReq')
          ..add('vars', vars)
          ..add('document', document)
          ..add('fragmentName', fragmentName)
          ..add('idFields', idFields))
        .toString();
  }
}

class GcancellationFragmentReqBuilder
    implements
        Builder<GcancellationFragmentReq, GcancellationFragmentReqBuilder> {
  _$GcancellationFragmentReq? _$v;

  _i3.GcancellationFragmentVarsBuilder? _vars;
  _i3.GcancellationFragmentVarsBuilder get vars =>
      _$this._vars ??= new _i3.GcancellationFragmentVarsBuilder();
  set vars(_i3.GcancellationFragmentVarsBuilder? vars) => _$this._vars = vars;

  _i5.DocumentNode? _document;
  _i5.DocumentNode? get document => _$this._document;
  set document(_i5.DocumentNode? document) => _$this._document = document;

  String? _fragmentName;
  String? get fragmentName => _$this._fragmentName;
  set fragmentName(String? fragmentName) => _$this._fragmentName = fragmentName;

  Map<String, dynamic>? _idFields;
  Map<String, dynamic>? get idFields => _$this._idFields;
  set idFields(Map<String, dynamic>? idFields) => _$this._idFields = idFields;

  GcancellationFragmentReqBuilder() {
    GcancellationFragmentReq._initializeBuilder(this);
  }

  GcancellationFragmentReqBuilder get _$this {
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
  void replace(GcancellationFragmentReq other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GcancellationFragmentReq;
  }

  @override
  void update(void Function(GcancellationFragmentReqBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GcancellationFragmentReq build() => _build();

  _$GcancellationFragmentReq _build() {
    _$GcancellationFragmentReq _$result;
    try {
      _$result = _$v ??
          new _$GcancellationFragmentReq._(
              vars: vars.build(),
              document: BuiltValueNullFieldError.checkNotNull(
                  document, r'GcancellationFragmentReq', 'document'),
              fragmentName: fragmentName,
              idFields: BuiltValueNullFieldError.checkNotNull(
                  idFields, r'GcancellationFragmentReq', 'idFields'));
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'vars';
        vars.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'GcancellationFragmentReq', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

class _$GavailabilityFragmentReq extends GavailabilityFragmentReq {
  @override
  final _i3.GavailabilityFragmentVars vars;
  @override
  final _i5.DocumentNode document;
  @override
  final String? fragmentName;
  @override
  final Map<String, dynamic> idFields;

  factory _$GavailabilityFragmentReq(
          [void Function(GavailabilityFragmentReqBuilder)? updates]) =>
      (new GavailabilityFragmentReqBuilder()..update(updates))._build();

  _$GavailabilityFragmentReq._(
      {required this.vars,
      required this.document,
      this.fragmentName,
      required this.idFields})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        vars, r'GavailabilityFragmentReq', 'vars');
    BuiltValueNullFieldError.checkNotNull(
        document, r'GavailabilityFragmentReq', 'document');
    BuiltValueNullFieldError.checkNotNull(
        idFields, r'GavailabilityFragmentReq', 'idFields');
  }

  @override
  GavailabilityFragmentReq rebuild(
          void Function(GavailabilityFragmentReqBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GavailabilityFragmentReqBuilder toBuilder() =>
      new GavailabilityFragmentReqBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GavailabilityFragmentReq &&
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
    return (newBuiltValueToStringHelper(r'GavailabilityFragmentReq')
          ..add('vars', vars)
          ..add('document', document)
          ..add('fragmentName', fragmentName)
          ..add('idFields', idFields))
        .toString();
  }
}

class GavailabilityFragmentReqBuilder
    implements
        Builder<GavailabilityFragmentReq, GavailabilityFragmentReqBuilder> {
  _$GavailabilityFragmentReq? _$v;

  _i3.GavailabilityFragmentVarsBuilder? _vars;
  _i3.GavailabilityFragmentVarsBuilder get vars =>
      _$this._vars ??= new _i3.GavailabilityFragmentVarsBuilder();
  set vars(_i3.GavailabilityFragmentVarsBuilder? vars) => _$this._vars = vars;

  _i5.DocumentNode? _document;
  _i5.DocumentNode? get document => _$this._document;
  set document(_i5.DocumentNode? document) => _$this._document = document;

  String? _fragmentName;
  String? get fragmentName => _$this._fragmentName;
  set fragmentName(String? fragmentName) => _$this._fragmentName = fragmentName;

  Map<String, dynamic>? _idFields;
  Map<String, dynamic>? get idFields => _$this._idFields;
  set idFields(Map<String, dynamic>? idFields) => _$this._idFields = idFields;

  GavailabilityFragmentReqBuilder() {
    GavailabilityFragmentReq._initializeBuilder(this);
  }

  GavailabilityFragmentReqBuilder get _$this {
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
  void replace(GavailabilityFragmentReq other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GavailabilityFragmentReq;
  }

  @override
  void update(void Function(GavailabilityFragmentReqBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GavailabilityFragmentReq build() => _build();

  _$GavailabilityFragmentReq _build() {
    _$GavailabilityFragmentReq _$result;
    try {
      _$result = _$v ??
          new _$GavailabilityFragmentReq._(
              vars: vars.build(),
              document: BuiltValueNullFieldError.checkNotNull(
                  document, r'GavailabilityFragmentReq', 'document'),
              fragmentName: fragmentName,
              idFields: BuiltValueNullFieldError.checkNotNull(
                  idFields, r'GavailabilityFragmentReq', 'idFields'));
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'vars';
        vars.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'GavailabilityFragmentReq', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

class _$GlistingSettingsTypesFragmentReq
    extends GlistingSettingsTypesFragmentReq {
  @override
  final _i3.GlistingSettingsTypesFragmentVars vars;
  @override
  final _i5.DocumentNode document;
  @override
  final String? fragmentName;
  @override
  final Map<String, dynamic> idFields;

  factory _$GlistingSettingsTypesFragmentReq(
          [void Function(GlistingSettingsTypesFragmentReqBuilder)? updates]) =>
      (new GlistingSettingsTypesFragmentReqBuilder()..update(updates))._build();

  _$GlistingSettingsTypesFragmentReq._(
      {required this.vars,
      required this.document,
      this.fragmentName,
      required this.idFields})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        vars, r'GlistingSettingsTypesFragmentReq', 'vars');
    BuiltValueNullFieldError.checkNotNull(
        document, r'GlistingSettingsTypesFragmentReq', 'document');
    BuiltValueNullFieldError.checkNotNull(
        idFields, r'GlistingSettingsTypesFragmentReq', 'idFields');
  }

  @override
  GlistingSettingsTypesFragmentReq rebuild(
          void Function(GlistingSettingsTypesFragmentReqBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GlistingSettingsTypesFragmentReqBuilder toBuilder() =>
      new GlistingSettingsTypesFragmentReqBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GlistingSettingsTypesFragmentReq &&
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
    return (newBuiltValueToStringHelper(r'GlistingSettingsTypesFragmentReq')
          ..add('vars', vars)
          ..add('document', document)
          ..add('fragmentName', fragmentName)
          ..add('idFields', idFields))
        .toString();
  }
}

class GlistingSettingsTypesFragmentReqBuilder
    implements
        Builder<GlistingSettingsTypesFragmentReq,
            GlistingSettingsTypesFragmentReqBuilder> {
  _$GlistingSettingsTypesFragmentReq? _$v;

  _i3.GlistingSettingsTypesFragmentVarsBuilder? _vars;
  _i3.GlistingSettingsTypesFragmentVarsBuilder get vars =>
      _$this._vars ??= new _i3.GlistingSettingsTypesFragmentVarsBuilder();
  set vars(_i3.GlistingSettingsTypesFragmentVarsBuilder? vars) =>
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

  GlistingSettingsTypesFragmentReqBuilder() {
    GlistingSettingsTypesFragmentReq._initializeBuilder(this);
  }

  GlistingSettingsTypesFragmentReqBuilder get _$this {
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
  void replace(GlistingSettingsTypesFragmentReq other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GlistingSettingsTypesFragmentReq;
  }

  @override
  void update(void Function(GlistingSettingsTypesFragmentReqBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GlistingSettingsTypesFragmentReq build() => _build();

  _$GlistingSettingsTypesFragmentReq _build() {
    _$GlistingSettingsTypesFragmentReq _$result;
    try {
      _$result = _$v ??
          new _$GlistingSettingsTypesFragmentReq._(
              vars: vars.build(),
              document: BuiltValueNullFieldError.checkNotNull(
                  document, r'GlistingSettingsTypesFragmentReq', 'document'),
              fragmentName: fragmentName,
              idFields: BuiltValueNullFieldError.checkNotNull(
                  idFields, r'GlistingSettingsTypesFragmentReq', 'idFields'));
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'vars';
        vars.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'GlistingSettingsTypesFragmentReq', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
