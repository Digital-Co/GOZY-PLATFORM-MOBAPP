// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:gozy/graphql/__generated__/base_listing_info_fragment.ast.gql.dart'
    as _i3;
import 'package:gozy/graphql/__generated__/listing_data_fragment.ast.gql.dart'
    as _i7;
import 'package:gozy/graphql/__generated__/listing_user_fragment.ast.gql.dart'
    as _i8;
import 'package:gozy/graphql/__generated__/reservation_fragment.ast.gql.dart'
    as _i2;
import 'package:gozy/graphql/__generated__/thread_item_fragment.ast.gql.dart'
    as _i6;
import 'package:gozy/graphql/__generated__/user_profile_fragment.ast.gql.dart'
    as _i4;
import 'package:gozy/graphql/__generated__/user_verified_info_fragment.ast.gql.dart'
    as _i5;
import 'package:gql/ast.dart' as _i1;

const reservationPaymentFragment = _i1.FragmentDefinitionNode(
  name: _i1.NameNode(value: 'reservationPaymentFragment'),
  typeCondition: _i1.TypeConditionNode(
      on: _i1.NamedTypeNode(
    name: _i1.NameNode(value: 'ReservationPayment'),
    isNonNull: false,
  )),
  directives: [],
  selectionSet: _i1.SelectionSetNode(selections: [
    _i1.FieldNode(
      name: _i1.NameNode(value: 'results'),
      alias: null,
      arguments: [],
      directives: [],
      selectionSet: _i1.SelectionSetNode(selections: [
        _i1.FragmentSpreadNode(
          name: _i1.NameNode(value: 'reservationFragment'),
          directives: [],
        )
      ]),
    ),
    _i1.FieldNode(
      name: _i1.NameNode(value: 'purchasePlanId'),
      alias: null,
      arguments: [],
      directives: [],
      selectionSet: null,
    ),
    _i1.FieldNode(
      name: _i1.NameNode(value: 'redirectUrl'),
      alias: null,
      arguments: [],
      directives: [],
      selectionSet: null,
    ),
    _i1.FieldNode(
      name: _i1.NameNode(value: 'status'),
      alias: null,
      arguments: [],
      directives: [],
      selectionSet: null,
    ),
    _i1.FieldNode(
      name: _i1.NameNode(value: 'errorMessage'),
      alias: null,
      arguments: [],
      directives: [],
      selectionSet: null,
    ),
    _i1.FieldNode(
      name: _i1.NameNode(value: 'requireAdditionalAction'),
      alias: null,
      arguments: [],
      directives: [],
      selectionSet: null,
    ),
    _i1.FieldNode(
      name: _i1.NameNode(value: 'paymentIntentSecret'),
      alias: null,
      arguments: [],
      directives: [],
      selectionSet: null,
    ),
    _i1.FieldNode(
      name: _i1.NameNode(value: 'reservationId'),
      alias: null,
      arguments: [],
      directives: [],
      selectionSet: null,
    ),
  ]),
);
const document = _i1.DocumentNode(definitions: [
  reservationPaymentFragment,
  _i2.reservationFragment,
  _i3.viewListingShortFragment,
  _i4.userProfileFragment,
  _i5.userVerifiedInfoFragment,
  _i6.threadItemsFragment,
  _i7.listingDataFragment,
  _i7.cancellationDataFragment,
  _i8.listingUserFragment,
]);
