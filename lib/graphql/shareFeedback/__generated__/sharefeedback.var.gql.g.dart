// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'sharefeedback.var.gql.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<GsendUserFeedbackVars> _$gsendUserFeedbackVarsSerializer =
    new _$GsendUserFeedbackVarsSerializer();

class _$GsendUserFeedbackVarsSerializer
    implements StructuredSerializer<GsendUserFeedbackVars> {
  @override
  final Iterable<Type> types = const [
    GsendUserFeedbackVars,
    _$GsendUserFeedbackVars
  ];
  @override
  final String wireName = 'GsendUserFeedbackVars';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, GsendUserFeedbackVars object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[];
    Object? value;
    value = object.type;
    if (value != null) {
      result
        ..add('type')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.message;
    if (value != null) {
      result
        ..add('message')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    return result;
  }

  @override
  GsendUserFeedbackVars deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GsendUserFeedbackVarsBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'type':
          result.type = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'message':
          result.message = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
      }
    }

    return result.build();
  }
}

class _$GsendUserFeedbackVars extends GsendUserFeedbackVars {
  @override
  final String? type;
  @override
  final String? message;

  factory _$GsendUserFeedbackVars(
          [void Function(GsendUserFeedbackVarsBuilder)? updates]) =>
      (new GsendUserFeedbackVarsBuilder()..update(updates))._build();

  _$GsendUserFeedbackVars._({this.type, this.message}) : super._();

  @override
  GsendUserFeedbackVars rebuild(
          void Function(GsendUserFeedbackVarsBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GsendUserFeedbackVarsBuilder toBuilder() =>
      new GsendUserFeedbackVarsBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GsendUserFeedbackVars &&
        type == other.type &&
        message == other.message;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, type.hashCode);
    _$hash = $jc(_$hash, message.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'GsendUserFeedbackVars')
          ..add('type', type)
          ..add('message', message))
        .toString();
  }
}

class GsendUserFeedbackVarsBuilder
    implements Builder<GsendUserFeedbackVars, GsendUserFeedbackVarsBuilder> {
  _$GsendUserFeedbackVars? _$v;

  String? _type;
  String? get type => _$this._type;
  set type(String? type) => _$this._type = type;

  String? _message;
  String? get message => _$this._message;
  set message(String? message) => _$this._message = message;

  GsendUserFeedbackVarsBuilder();

  GsendUserFeedbackVarsBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _type = $v.type;
      _message = $v.message;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GsendUserFeedbackVars other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GsendUserFeedbackVars;
  }

  @override
  void update(void Function(GsendUserFeedbackVarsBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GsendUserFeedbackVars build() => _build();

  _$GsendUserFeedbackVars _build() {
    final _$result =
        _$v ?? new _$GsendUserFeedbackVars._(type: type, message: message);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
