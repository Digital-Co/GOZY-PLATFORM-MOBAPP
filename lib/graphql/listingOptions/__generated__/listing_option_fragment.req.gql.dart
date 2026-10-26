// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:ferry_exec/ferry_exec.dart' as _i1;
import 'package:gozy/graphql/__generated__/serializers.gql.dart' as _i6;
import 'package:gozy/graphql/listingOptions/__generated__/listing_option_fragment.ast.gql.dart'
    as _i4;
import 'package:gozy/graphql/listingOptions/__generated__/listing_option_fragment.data.gql.dart'
    as _i2;
import 'package:gozy/graphql/listingOptions/__generated__/listing_option_fragment.var.gql.dart'
    as _i3;
import 'package:gql/ast.dart' as _i5;

part 'listing_option_fragment.req.gql.g.dart';

abstract class GlistingOptionFragmentReq
    implements
        Built<GlistingOptionFragmentReq, GlistingOptionFragmentReqBuilder>,
        _i1.FragmentRequest<_i2.GlistingOptionFragmentData,
            _i3.GlistingOptionFragmentVars> {
  GlistingOptionFragmentReq._();

  factory GlistingOptionFragmentReq(
          [void Function(GlistingOptionFragmentReqBuilder b) updates]) =
      _$GlistingOptionFragmentReq;

  static void _initializeBuilder(GlistingOptionFragmentReqBuilder b) => b
    ..document = _i4.document
    ..fragmentName = 'listingOptionFragment';

  @override
  _i3.GlistingOptionFragmentVars get vars;
  @override
  _i5.DocumentNode get document;
  @override
  String? get fragmentName;
  @override
  Map<String, dynamic> get idFields;
  @override
  _i2.GlistingOptionFragmentData? parseData(Map<String, dynamic> json) =>
      _i2.GlistingOptionFragmentData.fromJson(json);

  @override
  Map<String, dynamic> varsToJson() => vars.toJson();

  @override
  Map<String, dynamic> dataToJson(_i2.GlistingOptionFragmentData data) =>
      data.toJson();

  static Serializer<GlistingOptionFragmentReq> get serializer =>
      _$glistingOptionFragmentReqSerializer;

  Map<String, dynamic> toJson() => (_i6.serializers.serializeWith(
        GlistingOptionFragmentReq.serializer,
        this,
      ) as Map<String, dynamic>);

  static GlistingOptionFragmentReq? fromJson(Map<String, dynamic> json) =>
      _i6.serializers.deserializeWith(
        GlistingOptionFragmentReq.serializer,
        json,
      );
}

abstract class GbookingOptionLineFragmentReq
    implements
        Built<GbookingOptionLineFragmentReq,
            GbookingOptionLineFragmentReqBuilder>,
        _i1.FragmentRequest<_i2.GbookingOptionLineFragmentData,
            _i3.GbookingOptionLineFragmentVars> {
  GbookingOptionLineFragmentReq._();

  factory GbookingOptionLineFragmentReq(
          [void Function(GbookingOptionLineFragmentReqBuilder b) updates]) =
      _$GbookingOptionLineFragmentReq;

  static void _initializeBuilder(GbookingOptionLineFragmentReqBuilder b) => b
    ..document = _i4.document
    ..fragmentName = 'bookingOptionLineFragment';

  @override
  _i3.GbookingOptionLineFragmentVars get vars;
  @override
  _i5.DocumentNode get document;
  @override
  String? get fragmentName;
  @override
  Map<String, dynamic> get idFields;
  @override
  _i2.GbookingOptionLineFragmentData? parseData(Map<String, dynamic> json) =>
      _i2.GbookingOptionLineFragmentData.fromJson(json);

  @override
  Map<String, dynamic> varsToJson() => vars.toJson();

  @override
  Map<String, dynamic> dataToJson(_i2.GbookingOptionLineFragmentData data) =>
      data.toJson();

  static Serializer<GbookingOptionLineFragmentReq> get serializer =>
      _$gbookingOptionLineFragmentReqSerializer;

  Map<String, dynamic> toJson() => (_i6.serializers.serializeWith(
        GbookingOptionLineFragmentReq.serializer,
        this,
      ) as Map<String, dynamic>);

  static GbookingOptionLineFragmentReq? fromJson(Map<String, dynamic> json) =>
      _i6.serializers.deserializeWith(
        GbookingOptionLineFragmentReq.serializer,
        json,
      );
}

