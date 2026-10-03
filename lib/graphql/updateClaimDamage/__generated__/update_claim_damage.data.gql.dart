// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:gozy/graphql/__generated__/serializers.gql.dart' as _i1;

part 'update_claim_damage.data.gql.g.dart';

abstract class GupdateClaimData
    implements Built<GupdateClaimData, GupdateClaimDataBuilder> {
  GupdateClaimData._();

  factory GupdateClaimData([void Function(GupdateClaimDataBuilder b) updates]) =
      _$GupdateClaimData;

  static void _initializeBuilder(GupdateClaimDataBuilder b) =>
      b..G__typename = 'Mutation';

  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  GupdateClaimData_updateClaim? get updateClaim;
  static Serializer<GupdateClaimData> get serializer =>
      _$gupdateClaimDataSerializer;

  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GupdateClaimData.serializer,
        this,
      ) as Map<String, dynamic>);

  static GupdateClaimData? fromJson(Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GupdateClaimData.serializer,
        json,
      );
}

abstract class GupdateClaimData_updateClaim
    implements
        Built<GupdateClaimData_updateClaim,
            GupdateClaimData_updateClaimBuilder> {
  GupdateClaimData_updateClaim._();

  factory GupdateClaimData_updateClaim(
          [void Function(GupdateClaimData_updateClaimBuilder b) updates]) =
      _$GupdateClaimData_updateClaim;

  static void _initializeBuilder(GupdateClaimData_updateClaimBuilder b) =>
      b..G__typename = 'ReservationPayment';

  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  int? get status;
  String? get errorMessage;
  static Serializer<GupdateClaimData_updateClaim> get serializer =>
      _$gupdateClaimDataUpdateClaimSerializer;

  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GupdateClaimData_updateClaim.serializer,
        this,
      ) as Map<String, dynamic>);

  static GupdateClaimData_updateClaim? fromJson(Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GupdateClaimData_updateClaim.serializer,
        json,
      );
}
