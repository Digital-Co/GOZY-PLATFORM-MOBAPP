// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'sharefeedback.data.gql.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<GsendUserFeedbackData> _$gsendUserFeedbackDataSerializer =
    new _$GsendUserFeedbackDataSerializer();
Serializer<GsendUserFeedbackData_userFeedback>
    _$gsendUserFeedbackDataUserFeedbackSerializer =
    new _$GsendUserFeedbackData_userFeedbackSerializer();

class _$GsendUserFeedbackDataSerializer
    implements StructuredSerializer<GsendUserFeedbackData> {
  @override
  final Iterable<Type> types = const [
    GsendUserFeedbackData,
    _$GsendUserFeedbackData
  ];
  @override
  final String wireName = 'GsendUserFeedbackData';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, GsendUserFeedbackData object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      '__typename',
      serializers.serialize(object.G__typename,
          specifiedType: const FullType(String)),
    ];
    Object? value;
    value = object.userFeedback;
    if (value != null) {
      result
        ..add('userFeedback')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(GsendUserFeedbackData_userFeedback)));
    }
    return result;
  }

  @override
  GsendUserFeedbackData deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GsendUserFeedbackDataBuilder();

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
        case 'userFeedback':
          result.userFeedback.replace(serializers.deserialize(value,
                  specifiedType:
                      const FullType(GsendUserFeedbackData_userFeedback))!
              as GsendUserFeedbackData_userFeedback);
          break;
      }
    }

    return result.build();
  }
}

class _$GsendUserFeedbackData_userFeedbackSerializer
    implements StructuredSerializer<GsendUserFeedbackData_userFeedback> {
  @override
  final Iterable<Type> types = const [
    GsendUserFeedbackData_userFeedback,
    _$GsendUserFeedbackData_userFeedback
  ];
  @override
  final String wireName = 'GsendUserFeedbackData_userFeedback';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, GsendUserFeedbackData_userFeedback object,
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
    return result;
  }

  @override
  GsendUserFeedbackData_userFeedback deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GsendUserFeedbackData_userFeedbackBuilder();

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
      }
    }

    return result.build();
  }
}

class _$GsendUserFeedbackData extends GsendUserFeedbackData {
  @override
  final String G__typename;
  @override
  final GsendUserFeedbackData_userFeedback? userFeedback;

  factory _$GsendUserFeedbackData(
          [void Function(GsendUserFeedbackDataBuilder)? updates]) =>
      (new GsendUserFeedbackDataBuilder()..update(updates))._build();

  _$GsendUserFeedbackData._({required this.G__typename, this.userFeedback})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        G__typename, r'GsendUserFeedbackData', 'G__typename');
  }

  @override
  GsendUserFeedbackData rebuild(
          void Function(GsendUserFeedbackDataBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GsendUserFeedbackDataBuilder toBuilder() =>
      new GsendUserFeedbackDataBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GsendUserFeedbackData &&
        G__typename == other.G__typename &&
        userFeedback == other.userFeedback;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, G__typename.hashCode);
    _$hash = $jc(_$hash, userFeedback.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'GsendUserFeedbackData')
          ..add('G__typename', G__typename)
          ..add('userFeedback', userFeedback))
        .toString();
  }
}

class GsendUserFeedbackDataBuilder
    implements Builder<GsendUserFeedbackData, GsendUserFeedbackDataBuilder> {
  _$GsendUserFeedbackData? _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  GsendUserFeedbackData_userFeedbackBuilder? _userFeedback;
  GsendUserFeedbackData_userFeedbackBuilder get userFeedback =>
      _$this._userFeedback ??= new GsendUserFeedbackData_userFeedbackBuilder();
  set userFeedback(GsendUserFeedbackData_userFeedbackBuilder? userFeedback) =>
      _$this._userFeedback = userFeedback;

  GsendUserFeedbackDataBuilder() {
    GsendUserFeedbackData._initializeBuilder(this);
  }

  GsendUserFeedbackDataBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _G__typename = $v.G__typename;
      _userFeedback = $v.userFeedback?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GsendUserFeedbackData other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GsendUserFeedbackData;
  }

  @override
  void update(void Function(GsendUserFeedbackDataBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GsendUserFeedbackData build() => _build();

  _$GsendUserFeedbackData _build() {
    _$GsendUserFeedbackData _$result;
    try {
      _$result = _$v ??
          new _$GsendUserFeedbackData._(
              G__typename: BuiltValueNullFieldError.checkNotNull(
                  G__typename, r'GsendUserFeedbackData', 'G__typename'),
              userFeedback: _userFeedback?.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'userFeedback';
        _userFeedback?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'GsendUserFeedbackData', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

class _$GsendUserFeedbackData_userFeedback
    extends GsendUserFeedbackData_userFeedback {
  @override
  final String G__typename;
  @override
  final int? status;
  @override
  final String? errorMessage;

  factory _$GsendUserFeedbackData_userFeedback(
          [void Function(GsendUserFeedbackData_userFeedbackBuilder)?
              updates]) =>
      (new GsendUserFeedbackData_userFeedbackBuilder()..update(updates))
          ._build();

  _$GsendUserFeedbackData_userFeedback._(
      {required this.G__typename, this.status, this.errorMessage})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        G__typename, r'GsendUserFeedbackData_userFeedback', 'G__typename');
  }

  @override
  GsendUserFeedbackData_userFeedback rebuild(
          void Function(GsendUserFeedbackData_userFeedbackBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GsendUserFeedbackData_userFeedbackBuilder toBuilder() =>
      new GsendUserFeedbackData_userFeedbackBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GsendUserFeedbackData_userFeedback &&
        G__typename == other.G__typename &&
        status == other.status &&
        errorMessage == other.errorMessage;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, G__typename.hashCode);
    _$hash = $jc(_$hash, status.hashCode);
    _$hash = $jc(_$hash, errorMessage.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'GsendUserFeedbackData_userFeedback')
          ..add('G__typename', G__typename)
          ..add('status', status)
          ..add('errorMessage', errorMessage))
        .toString();
  }
}

class GsendUserFeedbackData_userFeedbackBuilder
    implements
        Builder<GsendUserFeedbackData_userFeedback,
            GsendUserFeedbackData_userFeedbackBuilder> {
  _$GsendUserFeedbackData_userFeedback? _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  int? _status;
  int? get status => _$this._status;
  set status(int? status) => _$this._status = status;

  String? _errorMessage;
  String? get errorMessage => _$this._errorMessage;
  set errorMessage(String? errorMessage) => _$this._errorMessage = errorMessage;

  GsendUserFeedbackData_userFeedbackBuilder() {
    GsendUserFeedbackData_userFeedback._initializeBuilder(this);
  }

  GsendUserFeedbackData_userFeedbackBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _G__typename = $v.G__typename;
      _status = $v.status;
      _errorMessage = $v.errorMessage;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GsendUserFeedbackData_userFeedback other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GsendUserFeedbackData_userFeedback;
  }

  @override
  void update(
      void Function(GsendUserFeedbackData_userFeedbackBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GsendUserFeedbackData_userFeedback build() => _build();

  _$GsendUserFeedbackData_userFeedback _build() {
    final _$result = _$v ??
        new _$GsendUserFeedbackData_userFeedback._(
            G__typename: BuiltValueNullFieldError.checkNotNull(G__typename,
                r'GsendUserFeedbackData_userFeedback', 'G__typename'),
            status: status,
            errorMessage: errorMessage);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
