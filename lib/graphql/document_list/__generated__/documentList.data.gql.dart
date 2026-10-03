// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:gozy/graphql/__generated__/serializers.gql.dart' as _i1;

part 'documentList.data.gql.g.dart';

abstract class GShowDocumentListData
    implements Built<GShowDocumentListData, GShowDocumentListDataBuilder> {
  GShowDocumentListData._();

  factory GShowDocumentListData(
          [void Function(GShowDocumentListDataBuilder b) updates]) =
      _$GShowDocumentListData;

  static void _initializeBuilder(GShowDocumentListDataBuilder b) =>
      b..G__typename = 'Query';

  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  GShowDocumentListData_showDocumentList? get showDocumentList;
  static Serializer<GShowDocumentListData> get serializer =>
      _$gShowDocumentListDataSerializer;

  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GShowDocumentListData.serializer,
        this,
      ) as Map<String, dynamic>);

  static GShowDocumentListData? fromJson(Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GShowDocumentListData.serializer,
        json,
      );
}

abstract class GShowDocumentListData_showDocumentList
    implements
        Built<GShowDocumentListData_showDocumentList,
            GShowDocumentListData_showDocumentListBuilder> {
  GShowDocumentListData_showDocumentList._();

  factory GShowDocumentListData_showDocumentList(
      [void Function(GShowDocumentListData_showDocumentListBuilder b)
          updates]) = _$GShowDocumentListData_showDocumentList;

  static void _initializeBuilder(
          GShowDocumentListData_showDocumentListBuilder b) =>
      b..G__typename = 'AllDocumentType';

  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  BuiltList<GShowDocumentListData_showDocumentList_results?>? get results;
  int? get status;
  String? get errorMessage;
  static Serializer<GShowDocumentListData_showDocumentList> get serializer =>
      _$gShowDocumentListDataShowDocumentListSerializer;

  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GShowDocumentListData_showDocumentList.serializer,
        this,
      ) as Map<String, dynamic>);

  static GShowDocumentListData_showDocumentList? fromJson(
          Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GShowDocumentListData_showDocumentList.serializer,
        json,
      );
}

abstract class GShowDocumentListData_showDocumentList_results
    implements
        Built<GShowDocumentListData_showDocumentList_results,
            GShowDocumentListData_showDocumentList_resultsBuilder> {
  GShowDocumentListData_showDocumentList_results._();

  factory GShowDocumentListData_showDocumentList_results(
      [void Function(GShowDocumentListData_showDocumentList_resultsBuilder b)
          updates]) = _$GShowDocumentListData_showDocumentList_results;

  static void _initializeBuilder(
          GShowDocumentListData_showDocumentList_resultsBuilder b) =>
      b..G__typename = 'DocumentVerification';

  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  int? get id;
  String get userId;
  String? get fileName;
  String? get fileType;
  String? get documentStatus;
  static Serializer<GShowDocumentListData_showDocumentList_results>
      get serializer =>
          _$gShowDocumentListDataShowDocumentListResultsSerializer;

  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GShowDocumentListData_showDocumentList_results.serializer,
        this,
      ) as Map<String, dynamic>);

  static GShowDocumentListData_showDocumentList_results? fromJson(
          Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GShowDocumentListData_showDocumentList_results.serializer,
        json,
      );
}

abstract class GRemoveDocumentsData
    implements Built<GRemoveDocumentsData, GRemoveDocumentsDataBuilder> {
  GRemoveDocumentsData._();

  factory GRemoveDocumentsData(
          [void Function(GRemoveDocumentsDataBuilder b) updates]) =
      _$GRemoveDocumentsData;

  static void _initializeBuilder(GRemoveDocumentsDataBuilder b) =>
      b..G__typename = 'Mutation';

  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  GRemoveDocumentsData_removeDocuments? get removeDocuments;
  static Serializer<GRemoveDocumentsData> get serializer =>
      _$gRemoveDocumentsDataSerializer;

  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GRemoveDocumentsData.serializer,
        this,
      ) as Map<String, dynamic>);

  static GRemoveDocumentsData? fromJson(Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GRemoveDocumentsData.serializer,
        json,
      );
}

abstract class GRemoveDocumentsData_removeDocuments
    implements
        Built<GRemoveDocumentsData_removeDocuments,
            GRemoveDocumentsData_removeDocumentsBuilder> {
  GRemoveDocumentsData_removeDocuments._();

  factory GRemoveDocumentsData_removeDocuments(
      [void Function(GRemoveDocumentsData_removeDocumentsBuilder b)
          updates]) = _$GRemoveDocumentsData_removeDocuments;

  static void _initializeBuilder(
          GRemoveDocumentsData_removeDocumentsBuilder b) =>
      b..G__typename = 'DocumentVerification';

  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  int? get status;
  String? get errorMessage;
  static Serializer<GRemoveDocumentsData_removeDocuments> get serializer =>
      _$gRemoveDocumentsDataRemoveDocumentsSerializer;

  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GRemoveDocumentsData_removeDocuments.serializer,
        this,
      ) as Map<String, dynamic>);

  static GRemoveDocumentsData_removeDocuments? fromJson(
          Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GRemoveDocumentsData_removeDocuments.serializer,
        json,
      );
}
