// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:gozy/graphql/__generated__/serializers.gql.dart' as _i1;

part 'thread_item_fragment.data.gql.g.dart';

abstract class GthreadItemsFragment {
  String get G__typename;
  int? get id;
  int? get threadId;
  int? get reservationId;
  String? get sentBy;
  String? get content;
  String? get type;
  String? get startDate;
  String? get endDate;
  double? get startTime;
  double? get endTime;
  int? get personCapacity;
  bool? get isRead;
  String? get createdAt;
  int? get status;
  int? get userBanStatus;
  Map<String, dynamic> toJson();
}

abstract class GthreadItemsFragmentData
    implements
        Built<GthreadItemsFragmentData, GthreadItemsFragmentDataBuilder>,
        GthreadItemsFragment {
  GthreadItemsFragmentData._();

  factory GthreadItemsFragmentData(
          [void Function(GthreadItemsFragmentDataBuilder b) updates]) =
      _$GthreadItemsFragmentData;

  static void _initializeBuilder(GthreadItemsFragmentDataBuilder b) =>
      b..G__typename = 'ThreadItems';

  @override
  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  @override
  int? get id;
  @override
  int? get threadId;
  @override
  int? get reservationId;
  @override
  String? get sentBy;
  @override
  String? get content;
  @override
  String? get type;
  @override
  String? get startDate;
  @override
  String? get endDate;
  @override
  double? get startTime;
  @override
  double? get endTime;
  @override
  int? get personCapacity;
  @override
  bool? get isRead;
  @override
  String? get createdAt;
  @override
  int? get status;
  @override
  int? get userBanStatus;
  static Serializer<GthreadItemsFragmentData> get serializer =>
      _$gthreadItemsFragmentDataSerializer;

  @override
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GthreadItemsFragmentData.serializer,
        this,
      ) as Map<String, dynamic>);

  static GthreadItemsFragmentData? fromJson(Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GthreadItemsFragmentData.serializer,
        json,
      );
}
