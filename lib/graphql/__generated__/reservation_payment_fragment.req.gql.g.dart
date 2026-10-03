// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'reservation_payment_fragment.req.gql.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<GreservationPaymentFragmentReq>
    _$greservationPaymentFragmentReqSerializer =
    new _$GreservationPaymentFragmentReqSerializer();

class _$GreservationPaymentFragmentReqSerializer
    implements StructuredSerializer<GreservationPaymentFragmentReq> {
  @override
  final Iterable<Type> types = const [
    GreservationPaymentFragmentReq,
    _$GreservationPaymentFragmentReq
  ];
  @override
  final String wireName = 'GreservationPaymentFragmentReq';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, GreservationPaymentFragmentReq object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      'vars',
      serializers.serialize(object.vars,
          specifiedType: const FullType(_i3.GreservationPaymentFragmentVars)),
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
  GreservationPaymentFragmentReq deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GreservationPaymentFragmentReqBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'vars':
          result.vars.replace(serializers.deserialize(value,
                  specifiedType:
                      const FullType(_i3.GreservationPaymentFragmentVars))!
              as _i3.GreservationPaymentFragmentVars);
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

class _$GreservationPaymentFragmentReq extends GreservationPaymentFragmentReq {
  @override
  final _i3.GreservationPaymentFragmentVars vars;
  @override
  final _i5.DocumentNode document;
  @override
  final String? fragmentName;
  @override
  final Map<String, dynamic> idFields;

  factory _$GreservationPaymentFragmentReq(
          [void Function(GreservationPaymentFragmentReqBuilder)? updates]) =>
      (new GreservationPaymentFragmentReqBuilder()..update(updates))._build();

  _$GreservationPaymentFragmentReq._(
      {required this.vars,
      required this.document,
      this.fragmentName,
      required this.idFields})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        vars, r'GreservationPaymentFragmentReq', 'vars');
    BuiltValueNullFieldError.checkNotNull(
        document, r'GreservationPaymentFragmentReq', 'document');
    BuiltValueNullFieldError.checkNotNull(
        idFields, r'GreservationPaymentFragmentReq', 'idFields');
  }

  @override
  GreservationPaymentFragmentReq rebuild(
          void Function(GreservationPaymentFragmentReqBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GreservationPaymentFragmentReqBuilder toBuilder() =>
      new GreservationPaymentFragmentReqBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GreservationPaymentFragmentReq &&
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
    return (newBuiltValueToStringHelper(r'GreservationPaymentFragmentReq')
          ..add('vars', vars)
          ..add('document', document)
          ..add('fragmentName', fragmentName)
          ..add('idFields', idFields))
        .toString();
  }
}

class GreservationPaymentFragmentReqBuilder
    implements
        Builder<GreservationPaymentFragmentReq,
            GreservationPaymentFragmentReqBuilder> {
  _$GreservationPaymentFragmentReq? _$v;

  _i3.GreservationPaymentFragmentVarsBuilder? _vars;
  _i3.GreservationPaymentFragmentVarsBuilder get vars =>
      _$this._vars ??= new _i3.GreservationPaymentFragmentVarsBuilder();
  set vars(_i3.GreservationPaymentFragmentVarsBuilder? vars) =>
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

  GreservationPaymentFragmentReqBuilder() {
    GreservationPaymentFragmentReq._initializeBuilder(this);
  }

  GreservationPaymentFragmentReqBuilder get _$this {
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
  void replace(GreservationPaymentFragmentReq other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GreservationPaymentFragmentReq;
  }

  @override
  void update(void Function(GreservationPaymentFragmentReqBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GreservationPaymentFragmentReq build() => _build();

  _$GreservationPaymentFragmentReq _build() {
    _$GreservationPaymentFragmentReq _$result;
    try {
      _$result = _$v ??
          new _$GreservationPaymentFragmentReq._(
              vars: vars.build(),
              document: BuiltValueNullFieldError.checkNotNull(
                  document, r'GreservationPaymentFragmentReq', 'document'),
              fragmentName: fragmentName,
              idFields: BuiltValueNullFieldError.checkNotNull(
                  idFields, r'GreservationPaymentFragmentReq', 'idFields'));
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'vars';
        vars.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'GreservationPaymentFragmentReq', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
