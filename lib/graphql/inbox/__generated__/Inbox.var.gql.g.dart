// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'Inbox.var.gql.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<GgetAllThreadsVars> _$ggetAllThreadsVarsSerializer =
    new _$GgetAllThreadsVarsSerializer();
Serializer<GgetUnReadCountVars> _$ggetUnReadCountVarsSerializer =
    new _$GgetUnReadCountVarsSerializer();
Serializer<GgetThreadsVars> _$ggetThreadsVarsSerializer =
    new _$GgetThreadsVarsSerializer();
Serializer<GsendMessageVars> _$gsendMessageVarsSerializer =
    new _$GsendMessageVarsSerializer();
Serializer<GreadMessageVars> _$greadMessageVarsSerializer =
    new _$GreadMessageVarsSerializer();
Serializer<GgetUnReadThreadCountVars> _$ggetUnReadThreadCountVarsSerializer =
    new _$GgetUnReadThreadCountVarsSerializer();

class _$GgetAllThreadsVarsSerializer
    implements StructuredSerializer<GgetAllThreadsVars> {
  @override
  final Iterable<Type> types = const [GgetAllThreadsVars, _$GgetAllThreadsVars];
  @override
  final String wireName = 'GgetAllThreadsVars';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, GgetAllThreadsVars object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[];
    Object? value;
    value = object.threadType;
    if (value != null) {
      result
        ..add('threadType')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.threadId;
    if (value != null) {
      result
        ..add('threadId')
        ..add(serializers.serialize(value, specifiedType: const FullType(int)));
    }
    value = object.currentPage;
    if (value != null) {
      result
        ..add('currentPage')
        ..add(serializers.serialize(value, specifiedType: const FullType(int)));
    }
    return result;
  }

  @override
  GgetAllThreadsVars deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GgetAllThreadsVarsBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'threadType':
          result.threadType = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'threadId':
          result.threadId = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int?;
          break;
        case 'currentPage':
          result.currentPage = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int?;
          break;
      }
    }

    return result.build();
  }
}

class _$GgetUnReadCountVarsSerializer
    implements StructuredSerializer<GgetUnReadCountVars> {
  @override
  final Iterable<Type> types = const [
    GgetUnReadCountVars,
    _$GgetUnReadCountVars
  ];
  @override
  final String wireName = 'GgetUnReadCountVars';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, GgetUnReadCountVars object,
      {FullType specifiedType = FullType.unspecified}) {
    return <Object?>[];
  }

  @override
  GgetUnReadCountVars deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    return new GgetUnReadCountVarsBuilder().build();
  }
}

class _$GgetThreadsVarsSerializer
    implements StructuredSerializer<GgetThreadsVars> {
  @override
  final Iterable<Type> types = const [GgetThreadsVars, _$GgetThreadsVars];
  @override
  final String wireName = 'GgetThreadsVars';

  @override
  Iterable<Object?> serialize(Serializers serializers, GgetThreadsVars object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[];
    Object? value;
    value = object.threadType;
    if (value != null) {
      result
        ..add('threadType')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.threadId;
    if (value != null) {
      result
        ..add('threadId')
        ..add(serializers.serialize(value, specifiedType: const FullType(int)));
    }
    value = object.currentPage;
    if (value != null) {
      result
        ..add('currentPage')
        ..add(serializers.serialize(value, specifiedType: const FullType(int)));
    }
    return result;
  }

  @override
  GgetThreadsVars deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GgetThreadsVarsBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'threadType':
          result.threadType = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'threadId':
          result.threadId = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int?;
          break;
        case 'currentPage':
          result.currentPage = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int?;
          break;
      }
    }

    return result.build();
  }
}

