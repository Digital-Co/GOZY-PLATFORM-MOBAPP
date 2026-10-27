// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'reservation_option_snapshot_fragment.var.gql.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<GreservationOptionSnapshotFragmentVars>
    _$greservationOptionSnapshotFragmentVarsSerializer =
    new _$GreservationOptionSnapshotFragmentVarsSerializer();

class _$GreservationOptionSnapshotFragmentVarsSerializer
    implements StructuredSerializer<GreservationOptionSnapshotFragmentVars> {
  @override
  final Iterable<Type> types = const [
    GreservationOptionSnapshotFragmentVars,
    _$GreservationOptionSnapshotFragmentVars
  ];
  @override
  final String wireName = 'GreservationOptionSnapshotFragmentVars';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, GreservationOptionSnapshotFragmentVars object,
      {FullType specifiedType = FullType.unspecified}) {
    return <Object?>[];
  }

  @override
  GreservationOptionSnapshotFragmentVars deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    return new GreservationOptionSnapshotFragmentVarsBuilder().build();
  }
}

class _$GreservationOptionSnapshotFragmentVars
    extends GreservationOptionSnapshotFragmentVars {
  factory _$GreservationOptionSnapshotFragmentVars(
          [void Function(GreservationOptionSnapshotFragmentVarsBuilder)?
              updates]) =>
      (new GreservationOptionSnapshotFragmentVarsBuilder()..update(updates))
          ._build();

  _$GreservationOptionSnapshotFragmentVars._() : super._();

  @override
  GreservationOptionSnapshotFragmentVars rebuild(
          void Function(GreservationOptionSnapshotFragmentVarsBuilder)
              updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GreservationOptionSnapshotFragmentVarsBuilder toBuilder() =>
      new GreservationOptionSnapshotFragmentVarsBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GreservationOptionSnapshotFragmentVars;
  }

  @override
  int get hashCode {
    return 283184;
  }

  @override
  String toString() {
    return newBuiltValueToStringHelper(
            r'GreservationOptionSnapshotFragmentVars')
        .toString();
  }
}

class GreservationOptionSnapshotFragmentVarsBuilder
    implements
        Builder<GreservationOptionSnapshotFragmentVars,
            GreservationOptionSnapshotFragmentVarsBuilder> {
  _$GreservationOptionSnapshotFragmentVars? _$v;

  GreservationOptionSnapshotFragmentVarsBuilder();

  @override
  void replace(GreservationOptionSnapshotFragmentVars other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GreservationOptionSnapshotFragmentVars;
  }

  @override
  void update(
      void Function(GreservationOptionSnapshotFragmentVarsBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GreservationOptionSnapshotFragmentVars build() => _build();

  _$GreservationOptionSnapshotFragmentVars _build() {
    final _$result = _$v ?? new _$GreservationOptionSnapshotFragmentVars._();
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
