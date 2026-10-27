// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:gozy/graphql/__generated__/serializers.gql.dart' as _i1;

part 'inspection_photo_fragment.data.gql.g.dart';

abstract class GinspectionPhotoFragment {
  String get G__typename;
  int? get id;
  String? get kind;
  int? get position;
  String? get uploadedBy;
  String? get createdAt;
  Map<String, dynamic> toJson();
}

abstract class GinspectionPhotoFragmentData
    implements
        Built<GinspectionPhotoFragmentData,
            GinspectionPhotoFragmentDataBuilder>,
        GinspectionPhotoFragment {
  GinspectionPhotoFragmentData._();

  factory GinspectionPhotoFragmentData(
          [void Function(GinspectionPhotoFragmentDataBuilder b) updates]) =
      _$GinspectionPhotoFragmentData;

  static void _initializeBuilder(GinspectionPhotoFragmentDataBuilder b) =>
      b..G__typename = 'InspectionPhoto';

  @override
  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  @override
  int? get id;
  @override
  String? get kind;
  @override
  int? get position;
  @override
  String? get uploadedBy;
  @override
  String? get createdAt;
  static Serializer<GinspectionPhotoFragmentData> get serializer =>
      _$ginspectionPhotoFragmentDataSerializer;

  @override
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GinspectionPhotoFragmentData.serializer,
        this,
      ) as Map<String, dynamic>);

  static GinspectionPhotoFragmentData? fromJson(Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GinspectionPhotoFragmentData.serializer,
        json,
      );
}