class _$GsendMessageVarsSerializer
    implements StructuredSerializer<GsendMessageVars> {
  @override
  final Iterable<Type> types = const [GsendMessageVars, _$GsendMessageVars];
  @override
  final String wireName = 'GsendMessageVars';

  @override
  Iterable<Object?> serialize(Serializers serializers, GsendMessageVars object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      'threadId',
      serializers.serialize(object.threadId,
          specifiedType: const FullType(int)),
    ];
    Object? value;
    value = object.content;
    if (value != null) {
      result
        ..add('content')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.type;
    if (value != null) {
      result
        ..add('type')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.startDate;
    if (value != null) {
      result
        ..add('startDate')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.endDate;
    if (value != null) {
      result
        ..add('endDate')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.personCapacity;
    if (value != null) {
      result
        ..add('personCapacity')
        ..add(serializers.serialize(value, specifiedType: const FullType(int)));
    }
    value = object.startTime;
    if (value != null) {
      result
        ..add('startTime')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(double)));
    }
    value = object.endTime;
    if (value != null) {
      result
        ..add('endTime')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(double)));
    }
    return result;
  }

  @override
  GsendMessageVars deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GsendMessageVarsBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'threadId':
          result.threadId = serializers.deserialize(value,
              specifiedType: const FullType(int))! as int;
          break;
        case 'content':
          result.content = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'type':
          result.type = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'startDate':
          result.startDate = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'endDate':
          result.endDate = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'personCapacity':
          result.personCapacity = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int?;
          break;
        case 'startTime':
          result.startTime = serializers.deserialize(value,
              specifiedType: const FullType(double)) as double?;
          break;
        case 'endTime':
          result.endTime = serializers.deserialize(value,
              specifiedType: const FullType(double)) as double?;
          break;
      }
    }

    return result.build();
  }
}

class _$GreadMessageVarsSerializer
    implements StructuredSerializer<GreadMessageVars> {
  @override
  final Iterable<Type> types = const [GreadMessageVars, _$GreadMessageVars];
  @override
  final String wireName = 'GreadMessageVars';

  @override
  Iterable<Object?> serialize(Serializers serializers, GreadMessageVars object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      'threadId',
      serializers.serialize(object.threadId,
          specifiedType: const FullType(int)),
    ];

    return result;
  }

  @override
  GreadMessageVars deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GreadMessageVarsBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'threadId':
          result.threadId = serializers.deserialize(value,
              specifiedType: const FullType(int))! as int;
          break;
      }
    }

    return result.build();
  }
}

class _$GgetUnReadThreadCountVarsSerializer
    implements StructuredSerializer<GgetUnReadThreadCountVars> {
  @override
  final Iterable<Type> types = const [
    GgetUnReadThreadCountVars,
    _$GgetUnReadThreadCountVars
  ];
  @override
  final String wireName = 'GgetUnReadThreadCountVars';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, GgetUnReadThreadCountVars object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[];
    Object? value;
    value = object.threadId;
    if (value != null) {
      result
        ..add('threadId')
        ..add(serializers.serialize(value, specifiedType: const FullType(int)));
    }
    return result;
  }

  @override
  GgetUnReadThreadCountVars deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GgetUnReadThreadCountVarsBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'threadId':
          result.threadId = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int?;
          break;
      }
    }

    return result.build();
  }
}

class _$GgetAllThreadsVars extends GgetAllThreadsVars {
  @override
  final String? threadType;
  @override
  final int? threadId;
  @override
  final int? currentPage;

  factory _$GgetAllThreadsVars(
          [void Function(GgetAllThreadsVarsBuilder)? updates]) =>
      (new GgetAllThreadsVarsBuilder()..update(updates))._build();

  _$GgetAllThreadsVars._({this.threadType, this.threadId, this.currentPage})
      : super._();

  @override
  GgetAllThreadsVars rebuild(
          void Function(GgetAllThreadsVarsBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GgetAllThreadsVarsBuilder toBuilder() =>
      new GgetAllThreadsVarsBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GgetAllThreadsVars &&
        threadType == other.threadType &&
        threadId == other.threadId &&
        currentPage == other.currentPage;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, threadType.hashCode);
    _$hash = $jc(_$hash, threadId.hashCode);
    _$hash = $jc(_$hash, currentPage.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'GgetAllThreadsVars')
          ..add('threadType', threadType)
          ..add('threadId', threadId)
          ..add('currentPage', currentPage))
        .toString();
  }
}

