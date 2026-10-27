// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:gozy/graphql/__generated__/serializers.gql.dart' as _i1;

part 'get_checklist.data.gql.g.dart';

abstract class GgetChecklistData
    implements Built<GgetChecklistData, GgetChecklistDataBuilder> {
  GgetChecklistData._();

  factory GgetChecklistData(
          [void Function(GgetChecklistDataBuilder b) updates]) =
      _$GgetChecklistData;

  static void _initializeBuilder(GgetChecklistDataBuilder b) =>
      b..G__typename = 'Query';

  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  GgetChecklistData_getChecklist? get getChecklist;
  static Serializer<GgetChecklistData> get serializer =>
      _$ggetChecklistDataSerializer;

  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GgetChecklistData.serializer,
        this,
      ) as Map<String, dynamic>);

  static GgetChecklistData? fromJson(Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GgetChecklistData.serializer,
        json,
      );
}

abstract class GgetChecklistData_getChecklist
    implements
        Built<GgetChecklistData_getChecklist,
            GgetChecklistData_getChecklistBuilder> {
  GgetChecklistData_getChecklist._();

  factory GgetChecklistData_getChecklist(
          [void Function(GgetChecklistData_getChecklistBuilder b) updates]) =
      _$GgetChecklistData_getChecklist;

  static void _initializeBuilder(GgetChecklistData_getChecklistBuilder b) =>
      b..G__typename = 'ChecklistResult';

  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  int? get status;
  String? get errorMessage;
  BuiltList<GgetChecklistData_getChecklist_results?>? get results;
  static Serializer<GgetChecklistData_getChecklist> get serializer =>
      _$ggetChecklistDataGetChecklistSerializer;

  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GgetChecklistData_getChecklist.serializer,
        this,
      ) as Map<String, dynamic>);

  static GgetChecklistData_getChecklist? fromJson(Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GgetChecklistData_getChecklist.serializer,
        json,
      );
}

abstract class GgetChecklistData_getChecklist_results
    implements
        Built<GgetChecklistData_getChecklist_results,
            GgetChecklistData_getChecklist_resultsBuilder> {
  GgetChecklistData_getChecklist_results._();

  factory GgetChecklistData_getChecklist_results(
      [void Function(GgetChecklistData_getChecklist_resultsBuilder b)
          updates]) = _$GgetChecklistData_getChecklist_results;

  static void _initializeBuilder(
          GgetChecklistData_getChecklist_resultsBuilder b) =>
      b..G__typename = 'ChecklistItem';

  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  String? get key;
  String? get labelKey;
  bool? get required;
  int? get sortOrder;
  static Serializer<GgetChecklistData_getChecklist_results> get serializer =>
      _$ggetChecklistDataGetChecklistResultsSerializer;

  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GgetChecklistData_getChecklist_results.serializer,
        this,
      ) as Map<String, dynamic>);

  static GgetChecklistData_getChecklist_results? fromJson(
          Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GgetChecklistData_getChecklist_results.serializer,
        json,
      );
}