abstract class GreservationOptionSnapshotFragmentReq
    implements
        Built<GreservationOptionSnapshotFragmentReq,
            GreservationOptionSnapshotFragmentReqBuilder>,
        _i1.FragmentRequest<_i2.GreservationOptionSnapshotFragmentData,
            _i3.GreservationOptionSnapshotFragmentVars> {
  GreservationOptionSnapshotFragmentReq._();

  factory GreservationOptionSnapshotFragmentReq(
      [void Function(GreservationOptionSnapshotFragmentReqBuilder b)
          updates]) = _$GreservationOptionSnapshotFragmentReq;

  static void _initializeBuilder(
          GreservationOptionSnapshotFragmentReqBuilder b) =>
      b
        ..document = _i4.document
        ..fragmentName = 'reservationOptionSnapshotFragment';

  @override
  _i3.GreservationOptionSnapshotFragmentVars get vars;
  @override
  _i5.DocumentNode get document;
  @override
  String? get fragmentName;
  @override
  Map<String, dynamic> get idFields;
  @override
  _i2.GreservationOptionSnapshotFragmentData? parseData(
          Map<String, dynamic> json) =>
      _i2.GreservationOptionSnapshotFragmentData.fromJson(json);

  @override
  Map<String, dynamic> varsToJson() => vars.toJson();

  @override
  Map<String, dynamic> dataToJson(
          _i2.GreservationOptionSnapshotFragmentData data) =>
      data.toJson();

  static Serializer<GreservationOptionSnapshotFragmentReq> get serializer =>
      _$greservationOptionSnapshotFragmentReqSerializer;

  Map<String, dynamic> toJson() => (_i6.serializers.serializeWith(
        GreservationOptionSnapshotFragmentReq.serializer,
        this,
      ) as Map<String, dynamic>);

  static GreservationOptionSnapshotFragmentReq? fromJson(
          Map<String, dynamic> json) =>
      _i6.serializers.deserializeWith(
        GreservationOptionSnapshotFragmentReq.serializer,
        json,
      );
}

abstract class GlistingOptionsResultFragmentReq
    implements
        Built<GlistingOptionsResultFragmentReq,
            GlistingOptionsResultFragmentReqBuilder>,
        _i1.FragmentRequest<_i2.GlistingOptionsResultFragmentData,
            _i3.GlistingOptionsResultFragmentVars> {
  GlistingOptionsResultFragmentReq._();

  factory GlistingOptionsResultFragmentReq(
          [void Function(GlistingOptionsResultFragmentReqBuilder b) updates]) =
      _$GlistingOptionsResultFragmentReq;

  static void _initializeBuilder(GlistingOptionsResultFragmentReqBuilder b) => b
    ..document = _i4.document
    ..fragmentName = 'listingOptionsResultFragment';

  @override
  _i3.GlistingOptionsResultFragmentVars get vars;
  @override
  _i5.DocumentNode get document;
  @override
  String? get fragmentName;
  @override
  Map<String, dynamic> get idFields;
  @override
  _i2.GlistingOptionsResultFragmentData? parseData(Map<String, dynamic> json) =>
      _i2.GlistingOptionsResultFragmentData.fromJson(json);

  @override
  Map<String, dynamic> varsToJson() => vars.toJson();

  @override
  Map<String, dynamic> dataToJson(_i2.GlistingOptionsResultFragmentData data) =>
      data.toJson();

  static Serializer<GlistingOptionsResultFragmentReq> get serializer =>
      _$glistingOptionsResultFragmentReqSerializer;

  Map<String, dynamic> toJson() => (_i6.serializers.serializeWith(
        GlistingOptionsResultFragmentReq.serializer,
        this,
      ) as Map<String, dynamic>);

  static GlistingOptionsResultFragmentReq? fromJson(
          Map<String, dynamic> json) =>
      _i6.serializers.deserializeWith(
        GlistingOptionsResultFragmentReq.serializer,
        json,
      );
}
