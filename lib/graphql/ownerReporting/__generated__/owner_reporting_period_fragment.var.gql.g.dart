// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'owner_reporting_period_fragment.var.gql.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<GownerReportingPeriodFragmentVars>
    _$gownerReportingPeriodFragmentVarsSerializer =
    new _$GownerReportingPeriodFragmentVarsSerializer();

class _$GownerReportingPeriodFragmentVarsSerializer
    implements StructuredSerializer<GownerReportingPeriodFragmentVars> {
  @override
  final Iterable<Type> types = const [
    GownerReportingPeriodFragmentVars,
    _$GownerReportingPeriodFragmentVars
  ];
  @override
  final String wireName = 'GownerReportingPeriodFragmentVars';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, GownerReportingPeriodFragmentVars object,
      {FullType specifiedType = FullType.unspecified}) {
    return <Object?>[];
  }

  @override
  GownerReportingPeriodFragmentVars deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    return new GownerReportingPeriodFragmentVarsBuilder().build();
  }
}

class _$GownerReportingPeriodFragmentVars
    extends GownerReportingPeriodFragmentVars {
  factory _$GownerReportingPeriodFragmentVars(
          [void Function(GownerReportingPeriodFragmentVarsBuilder)? updates]) =>
      (new GownerReportingPeriodFragmentVarsBuilder()..update(updates))
          ._build();

  _$GownerReportingPeriodFragmentVars._() : super._();

  @override
  GownerReportingPeriodFragmentVars rebuild(
          void Function(GownerReportingPeriodFragmentVarsBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GownerReportingPeriodFragmentVarsBuilder toBuilder() =>
      new GownerReportingPeriodFragmentVarsBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GownerReportingPeriodFragmentVars;
  }

  @override
  int get hashCode {
    return 28935856;
  }

  @override
  String toString() {
    return newBuiltValueToStringHelper(r'GownerReportingPeriodFragmentVars')
        .toString();
  }
}

class GownerReportingPeriodFragmentVarsBuilder
    implements
        Builder<GownerReportingPeriodFragmentVars,
            GownerReportingPeriodFragmentVarsBuilder> {
  _$GownerReportingPeriodFragmentVars? _$v;

  GownerReportingPeriodFragmentVarsBuilder();

  @override
  void replace(GownerReportingPeriodFragmentVars other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GownerReportingPeriodFragmentVars;
  }

  @override
  void update(
      void Function(GownerReportingPeriodFragmentVarsBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GownerReportingPeriodFragmentVars build() => _build();

  _$GownerReportingPeriodFragmentVars _build() {
    final _$result = _$v ?? new _$GownerReportingPeriodFragmentVars._();
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
