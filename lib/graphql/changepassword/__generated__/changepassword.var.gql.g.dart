// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'changepassword.var.gql.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<GchangePasswordVars> _$gchangePasswordVarsSerializer =
    new _$GchangePasswordVarsSerializer();

class _$GchangePasswordVarsSerializer
    implements StructuredSerializer<GchangePasswordVars> {
  @override
  final Iterable<Type> types = const [
    GchangePasswordVars,
    _$GchangePasswordVars
  ];
  @override
  final String wireName = 'GchangePasswordVars';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, GchangePasswordVars object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[];
    Object? value;
    value = object.oldPassword;
    if (value != null) {
      result
        ..add('oldPassword')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.newPassword;
    if (value != null) {
      result
        ..add('newPassword')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.confirmPassword;
    if (value != null) {
      result
        ..add('confirmPassword')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    return result;
  }

  @override
  GchangePasswordVars deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GchangePasswordVarsBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'oldPassword':
          result.oldPassword = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'newPassword':
          result.newPassword = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'confirmPassword':
          result.confirmPassword = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
      }
    }

    return result.build();
  }
}

class _$GchangePasswordVars extends GchangePasswordVars {
  @override
  final String? oldPassword;
  @override
  final String? newPassword;
  @override
  final String? confirmPassword;

  factory _$GchangePasswordVars(
          [void Function(GchangePasswordVarsBuilder)? updates]) =>
      (new GchangePasswordVarsBuilder()..update(updates))._build();

  _$GchangePasswordVars._(
      {this.oldPassword, this.newPassword, this.confirmPassword})
      : super._();

  @override
  GchangePasswordVars rebuild(
          void Function(GchangePasswordVarsBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GchangePasswordVarsBuilder toBuilder() =>
      new GchangePasswordVarsBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GchangePasswordVars &&
        oldPassword == other.oldPassword &&
        newPassword == other.newPassword &&
        confirmPassword == other.confirmPassword;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, oldPassword.hashCode);
    _$hash = $jc(_$hash, newPassword.hashCode);
    _$hash = $jc(_$hash, confirmPassword.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'GchangePasswordVars')
          ..add('oldPassword', oldPassword)
          ..add('newPassword', newPassword)
          ..add('confirmPassword', confirmPassword))
        .toString();
  }
}

class GchangePasswordVarsBuilder
    implements Builder<GchangePasswordVars, GchangePasswordVarsBuilder> {
  _$GchangePasswordVars? _$v;

  String? _oldPassword;
  String? get oldPassword => _$this._oldPassword;
  set oldPassword(String? oldPassword) => _$this._oldPassword = oldPassword;

  String? _newPassword;
  String? get newPassword => _$this._newPassword;
  set newPassword(String? newPassword) => _$this._newPassword = newPassword;

  String? _confirmPassword;
  String? get confirmPassword => _$this._confirmPassword;
  set confirmPassword(String? confirmPassword) =>
      _$this._confirmPassword = confirmPassword;

  GchangePasswordVarsBuilder();

  GchangePasswordVarsBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _oldPassword = $v.oldPassword;
      _newPassword = $v.newPassword;
      _confirmPassword = $v.confirmPassword;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GchangePasswordVars other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GchangePasswordVars;
  }

  @override
  void update(void Function(GchangePasswordVarsBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GchangePasswordVars build() => _build();

  _$GchangePasswordVars _build() {
    final _$result = _$v ??
        new _$GchangePasswordVars._(
            oldPassword: oldPassword,
            newPassword: newPassword,
            confirmPassword: confirmPassword);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
