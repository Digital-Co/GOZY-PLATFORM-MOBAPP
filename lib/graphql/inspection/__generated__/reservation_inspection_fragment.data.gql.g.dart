// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'reservation_inspection_fragment.data.gql.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<GreservationInspectionFragmentData>
    _$greservationInspectionFragmentDataSerializer =
    new _$GreservationInspectionFragmentDataSerializer();

class _$GreservationInspectionFragmentDataSerializer
    implements StructuredSerializer<GreservationInspectionFragmentData> {
  @override
  final Iterable<Type> types = const [
    GreservationInspectionFragmentData,
    _$GreservationInspectionFragmentData
  ];
  @override
  final String wireName = 'GreservationInspectionFragmentData';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, GreservationInspectionFragmentData object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      '__typename',
      serializers.serialize(object.G__typename,
          specifiedType: const FullType(String)),
    ];
    Object? value;
    value = object.id;
    if (value != null) {
      result
        ..add('id')
        ..add(serializers.serialize(value, specifiedType: const FullType(int)));
    }
    value = object.inspectionStatus;
    if (value != null) {
      result
        ..add('inspectionStatus')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.closureState;
    if (value != null) {
      result
        ..add('closureState')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    return result;
  }

  @override
  GreservationInspectionFragmentData deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GreservationInspectionFragmentDataBuilder();

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
        case 'id':
          result.id = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int?;
          break;
        case 'inspectionStatus':
          result.inspectionStatus = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'closureState':
          result.closureState = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
      }
    }

    return result.build();
  }
}

class _$GreservationInspectionFragmentData
    extends GreservationInspectionFragmentData {
  @override
  final String G__typename;
  @override
  final int? id;
  @override
  final String? inspectionStatus;
  @override
  final String? closureState;

  factory _$GreservationInspectionFragmentData(
          [void Function(GreservationInspectionFragmentDataBuilder)?
              updates]) =>
      (new GreservationInspectionFragmentDataBuilder()..update(updates))
          ._build();

  _$GreservationInspectionFragmentData._(
      {required this.G__typename,
      this.id,
      this.inspectionStatus,
      this.closureState})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        G__typename, r'GreservationInspectionFragmentData', 'G__typename');
  }

  @override
  GreservationInspectionFragmentData rebuild(
          void Function(GreservationInspectionFragmentDataBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GreservationInspectionFragmentDataBuilder toBuilder() =>
      new GreservationInspectionFragmentDataBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GreservationInspectionFragmentData &&
        G__typename == other.G__typename &&
        id == other.id &&
        inspectionStatus == other.inspectionStatus &&
        closureState == other.closureState;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, G__typename.hashCode);
    _$hash = $jc(_$hash, id.hashCode);
    _$hash = $jc(_$hash, inspectionStatus.hashCode);
    _$hash = $jc(_$hash, closureState.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'GreservationInspectionFragmentData')
          ..add('G__typename', G__typename)
          ..add('id', id)
          ..add('inspectionStatus', inspectionStatus)
          ..add('closureState', closureState))
        .toString();
  }
}

class GreservationInspectionFragmentDataBuilder
    implements
        Builder<GreservationInspectionFragmentData,
            GreservationInspectionFragmentDataBuilder> {
  _$GreservationInspectionFragmentData? _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  int? _id;
  int? get id => _$this._id;
  set id(int? id) => _$this._id = id;

  String? _inspectionStatus;
  String? get inspectionStatus => _$this._inspectionStatus;
  set inspectionStatus(String? inspectionStatus) =>
      _$this._inspectionStatus = inspectionStatus;

  String? _closureState;
  String? get closureState => _$this._closureState;
  set closureState(String? closureState) => _$this._closureState = closureState;

  GreservationInspectionFragmentDataBuilder() {
    GreservationInspectionFragmentData._initializeBuilder(this);
  }

  GreservationInspectionFragmentDataBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _G__typename = $v.G__typename;
      _id = $v.id;
      _inspectionStatus = $v.inspectionStatus;
      _closureState = $v.closureState;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GreservationInspectionFragmentData other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GreservationInspectionFragmentData;
  }

  @override
  void update(
      void Function(GreservationInspectionFragmentDataBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GreservationInspectionFragmentData build() => _build();

  _$GreservationInspectionFragmentData _build() {
    final _$result = _$v ??
        new _$GreservationInspectionFragmentData._(
            G__typename: BuiltValueNullFieldError.checkNotNull(G__typename,
                r'GreservationInspectionFragmentData', 'G__typename'),
            id: id,
            inspectionStatus: inspectionStatus,
            closureState: closureState);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
