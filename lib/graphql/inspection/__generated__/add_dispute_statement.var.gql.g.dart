// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'add_dispute_statement.var.gql.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<GaddDisputeStatementVars> _$gaddDisputeStatementVarsSerializer =
    new _$GaddDisputeStatementVarsSerializer();

class _$GaddDisputeStatementVarsSerializer
    implements StructuredSerializer<GaddDisputeStatementVars> {
  @override
  final Iterable<Type> types = const [
    GaddDisputeStatementVars,
    _$GaddDisputeStatementVars
  ];
  @override
  final String wireName = 'GaddDisputeStatementVars';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, GaddDisputeStatementVars object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      'disputeId',
      serializers.serialize(object.disputeId,
          specifiedType: const FullType(int)),
      'content',
      serializers.serialize(object.content,
          specifiedType: const FullType(String)),
    ];
    Object? value;
    value = object.attachments;
    if (value != null) {
      result
        ..add('attachments')
        ..add(serializers.serialize(value,
            specifiedType:
                const FullType(BuiltList, const [const FullType(int)])));
    }
    return result;
  }

  @override
  GaddDisputeStatementVars deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GaddDisputeStatementVarsBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'disputeId':
          result.disputeId = serializers.deserialize(value,
              specifiedType: const FullType(int))! as int;
          break;
        case 'content':
          result.content = serializers.deserialize(value,
              specifiedType: const FullType(String))! as String;
          break;
        case 'attachments':
          result.attachments.replace(serializers.deserialize(value,
                  specifiedType:
                      const FullType(BuiltList, const [const FullType(int)]))!
              as BuiltList<Object?>);
          break;
      }
    }

    return result.build();
  }
}

class _$GaddDisputeStatementVars extends GaddDisputeStatementVars {
  @override
  final int disputeId;
  @override
  final String content;
  @override
  final BuiltList<int>? attachments;

  factory _$GaddDisputeStatementVars(
          [void Function(GaddDisputeStatementVarsBuilder)? updates]) =>
      (new GaddDisputeStatementVarsBuilder()..update(updates))._build();

  _$GaddDisputeStatementVars._(
      {required this.disputeId, required this.content, this.attachments})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        disputeId, r'GaddDisputeStatementVars', 'disputeId');
    BuiltValueNullFieldError.checkNotNull(
        content, r'GaddDisputeStatementVars', 'content');
  }

  @override
  GaddDisputeStatementVars rebuild(
          void Function(GaddDisputeStatementVarsBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GaddDisputeStatementVarsBuilder toBuilder() =>
      new GaddDisputeStatementVarsBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GaddDisputeStatementVars &&
        disputeId == other.disputeId &&
        content == other.content &&
        attachments == other.attachments;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, disputeId.hashCode);
    _$hash = $jc(_$hash, content.hashCode);
    _$hash = $jc(_$hash, attachments.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'GaddDisputeStatementVars')
          ..add('disputeId', disputeId)
          ..add('content', content)
          ..add('attachments', attachments))
        .toString();
  }
}

class GaddDisputeStatementVarsBuilder
    implements
        Builder<GaddDisputeStatementVars, GaddDisputeStatementVarsBuilder> {
  _$GaddDisputeStatementVars? _$v;

  int? _disputeId;
  int? get disputeId => _$this._disputeId;
  set disputeId(int? disputeId) => _$this._disputeId = disputeId;

  String? _content;
  String? get content => _$this._content;
  set content(String? content) => _$this._content = content;

  ListBuilder<int>? _attachments;
  ListBuilder<int> get attachments =>
      _$this._attachments ??= new ListBuilder<int>();
  set attachments(ListBuilder<int>? attachments) =>
      _$this._attachments = attachments;

  GaddDisputeStatementVarsBuilder();

  GaddDisputeStatementVarsBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _disputeId = $v.disputeId;
      _content = $v.content;
      _attachments = $v.attachments?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GaddDisputeStatementVars other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GaddDisputeStatementVars;
  }

  @override
  void update(void Function(GaddDisputeStatementVarsBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GaddDisputeStatementVars build() => _build();

  _$GaddDisputeStatementVars _build() {
    _$GaddDisputeStatementVars _$result;
    try {
      _$result = _$v ??
          new _$GaddDisputeStatementVars._(
              disputeId: BuiltValueNullFieldError.checkNotNull(
                  disputeId, r'GaddDisputeStatementVars', 'disputeId'),
              content: BuiltValueNullFieldError.checkNotNull(
                  content, r'GaddDisputeStatementVars', 'content'),
              attachments: _attachments?.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'attachments';
        _attachments?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'GaddDisputeStatementVars', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
