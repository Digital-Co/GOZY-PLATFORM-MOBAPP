// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'static_page_content.var.gql.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<GgetStaticPageContentVars> _$ggetStaticPageContentVarsSerializer =
    new _$GgetStaticPageContentVarsSerializer();

class _$GgetStaticPageContentVarsSerializer
    implements StructuredSerializer<GgetStaticPageContentVars> {
  @override
  final Iterable<Type> types = const [
    GgetStaticPageContentVars,
    _$GgetStaticPageContentVars
  ];
  @override
  final String wireName = 'GgetStaticPageContentVars';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, GgetStaticPageContentVars object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[];
    Object? value;
    value = object.id;
    if (value != null) {
      result
        ..add('id')
        ..add(serializers.serialize(value, specifiedType: const FullType(int)));
    }
    return result;
  }

  @override
  GgetStaticPageContentVars deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GgetStaticPageContentVarsBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'id':
          result.id = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int?;
          break;
      }
    }

    return result.build();
  }
}

class _$GgetStaticPageContentVars extends GgetStaticPageContentVars {
  @override
  final int? id;

  factory _$GgetStaticPageContentVars(
          [void Function(GgetStaticPageContentVarsBuilder)? updates]) =>
      (new GgetStaticPageContentVarsBuilder()..update(updates))._build();

  _$GgetStaticPageContentVars._({this.id}) : super._();

  @override
  GgetStaticPageContentVars rebuild(
          void Function(GgetStaticPageContentVarsBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GgetStaticPageContentVarsBuilder toBuilder() =>
      new GgetStaticPageContentVarsBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GgetStaticPageContentVars && id == other.id;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, id.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'GgetStaticPageContentVars')
          ..add('id', id))
        .toString();
  }
}

class GgetStaticPageContentVarsBuilder
    implements
        Builder<GgetStaticPageContentVars, GgetStaticPageContentVarsBuilder> {
  _$GgetStaticPageContentVars? _$v;

  int? _id;
  int? get id => _$this._id;
  set id(int? id) => _$this._id = id;

  GgetStaticPageContentVarsBuilder();

  GgetStaticPageContentVarsBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _id = $v.id;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GgetStaticPageContentVars other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GgetStaticPageContentVars;
  }

  @override
  void update(void Function(GgetStaticPageContentVarsBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GgetStaticPageContentVars build() => _build();

  _$GgetStaticPageContentVars _build() {
    final _$result = _$v ?? new _$GgetStaticPageContentVars._(id: id);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
