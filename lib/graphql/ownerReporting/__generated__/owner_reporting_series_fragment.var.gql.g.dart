// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'owner_reporting_series_fragment.var.gql.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<GownerReportingSeriesFragmentVars>
    _$gownerReportingSeriesFragmentVarsSerializer =
    new _$GownerReportingSeriesFragmentVarsSerializer();

class _$GownerReportingSeriesFragmentVarsSerializer
    implements StructuredSerializer<GownerReportingSeriesFragmentVars> {
  @override
  final Iterable<Type> types = const [
    GownerReportingSeriesFragmentVars,
    _$GownerReportingSeriesFragmentVars
  ];
  @override
  final String wireName = 'GownerReportingSeriesFragmentVars';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, GownerReportingSeriesFragmentVars object,
      {FullType specifiedType = FullType.unspecified}) {
    return <Object?>[];
  }

  @override
  GownerReportingSeriesFragmentVars deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    return new GownerReportingSeriesFragmentVarsBuilder().build();
  }
}

class _$GownerReportingSeriesFragmentVars
    extends GownerReportingSeriesFragmentVars {
  factory _$GownerReportingSeriesFragmentVars(
          [void Function(GownerReportingSeriesFragmentVarsBuilder)? updates]) =>
      (new GownerReportingSeriesFragmentVarsBuilder()..update(updates))
          ._build();

  _$GownerReportingSeriesFragmentVars._() : super._();

  @override
  GownerReportingSeriesFragmentVars rebuild(
          void Function(GownerReportingSeriesFragmentVarsBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GownerReportingSeriesFragmentVarsBuilder toBuilder() =>
      new GownerReportingSeriesFragmentVarsBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GownerReportingSeriesFragmentVars;
  }

  @override
  int get hashCode {
    return 951074219;
  }

  @override
  String toString() {
    return newBuiltValueToStringHelper(r'GownerReportingSeriesFragmentVars')
        .toString();
  }
}

class GownerReportingSeriesFragmentVarsBuilder
    implements
        Builder<GownerReportingSeriesFragmentVars,
            GownerReportingSeriesFragmentVarsBuilder> {
  _$GownerReportingSeriesFragmentVars? _$v;

  GownerReportingSeriesFragmentVarsBuilder();

  @override
  void replace(GownerReportingSeriesFragmentVars other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GownerReportingSeriesFragmentVars;
  }

  @override
  void update(
      void Function(GownerReportingSeriesFragmentVarsBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GownerReportingSeriesFragmentVars build() => _build();

  _$GownerReportingSeriesFragmentVars _build() {
    final _$result = _$v ?? new _$GownerReportingSeriesFragmentVars._();
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
