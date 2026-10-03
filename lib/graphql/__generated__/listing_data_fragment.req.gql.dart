// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:ferry_exec/ferry_exec.dart' as _i1;
import 'package:gozy/graphql/__generated__/listing_data_fragment.ast.gql.dart'
    as _i4;
import 'package:gozy/graphql/__generated__/listing_data_fragment.data.gql.dart'
    as _i2;
import 'package:gozy/graphql/__generated__/listing_data_fragment.var.gql.dart'
    as _i3;
import 'package:gozy/graphql/__generated__/serializers.gql.dart' as _i6;
import 'package:gql/ast.dart' as _i5;

part 'listing_data_fragment.req.gql.g.dart';

abstract class GlistingDataFragmentReq
    implements
        Built<GlistingDataFragmentReq, GlistingDataFragmentReqBuilder>,
        _i1.FragmentRequest<_i2.GlistingDataFragmentData,
            _i3.GlistingDataFragmentVars> {
  GlistingDataFragmentReq._();

  factory GlistingDataFragmentReq(
          [void Function(GlistingDataFragmentReqBuilder b) updates]) =
      _$GlistingDataFragmentReq;

  static void _initializeBuilder(GlistingDataFragmentReqBuilder b) => b
    ..document = _i4.document
    ..fragmentName = 'listingDataFragment';

  @override
  _i3.GlistingDataFragmentVars get vars;
  @override
  _i5.DocumentNode get document;
  @override
  String? get fragmentName;
  @override
  Map<String, dynamic> get idFields;
  @override
  _i2.GlistingDataFragmentData? parseData(Map<String, dynamic> json) =>
      _i2.GlistingDataFragmentData.fromJson(json);

  @override
  Map<String, dynamic> varsToJson() => vars.toJson();

  @override
  Map<String, dynamic> dataToJson(_i2.GlistingDataFragmentData data) =>
      data.toJson();

  static Serializer<GlistingDataFragmentReq> get serializer =>
      _$glistingDataFragmentReqSerializer;

  Map<String, dynamic> toJson() => (_i6.serializers.serializeWith(
        GlistingDataFragmentReq.serializer,
        this,
      ) as Map<String, dynamic>);

  static GlistingDataFragmentReq? fromJson(Map<String, dynamic> json) =>
      _i6.serializers.deserializeWith(
        GlistingDataFragmentReq.serializer,
        json,
      );
}

abstract class GcancellationDataFragmentReq
    implements
        Built<GcancellationDataFragmentReq,
            GcancellationDataFragmentReqBuilder>,
        _i1.FragmentRequest<_i2.GcancellationDataFragmentData,
            _i3.GcancellationDataFragmentVars> {
  GcancellationDataFragmentReq._();

  factory GcancellationDataFragmentReq(
          [void Function(GcancellationDataFragmentReqBuilder b) updates]) =
      _$GcancellationDataFragmentReq;

  static void _initializeBuilder(GcancellationDataFragmentReqBuilder b) => b
    ..document = _i4.document
    ..fragmentName = 'cancellationDataFragment';

  @override
  _i3.GcancellationDataFragmentVars get vars;
  @override
  _i5.DocumentNode get document;
  @override
  String? get fragmentName;
  @override
  Map<String, dynamic> get idFields;
  @override
  _i2.GcancellationDataFragmentData? parseData(Map<String, dynamic> json) =>
      _i2.GcancellationDataFragmentData.fromJson(json);

  @override
  Map<String, dynamic> varsToJson() => vars.toJson();

  @override
  Map<String, dynamic> dataToJson(_i2.GcancellationDataFragmentData data) =>
      data.toJson();

  static Serializer<GcancellationDataFragmentReq> get serializer =>
      _$gcancellationDataFragmentReqSerializer;

  Map<String, dynamic> toJson() => (_i6.serializers.serializeWith(
        GcancellationDataFragmentReq.serializer,
        this,
      ) as Map<String, dynamic>);

  static GcancellationDataFragmentReq? fromJson(Map<String, dynamic> json) =>
      _i6.serializers.deserializeWith(
        GcancellationDataFragmentReq.serializer,
        json,
      );
}