class GgetAllThreadsVarsBuilder
    implements Builder<GgetAllThreadsVars, GgetAllThreadsVarsBuilder> {
  _$GgetAllThreadsVars? _$v;

  String? _threadType;
  String? get threadType => _$this._threadType;
  set threadType(String? threadType) => _$this._threadType = threadType;

  int? _threadId;
  int? get threadId => _$this._threadId;
  set threadId(int? threadId) => _$this._threadId = threadId;

  int? _currentPage;
  int? get currentPage => _$this._currentPage;
  set currentPage(int? currentPage) => _$this._currentPage = currentPage;

  GgetAllThreadsVarsBuilder();

  GgetAllThreadsVarsBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _threadType = $v.threadType;
      _threadId = $v.threadId;
      _currentPage = $v.currentPage;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GgetAllThreadsVars other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GgetAllThreadsVars;
  }

  @override
  void update(void Function(GgetAllThreadsVarsBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GgetAllThreadsVars build() => _build();

  _$GgetAllThreadsVars _build() {
    final _$result = _$v ??
        new _$GgetAllThreadsVars._(
            threadType: threadType,
            threadId: threadId,
            currentPage: currentPage);
    replace(_$result);
    return _$result;
  }
}

class _$GgetUnReadCountVars extends GgetUnReadCountVars {
  factory _$GgetUnReadCountVars(
          [void Function(GgetUnReadCountVarsBuilder)? updates]) =>
      (new GgetUnReadCountVarsBuilder()..update(updates))._build();

  _$GgetUnReadCountVars._() : super._();

  @override
  GgetUnReadCountVars rebuild(
          void Function(GgetUnReadCountVarsBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GgetUnReadCountVarsBuilder toBuilder() =>
      new GgetUnReadCountVarsBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GgetUnReadCountVars;
  }

  @override
  int get hashCode {
    return 823700775;
  }

  @override
  String toString() {
    return newBuiltValueToStringHelper(r'GgetUnReadCountVars').toString();
  }
}

class GgetUnReadCountVarsBuilder
    implements Builder<GgetUnReadCountVars, GgetUnReadCountVarsBuilder> {
  _$GgetUnReadCountVars? _$v;

  GgetUnReadCountVarsBuilder();

  @override
  void replace(GgetUnReadCountVars other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GgetUnReadCountVars;
  }

  @override
  void update(void Function(GgetUnReadCountVarsBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GgetUnReadCountVars build() => _build();

  _$GgetUnReadCountVars _build() {
    final _$result = _$v ?? new _$GgetUnReadCountVars._();
    replace(_$result);
    return _$result;
  }
}

class _$GgetThreadsVars extends GgetThreadsVars {
  @override
  final String? threadType;
  @override
  final int? threadId;
  @override
  final int? currentPage;

  factory _$GgetThreadsVars([void Function(GgetThreadsVarsBuilder)? updates]) =>
      (new GgetThreadsVarsBuilder()..update(updates))._build();

  _$GgetThreadsVars._({this.threadType, this.threadId, this.currentPage})
      : super._();

  @override
  GgetThreadsVars rebuild(void Function(GgetThreadsVarsBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GgetThreadsVarsBuilder toBuilder() =>
      new GgetThreadsVarsBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GgetThreadsVars &&
        threadType == other.threadType &&
        threadId == other.threadId &&
        currentPage == other.currentPage;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, threadType.hashCode);
    _$hash = $jc(_$hash, threadId.hashCode);
    _$hash = $jc(_$hash, currentPage.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'GgetThreadsVars')
          ..add('threadType', threadType)
          ..add('threadId', threadId)
          ..add('currentPage', currentPage))
        .toString();
  }
}

class GgetThreadsVarsBuilder
    implements Builder<GgetThreadsVars, GgetThreadsVarsBuilder> {
  _$GgetThreadsVars? _$v;

  String? _threadType;
  String? get threadType => _$this._threadType;
  set threadType(String? threadType) => _$this._threadType = threadType;

  int? _threadId;
  int? get threadId => _$this._threadId;
  set threadId(int? threadId) => _$this._threadId = threadId;

  int? _currentPage;
  int? get currentPage => _$this._currentPage;
  set currentPage(int? currentPage) => _$this._currentPage = currentPage;

  GgetThreadsVarsBuilder();

  GgetThreadsVarsBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _threadType = $v.threadType;
      _threadId = $v.threadId;
      _currentPage = $v.currentPage;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GgetThreadsVars other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GgetThreadsVars;
  }

  @override
  void update(void Function(GgetThreadsVarsBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GgetThreadsVars build() => _build();

  _$GgetThreadsVars _build() {
    final _$result = _$v ??
        new _$GgetThreadsVars._(
            threadType: threadType,
            threadId: threadId,
            currentPage: currentPage);
    replace(_$result);
    return _$result;
  }
}

class _$GsendMessageVars extends GsendMessageVars {
  @override
  final int threadId;
  @override
  final String? content;
  @override
  final String? type;
  @override
  final String? startDate;
  @override
  final String? endDate;
  @override
  final int? personCapacity;
  @override
  final double? startTime;
  @override
  final double? endTime;

  factory _$GsendMessageVars(
          [void Function(GsendMessageVarsBuilder)? updates]) =>
      (new GsendMessageVarsBuilder()..update(updates))._build();

  _$GsendMessageVars._(
      {required this.threadId,
      this.content,
      this.type,
      this.startDate,
      this.endDate,
      this.personCapacity,
      this.startTime,
      this.endTime})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        threadId, r'GsendMessageVars', 'threadId');
  }

  @override
  GsendMessageVars rebuild(void Function(GsendMessageVarsBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GsendMessageVarsBuilder toBuilder() =>
      new GsendMessageVarsBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GsendMessageVars &&
        threadId == other.threadId &&
        content == other.content &&
        type == other.type &&
        startDate == other.startDate &&
        endDate == other.endDate &&
        personCapacity == other.personCapacity &&
        startTime == other.startTime &&
        endTime == other.endTime;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, threadId.hashCode);
    _$hash = $jc(_$hash, content.hashCode);
    _$hash = $jc(_$hash, type.hashCode);
    _$hash = $jc(_$hash, startDate.hashCode);
    _$hash = $jc(_$hash, endDate.hashCode);
    _$hash = $jc(_$hash, personCapacity.hashCode);
    _$hash = $jc(_$hash, startTime.hashCode);
    _$hash = $jc(_$hash, endTime.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'GsendMessageVars')
          ..add('threadId', threadId)
          ..add('content', content)
          ..add('type', type)
          ..add('startDate', startDate)
          ..add('endDate', endDate)
          ..add('personCapacity', personCapacity)
          ..add('startTime', startTime)
          ..add('endTime', endTime))
        .toString();
  }
}

class GsendMessageVarsBuilder
    implements Builder<GsendMessageVars, GsendMessageVarsBuilder> {
  _$GsendMessageVars? _$v;

  int? _threadId;
  int? get threadId => _$this._threadId;
  set threadId(int? threadId) => _$this._threadId = threadId;

  String? _content;
  String? get content => _$this._content;
  set content(String? content) => _$this._content = content;

  String? _type;
  String? get type => _$this._type;
  set type(String? type) => _$this._type = type;

  String? _startDate;
  String? get startDate => _$this._startDate;
  set startDate(String? startDate) => _$this._startDate = startDate;

  String? _endDate;
  String? get endDate => _$this._endDate;
  set endDate(String? endDate) => _$this._endDate = endDate;

  int? _personCapacity;
  int? get personCapacity => _$this._personCapacity;
  set personCapacity(int? personCapacity) =>
      _$this._personCapacity = personCapacity;

  double? _startTime;
  double? get startTime => _$this._startTime;
  set startTime(double? startTime) => _$this._startTime = startTime;

  double? _endTime;
  double? get endTime => _$this._endTime;
  set endTime(double? endTime) => _$this._endTime = endTime;

  GsendMessageVarsBuilder();

  GsendMessageVarsBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _threadId = $v.threadId;
      _content = $v.content;
      _type = $v.type;
      _startDate = $v.startDate;
      _endDate = $v.endDate;
      _personCapacity = $v.personCapacity;
      _startTime = $v.startTime;
      _endTime = $v.endTime;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GsendMessageVars other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GsendMessageVars;
  }

  @override
  void update(void Function(GsendMessageVarsBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GsendMessageVars build() => _build();

  _$GsendMessageVars _build() {
    final _$result = _$v ??
        new _$GsendMessageVars._(
            threadId: BuiltValueNullFieldError.checkNotNull(
                threadId, r'GsendMessageVars', 'threadId'),
            content: content,
            type: type,
            startDate: startDate,
            endDate: endDate,
            personCapacity: personCapacity,
            startTime: startTime,
            endTime: endTime);
    replace(_$result);
    return _$result;
  }
}

class _$GreadMessageVars extends GreadMessageVars {
  @override
  final int threadId;

  factory _$GreadMessageVars(
          [void Function(GreadMessageVarsBuilder)? updates]) =>
      (new GreadMessageVarsBuilder()..update(updates))._build();

  _$GreadMessageVars._({required this.threadId}) : super._() {
    BuiltValueNullFieldError.checkNotNull(
        threadId, r'GreadMessageVars', 'threadId');
  }

  @override
  GreadMessageVars rebuild(void Function(GreadMessageVarsBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GreadMessageVarsBuilder toBuilder() =>
      new GreadMessageVarsBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GreadMessageVars && threadId == other.threadId;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, threadId.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'GreadMessageVars')
          ..add('threadId', threadId))
        .toString();
  }
}

class GreadMessageVarsBuilder
    implements Builder<GreadMessageVars, GreadMessageVarsBuilder> {
  _$GreadMessageVars? _$v;

  int? _threadId;
  int? get threadId => _$this._threadId;
  set threadId(int? threadId) => _$this._threadId = threadId;

  GreadMessageVarsBuilder();

  GreadMessageVarsBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _threadId = $v.threadId;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GreadMessageVars other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GreadMessageVars;
  }

  @override
  void update(void Function(GreadMessageVarsBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GreadMessageVars build() => _build();

  _$GreadMessageVars _build() {
    final _$result = _$v ??
        new _$GreadMessageVars._(
            threadId: BuiltValueNullFieldError.checkNotNull(
                threadId, r'GreadMessageVars', 'threadId'));
    replace(_$result);
    return _$result;
  }
}

class _$GgetUnReadThreadCountVars extends GgetUnReadThreadCountVars {
  @override
  final int? threadId;

  factory _$GgetUnReadThreadCountVars(
          [void Function(GgetUnReadThreadCountVarsBuilder)? updates]) =>
      (new GgetUnReadThreadCountVarsBuilder()..update(updates))._build();

  _$GgetUnReadThreadCountVars._({this.threadId}) : super._();

  @override
  GgetUnReadThreadCountVars rebuild(
          void Function(GgetUnReadThreadCountVarsBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GgetUnReadThreadCountVarsBuilder toBuilder() =>
      new GgetUnReadThreadCountVarsBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GgetUnReadThreadCountVars && threadId == other.threadId;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, threadId.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'GgetUnReadThreadCountVars')
          ..add('threadId', threadId))
        .toString();
  }
}

class GgetUnReadThreadCountVarsBuilder
    implements
        Builder<GgetUnReadThreadCountVars, GgetUnReadThreadCountVarsBuilder> {
  _$GgetUnReadThreadCountVars? _$v;

  int? _threadId;
  int? get threadId => _$this._threadId;
  set threadId(int? threadId) => _$this._threadId = threadId;

  GgetUnReadThreadCountVarsBuilder();

  GgetUnReadThreadCountVarsBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _threadId = $v.threadId;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GgetUnReadThreadCountVars other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GgetUnReadThreadCountVars;
  }

  @override
  void update(void Function(GgetUnReadThreadCountVarsBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GgetUnReadThreadCountVars build() => _build();

  _$GgetUnReadThreadCountVars _build() {
    final _$result =
        _$v ?? new _$GgetUnReadThreadCountVars._(threadId: threadId);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
