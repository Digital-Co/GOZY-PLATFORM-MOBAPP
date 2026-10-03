// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'listing_data_fragment.req.gql.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<GlistingDataFragmentReq> _$glistingDataFragmentReqSerializer =
    new _$GlistingDataFragmentReqSerializer();
Serializer<GcancellationDataFragmentReq>
    _$gcancellationDataFragmentReqSerializer =
    new _$GcancellationDataFragmentReqSerializer();

class _$GlistingDataFragmentReqSerializer
    implements StructuredSerializer<GlistingDataFragmentReq> {
  @override
  final Iterable<Type> types = const [
    GlistingDataFragmentReq,
    _$GlistingDataFragmentReq
  ];
  @override
  final String wireName = 'GlistingDataFragmentReq';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, GlistingDataFragmentReq object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      'vars',
      serializers.serialize(object.vars,
          specifiedType: const FullType(_i3.GlistingDataFragmentVars)),
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
  GlistingDataFragmentReq deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GlistingDataFragmentReqBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'vars':
          result.vars.replace(serializers.deserialize(value,
                  specifiedType: const FullType(_i3.GlistingDataFragmentVars))!
              as _i3.GlistingDataFragmentVars);
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

class _$GcancellationDataFragmentReqSerializer
    implements StructuredSerializer<GcancellationDataFragmentReq> {
  @override
  final Iterable<Type> types = const [
    GcancellationDataFragmentReq,
    _$GcancellationDataFragmentReq
  ];
  @override
  final String wireName = 'GcancellationDataFragmentReq';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, GcancellationDataFragmentReq object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      'vars',
      serializers.serialize(object.vars,
          specifiedType: const FullType(_i3.GcancellationDataFragmentVars)),
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
  GcancellationDataFragmentReq deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GcancellationDataFragmentReqBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'vars':
          result.vars.replace(serializers.deserialize(value,
                  specifiedType:
                      const FullType(_i3.GcancellationDataFragmentVars))!
              as _i3.GcancellationDataFragmentVars);
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

class _$GlistingDataFragmentReq extends GlistingDataFragmentReq {
  @override
  final _i3.GlistingDataFragmentVars vars;
  @override
  final _i5.DocumentNode document;
  @override
  final String? fragmentName;
  @override
  final Map<String, dynamic> idFields;

  factory _$GlistingDataFragmentReq(
          [void Function(GlistingDataFragmentReqBuilder)? updates]) =>
      (new GlistingDataFragmentReqBuilder()..update(updates))._build();

  _$GlistingDataFragmentReq._(
      {required this.vars,
      required this.document,
      this.fragmentName,
      required this.idFields})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        vars, r'GlistingDataFragmentReq', 'vars');
    BuiltValueNullFieldError.checkNotNull(
        document, r'GlistingDataFragmentReq', 'document');
    BuiltValueNullFieldError.checkNotNull(
        idFields, r'GlistingDataFragmentReq', 'idFields');
  }

  @override
  GlistingDataFragmentReq rebuild(
          void Function(GlistingDataFragmentReqBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GlistingDataFragmentReqBuilder toBuilder() =>
      new GlistingDataFragmentReqBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GlistingDataFragmentReq &&
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
    return (newBuiltValueToStringHelper(r'GlistingDataFragmentReq')
          ..add('vars', vars)
          ..add('document', document)
          ..add('fragmentName', fragmentName)
          ..add('idFields', idFields))
        .toString();
  }
}

class GlistingDataFragmentReqBuilder
    implements
        Builder<GlistingDataFragmentReq, GlistingDataFragmentReqBuilder> {
  _$GlistingDataFragmentReq? _$v;

  _i3.GlistingDataFragmentVarsBuilder? _vars;
  _i3.GlistingDataFragmentVarsBuilder get vars =>
      _$this._vars ??= new _i3.GlistingDataFragmentVarsBuilder();
  set vars(_i3.GlistingDataFragmentVarsBuilder? vars) => _$this._vars = vars;

  _i5.DocumentNode? _document;
  _i5.DocumentNode? get document => _$this._document;
  set document(_i5.DocumentNode? document) => _$this._document = document;

  String? _fragmentName;
  String? get fragmentName => _$this._fragmentName;
  set fragmentName(String? fragmentName) => _$this._fragmentName = fragmentName;

  Map<String, dynamic>? _idFields;
  Map<String, dynamic>? get idFields => _$this._idFields;
  set idFields(Map<String, dynamic>? idFields) => _$this._idFields = idFields;

  GlistingDataFragmentReqBuilder() {
    GlistingDataFragmentReq._initializeBuilder(this);
  }

  GlistingDataFragmentReqBuilder get _$this {
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
  void replace(GlistingDataFragmentReq other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GlistingDataFragmentReq;
  }

  @override
  void update(void Function(GlistingDataFragmentReqBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GlistingDataFragmentReq build() => _build();

  _$GlistingDataFragmentReq _build() {
    _$GlistingDataFragmentReq _$result;
    try {
      _$result = _$v ??
          new _$GlistingDataFragmentReq._(
              vars: vars.build(),
              document: BuiltValueNullFieldError.checkNotNull(
                  document, r'GlistingDataFragmentReq', 'document'),
              fragmentName: fragmentName,
              idFields: BuiltValueNullFieldError.checkNotNull(
                  idFields, r'GlistingDataFragmentReq', 'idFields'));
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'vars';
        vars.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'GlistingDataFragmentReq', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

class _$GcancellationDataFragmentReq extends GcancellationDataFragmentReq {
  @override
  final _i3.GcancellationDataFragmentVars vars;
  @override
  final _i5.DocumentNode document;
  @override
  final String? fragmentName;
  @override
  final Map<String, dynamic> idFields;

  factory _$GcancellationDataFragmentReq(
          [void Function(GcancellationDataFragmentReqBuilder)? updates]) =>
      (new GcancellationDataFragmentReqBuilder()..update(updates))._build();

  _$GcancellationDataFragmentReq._(
      {required this.vars,
      required this.document,
      this.fragmentName,
      required this.idFields})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        vars, r'GcancellationDataFragmentReq', 'vars');
    BuiltValueNullFieldError.checkNotNull(
        document, r'GcancellationDataFragmentReq', 'document');
    BuiltValueNullFieldError.checkNotNull(
        idFields, r'GcancellationDataFragmentReq', 'idFields');
  }

  @override
  GcancellationDataFragmentReq rebuild(
          void Function(GcancellationDataFragmentReqBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GcancellationDataFragmentReqBuilder toBuilder() =>
      new GcancellationDataFragmentReqBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GcancellationDataFragmentReq &&
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
    return (newBuiltValueToStringHelper(r'GcancellationDataFragmentReq')
          ..add('vars', vars)
          ..add('document', document)
          ..add('fragmentName', fragmentName)
          ..add('idFields', idFields))
        .toString();
  }
}

class GcancellationDataFragmentReqBuilder
    implements
        Builder<GcancellationDataFragmentReq,
            GcancellationDataFragmentReqBuilder> {
  _$GcancellationDataFragmentReq? _$v;

  _i3.GcancellationDataFragmentVarsBuilder? _vars;
  _i3.GcancellationDataFragmentVarsBuilder get vars =>
      _$this._vars ??= new _i3.GcancellationDataFragmentVarsBuilder();
  set vars(_i3.GcancellationDataFragmentVarsBuilder? vars) =>
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

  GcancellationDataFragmentReqBuilder() {
    GcancellationDataFragmentReq._initializeBuilder(this);
  }

  GcancellationDataFragmentReqBuilder get _$this {
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
  void replace(GcancellationDataFragmentReq other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GcancellationDataFragmentReq;
  }

  @override
  void update(void Function(GcancellationDataFragmentReqBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GcancellationDataFragmentReq build() => _build();

  _$GcancellationDataFragmentReq _build() {
    _$GcancellationDataFragmentReq _$result;
    try {
      _$result = _$v ??
          new _$GcancellationDataFragmentReq._(
              vars: vars.build(),
              document: BuiltValueNullFieldError.checkNotNull(
                  document, r'GcancellationDataFragmentReq', 'document'),
              fragmentName: fragmentName,
              idFields: BuiltValueNullFieldError.checkNotNull(
                  idFields, r'GcancellationDataFragmentReq', 'idFields'));
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'vars';
        vars.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'GcancellationDataFragmentReq', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
