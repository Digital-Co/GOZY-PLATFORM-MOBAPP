// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:ferry_exec/ferry_exec.dart' as _i1;
import 'package:gozy/graphql/__generated__/listing_settings_fragment.ast.gql.dart'
    as _i4;
import 'package:gozy/graphql/__generated__/listing_settings_fragment.data.gql.dart'
    as _i2;
import 'package:gozy/graphql/__generated__/listing_settings_fragment.var.gql.dart'
    as _i3;
import 'package:gozy/graphql/__generated__/serializers.gql.dart' as _i6;
import 'package:gql/ast.dart' as _i5;

part 'listing_settings_fragment.req.gql.g.dart';

abstract class GlistingSettingsFragmentReq
    implements
        Built<GlistingSettingsFragmentReq, GlistingSettingsFragmentReqBuilder>,
        _i1.FragmentRequest<_i2.GlistingSettingsFragmentData,
            _i3.GlistingSettingsFragmentVars> {
  GlistingSettingsFragmentReq._();

  factory GlistingSettingsFragmentReq(
          [void Function(GlistingSettingsFragmentReqBuilder b) updates]) =
      _$GlistingSettingsFragmentReq;

  static void _initializeBuilder(GlistingSettingsFragmentReqBuilder b) => b
    ..document = _i4.document
    ..fragmentName = 'listingSettingsFragment';

  @override
  _i3.GlistingSettingsFragmentVars get vars;
  @override
  _i5.DocumentNode get document;
  @override
  String? get fragmentName;
  @override
  Map<String, dynamic> get idFields;
  @override
  _i2.GlistingSettingsFragmentData? parseData(Map<String, dynamic> json) =>
      _i2.GlistingSettingsFragmentData.fromJson(json);

  @override
  Map<String, dynamic> varsToJson() => vars.toJson();

  @override
  Map<String, dynamic> dataToJson(_i2.GlistingSettingsFragmentData data) =>
      data.toJson();

  static Serializer<GlistingSettingsFragmentReq> get serializer =>
      _$glistingSettingsFragmentReqSerializer;

  Map<String, dynamic> toJson() => (_i6.serializers.serializeWith(
        GlistingSettingsFragmentReq.serializer,
        this,
      ) as Map<String, dynamic>);

  static GlistingSettingsFragmentReq? fromJson(Map<String, dynamic> json) =>
      _i6.serializers.deserializeWith(
        GlistingSettingsFragmentReq.serializer,
        json,
      );
}

abstract class GcancellationFragmentReq
    implements
        Built<GcancellationFragmentReq, GcancellationFragmentReqBuilder>,
        _i1.FragmentRequest<_i2.GcancellationFragmentData,
            _i3.GcancellationFragmentVars> {
  GcancellationFragmentReq._();

  factory GcancellationFragmentReq(
          [void Function(GcancellationFragmentReqBuilder b) updates]) =
      _$GcancellationFragmentReq;

  static void _initializeBuilder(GcancellationFragmentReqBuilder b) => b
    ..document = _i4.document
    ..fragmentName = 'cancellationFragment';

  @override
  _i3.GcancellationFragmentVars get vars;
  @override
  _i5.DocumentNode get document;
  @override
  String? get fragmentName;
  @override
  Map<String, dynamic> get idFields;
  @override
  _i2.GcancellationFragmentData? parseData(Map<String, dynamic> json) =>
      _i2.GcancellationFragmentData.fromJson(json);

  @override
  Map<String, dynamic> varsToJson() => vars.toJson();

  @override
  Map<String, dynamic> dataToJson(_i2.GcancellationFragmentData data) =>
      data.toJson();

  static Serializer<GcancellationFragmentReq> get serializer =>
      _$gcancellationFragmentReqSerializer;

  Map<String, dynamic> toJson() => (_i6.serializers.serializeWith(
        GcancellationFragmentReq.serializer,
        this,
      ) as Map<String, dynamic>);

  static GcancellationFragmentReq? fromJson(Map<String, dynamic> json) =>
      _i6.serializers.deserializeWith(
        GcancellationFragmentReq.serializer,
        json,
      );
}

