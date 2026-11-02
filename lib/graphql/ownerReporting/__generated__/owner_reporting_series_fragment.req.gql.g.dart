// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'owner_reporting_series_fragment.req.gql.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<GownerReportingSeriesFragmentReq>
    _$gownerReportingSeriesFragmentReqSerializer =
    new _$GownerReportingSeriesFragmentReqSerializer();

class _$GownerReportingSeriesFragmentReqSerializer
    implements StructuredSerializer<GownerReportingSeriesFragmentReq> {
  @override
  final Iterable<Type> types = const [
    GownerReportingSeriesFragmentReq,
    _$GownerReportingSeriesFragmentReq
  ];
  @override
  final String wireName = 'GownerReportingSeriesFragmentReq';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, GownerReportingSeriesFragmentReq object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      'vars',
      serializers.serialize(object.vars,
          specifiedType: const FullType(_i3.GownerReportingSeriesFragmentVars)),
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
  GownerReportingSeriesFragmentReq deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GownerReportingSeriesFragmentReqBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'vars':
          result.vars.replace(serializers.deserialize(value,
                  specifiedType:
                      const FullType(_i3.GownerReportingSeriesFragmentVars))!
              as _i3.GownerReportingSeriesFragmentVars);
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

class _$GownerReportingSeriesFragmentReq
    extends GownerReportingSeriesFragmentReq {
  @override
  final _i3.GownerReportingSeriesFragmentVars vars;
  @override
  final _i5.DocumentNode document;
  @override
  final String? fragmentName;
  @override
  final Map<String, dynamic> idFields;

  factory _$GownerReportingSeriesFragmentReq(
          [void Function(GownerReportingSeriesFragmentReqBuilder)? updates]) =>
      (new GownerReportingSeriesFragmentReqBuilder()..update(updates))._build();

  _$GownerReportingSeriesFragmentReq._(
      {required this.vars,
      required this.document,
      this.fragmentName,
      required this.idFields})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        vars, r'GownerReportingSeriesFragmentReq', 'vars');
    BuiltValueNullFieldError.checkNotNull(
        document, r'GownerReportingSeriesFragmentReq', 'document');
    BuiltValueNullFieldError.checkNotNull(
        idFields, r'GownerReportingSeriesFragmentReq', 'idFields');
  }

  @override
  GownerReportingSeriesFragmentReq rebuild(
          void Function(GownerReportingSeriesFragmentReqBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GownerReportingSeriesFragmentReqBuilder toBuilder() =>
      new GownerReportingSeriesFragmentReqBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GownerReportingSeriesFragmentReq &&
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
    return (newBuiltValueToStringHelper(r'GownerReportingSeriesFragmentReq')
          ..add('vars', vars)
          ..add('document', document)
          ..add('fragmentName', fragmentName)
          ..add('idFields', idFields))
        .toString();
  }
}

class GownerReportingSeriesFragmentReqBuilder
    implements
        Builder<GownerReportingSeriesFragmentReq,
            GownerReportingSeriesFragmentReqBuilder> {
  _$GownerReportingSeriesFragmentReq? _$v;

  _i3.GownerReportingSeriesFragmentVarsBuilder? _vars;
  _i3.GownerReportingSeriesFragmentVarsBuilder get vars =>
      _$this._vars ??= new _i3.GownerReportingSeriesFragmentVarsBuilder();
  set vars(_i3.GownerReportingSeriesFragmentVarsBuilder? vars) =>
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

  GownerReportingSeriesFragmentReqBuilder() {
    GownerReportingSeriesFragmentReq._initializeBuilder(this);
  }

  GownerReportingSeriesFragmentReqBuilder get _$this {
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
  void replace(GownerReportingSeriesFragmentReq other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GownerReportingSeriesFragmentReq;
  }

  @override
  void update(void Function(GownerReportingSeriesFragmentReqBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GownerReportingSeriesFragmentReq build() => _build();

  _$GownerReportingSeriesFragmentReq _build() {
    _$GownerReportingSeriesFragmentReq _$result;
    try {
      _$result = _$v ??
          new _$GownerReportingSeriesFragmentReq._(
              vars: vars.build(),
              document: BuiltValueNullFieldError.checkNotNull(
                  document, r'GownerReportingSeriesFragmentReq', 'document'),
              fragmentName: fragmentName,
              idFields: BuiltValueNullFieldError.checkNotNull(
                  idFields, r'GownerReportingSeriesFragmentReq', 'idFields'));
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'vars';
        vars.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'GownerReportingSeriesFragmentReq', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
