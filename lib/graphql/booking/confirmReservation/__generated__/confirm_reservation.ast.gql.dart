// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:gozy/graphql/__generated__/base_listing_info_fragment.ast.gql.dart'
    as _i4;
import 'package:gozy/graphql/__generated__/listing_data_fragment.ast.gql.dart'
    as _i8;
import 'package:gozy/graphql/__generated__/listing_user_fragment.ast.gql.dart'
    as _i9;
import 'package:gozy/graphql/__generated__/reservation_fragment.ast.gql.dart'
    as _i3;
import 'package:gozy/graphql/__generated__/reservation_payment_fragment.ast.gql.dart'
    as _i2;
import 'package:gozy/graphql/__generated__/thread_item_fragment.ast.gql.dart'
    as _i7;
import 'package:gozy/graphql/__generated__/user_profile_fragment.ast.gql.dart'
    as _i5;
import 'package:gozy/graphql/__generated__/user_verified_info_fragment.ast.gql.dart'
    as _i6;
import 'package:gql/ast.dart' as _i1;

const confirmReservation = _i1.OperationDefinitionNode(
  type: _i1.OperationType.mutation,
  name: _i1.NameNode(value: 'confirmReservation'),
  variableDefinitions: [
    _i1.VariableDefinitionNode(
      variable: _i1.VariableNode(name: _i1.NameNode(value: 'reservationId')),
      type: _i1.NamedTypeNode(
        name: _i1.NameNode(value: 'Int'),
        isNonNull: true,
      ),
      defaultValue: _i1.DefaultValueNode(value: null),
      directives: [],
    ),
    _i1.VariableDefinitionNode(
      variable: _i1.VariableNode(name: _i1.NameNode(value: 'paymentIntentId')),
      type: _i1.NamedTypeNode(
        name: _i1.NameNode(value: 'String'),
        isNonNull: true,
      ),
      defaultValue: _i1.DefaultValueNode(value: null),
      directives: [],
    ),
    _i1.VariableDefinitionNode(
      variable: _i1.VariableNode(name: _i1.NameNode(value: 'paymentType')),
      type: _i1.NamedTypeNode(
        name: _i1.NameNode(value: 'Int'),
        isNonNull: true,
      ),
      defaultValue: _i1.DefaultValueNode(value: null),
      directives: [],
    ),
  ],
  directives: [],
  selectionSet: _i1.SelectionSetNode(selections: [
    _i1.FieldNode(
      name: _i1.NameNode(value: 'confirmReservation'),
      alias: null,
      arguments: [
        _i1.ArgumentNode(
          name: _i1.NameNode(value: 'reservationId'),
          value: _i1.VariableNode(name: _i1.NameNode(value: 'reservationId')),
        ),
        _i1.ArgumentNode(
          name: _i1.NameNode(value: 'paymentIntentId'),
          value: _i1.VariableNode(name: _i1.NameNode(value: 'paymentIntentId')),
        ),
        _i1.ArgumentNode(
          name: _i1.NameNode(value: 'paymentType'),
          value: _i1.VariableNode(name: _i1.NameNode(value: 'paymentType')),
        ),
      ],
      directives: [],
      selectionSet: _i1.SelectionSetNode(selections: [
        _i1.FragmentSpreadNode(
          name: _i1.NameNode(value: 'reservationPaymentFragment'),
          directives: [],
        )
      ]),
    )
  ]),
);
const document = _i1.DocumentNode(definitions: [
  confirmReservation,
  _i2.reservationPaymentFragment,
  _i3.reservationFragment,
  _i4.viewListingShortFragment,
  _i5.userProfileFragment,
  _i6.userVerifiedInfoFragment,
  _i7.threadItemsFragment,
  _i8.listingDataFragment,
  _i8.cancellationDataFragment,
  _i9.listingUserFragment,
]);