abstract class GavailabilityFragmentReq
    implements
        Built<GavailabilityFragmentReq, GavailabilityFragmentReqBuilder>,
        _i1.FragmentRequest<_i2.GavailabilityFragmentData,
            _i3.GavailabilityFragmentVars> {
  GavailabilityFragmentReq._();

  factory GavailabilityFragmentReq(
          [void Function(GavailabilityFragmentReqBuilder b) updates]) =
      _$GavailabilityFragmentReq;

  static void _initializeBuilder(GavailabilityFragmentReqBuilder b) => b
    ..document = _i4.document
    ..fragmentName = 'availabilityFragment';

  @override
  _i3.GavailabilityFragmentVars get vars;
  @override
  _i5.DocumentNode get document;
  @override
  String? get fragmentName;
  @override
  Map<String, dynamic> get idFields;
  @override
  _i2.GavailabilityFragmentData? parseData(Map<String, dynamic> json) =>
      _i2.GavailabilityFragmentData.fromJson(json);

  @override
  Map<String, dynamic> varsToJson() => vars.toJson();

  @override
  Map<String, dynamic> dataToJson(_i2.GavailabilityFragmentData data) =>
      data.toJson();

  static Serializer<GavailabilityFragmentReq> get serializer =>
      _$gavailabilityFragmentReqSerializer;

  Map<String, dynamic> toJson() => (_i6.serializers.serializeWith(
        GavailabilityFragmentReq.serializer,
        this,
      ) as Map<String, dynamic>);

  static GavailabilityFragmentReq? fromJson(Map<String, dynamic> json) =>
      _i6.serializers.deserializeWith(
        GavailabilityFragmentReq.serializer,
        json,
      );
}

abstract class GlistingSettingsTypesFragmentReq
    implements
        Built<GlistingSettingsTypesFragmentReq,
            GlistingSettingsTypesFragmentReqBuilder>,
        _i1.FragmentRequest<_i2.GlistingSettingsTypesFragmentData,
            _i3.GlistingSettingsTypesFragmentVars> {
  GlistingSettingsTypesFragmentReq._();

  factory GlistingSettingsTypesFragmentReq(
          [void Function(GlistingSettingsTypesFragmentReqBuilder b) updates]) =
      _$GlistingSettingsTypesFragmentReq;

  static void _initializeBuilder(GlistingSettingsTypesFragmentReqBuilder b) => b
    ..document = _i4.document
    ..fragmentName = 'listingSettingsTypesFragment';

  @override
  _i3.GlistingSettingsTypesFragmentVars get vars;
  @override
  _i5.DocumentNode get document;
  @override
  String? get fragmentName;
  @override
  Map<String, dynamic> get idFields;
  @override
  _i2.GlistingSettingsTypesFragmentData? parseData(Map<String, dynamic> json) =>
      _i2.GlistingSettingsTypesFragmentData.fromJson(json);

  @override
  Map<String, dynamic> varsToJson() => vars.toJson();

  @override
  Map<String, dynamic> dataToJson(_i2.GlistingSettingsTypesFragmentData data) =>
      data.toJson();

  static Serializer<GlistingSettingsTypesFragmentReq> get serializer =>
      _$glistingSettingsTypesFragmentReqSerializer;

  Map<String, dynamic> toJson() => (_i6.serializers.serializeWith(
        GlistingSettingsTypesFragmentReq.serializer,
        this,
      ) as Map<String, dynamic>);

  static GlistingSettingsTypesFragmentReq? fromJson(
          Map<String, dynamic> json) =>
      _i6.serializers.deserializeWith(
        GlistingSettingsTypesFragmentReq.serializer,
        json,
      );
}
