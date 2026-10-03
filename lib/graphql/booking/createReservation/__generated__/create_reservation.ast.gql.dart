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

const createReservation = _i1.OperationDefinitionNode(
  type: _i1.OperationType.mutation,
  name: _i1.NameNode(value: 'createReservation'),
  variableDefinitions: [
    _i1.VariableDefinitionNode(
      variable: _i1.VariableNode(name: _i1.NameNode(value: 'listId')),
      type: _i1.NamedTypeNode(
        name: _i1.NameNode(value: 'Int'),
        isNonNull: true,
      ),
      defaultValue: _i1.DefaultValueNode(value: null),
      directives: [],
    ),
    _i1.VariableDefinitionNode(
      variable: _i1.VariableNode(name: _i1.NameNode(value: 'checkIn')),
      type: _i1.NamedTypeNode(
        name: _i1.NameNode(value: 'String'),
        isNonNull: true,
      ),
      defaultValue: _i1.DefaultValueNode(value: null),
      directives: [],
    ),
    _i1.VariableDefinitionNode(
      variable: _i1.VariableNode(name: _i1.NameNode(value: 'checkOut')),
      type: _i1.NamedTypeNode(
        name: _i1.NameNode(value: 'String'),
        isNonNull: true,
      ),
      defaultValue: _i1.DefaultValueNode(value: null),
      directives: [],
    ),
    _i1.VariableDefinitionNode(
      variable: _i1.VariableNode(name: _i1.NameNode(value: 'guests')),
      type: _i1.NamedTypeNode(
        name: _i1.NameNode(value: 'Int'),
        isNonNull: true,
      ),
      defaultValue: _i1.DefaultValueNode(value: null),
      directives: [],
    ),
    _i1.VariableDefinitionNode(
      variable: _i1.VariableNode(name: _i1.NameNode(value: 'message')),
      type: _i1.NamedTypeNode(
        name: _i1.NameNode(value: 'String'),
        isNonNull: true,
      ),
      defaultValue: _i1.DefaultValueNode(value: null),
      directives: [],
    ),
    _i1.VariableDefinitionNode(
      variable: _i1.VariableNode(name: _i1.NameNode(value: 'basePrice')),
      type: _i1.NamedTypeNode(
        name: _i1.NameNode(value: 'Float'),
        isNonNull: true,
      ),
      defaultValue: _i1.DefaultValueNode(value: null),
      directives: [],
    ),
    _i1.VariableDefinitionNode(
      variable: _i1.VariableNode(name: _i1.NameNode(value: 'delivery')),
      type: _i1.NamedTypeNode(
        name: _i1.NameNode(value: 'Float'),
        isNonNull: true,
      ),
      defaultValue: _i1.DefaultValueNode(value: null),
      directives: [],
    ),
    _i1.VariableDefinitionNode(
      variable: _i1.VariableNode(name: _i1.NameNode(value: 'currency')),
      type: _i1.NamedTypeNode(
        name: _i1.NameNode(value: 'String'),
        isNonNull: true,
      ),
      defaultValue: _i1.DefaultValueNode(value: null),
      directives: [],
    ),
    _i1.VariableDefinitionNode(
      variable: _i1.VariableNode(name: _i1.NameNode(value: 'discount')),
      type: _i1.NamedTypeNode(
        name: _i1.NameNode(value: 'Float'),
        isNonNull: false,
      ),
      defaultValue: _i1.DefaultValueNode(value: null),
      directives: [],
    ),
    _i1.VariableDefinitionNode(
      variable: _i1.VariableNode(name: _i1.NameNode(value: 'discountType')),
      type: _i1.NamedTypeNode(
        name: _i1.NameNode(value: 'String'),
        isNonNull: false,
      ),
      defaultValue: _i1.DefaultValueNode(value: null),
      directives: [],
    ),
    _i1.VariableDefinitionNode(
      variable: _i1.VariableNode(name: _i1.NameNode(value: 'guestServiceFee')),
      type: _i1.NamedTypeNode(
        name: _i1.NameNode(value: 'Float'),
        isNonNull: false,
      ),
      defaultValue: _i1.DefaultValueNode(value: null),
      directives: [],
    ),
    _i1.VariableDefinitionNode(
      variable: _i1.VariableNode(name: _i1.NameNode(value: 'hostServiceFee')),
      type: _i1.NamedTypeNode(
        name: _i1.NameNode(value: 'Float'),
        isNonNull: false,
      ),
      defaultValue: _i1.DefaultValueNode(value: null),
      directives: [],
    ),
    _i1.VariableDefinitionNode(
      variable: _i1.VariableNode(name: _i1.NameNode(value: 'total')),
      type: _i1.NamedTypeNode(
        name: _i1.NameNode(value: 'Float'),
        isNonNull: true,
      ),
      defaultValue: _i1.DefaultValueNode(value: null),
      directives: [],
    ),
    _i1.VariableDefinitionNode(
      variable: _i1.VariableNode(name: _i1.NameNode(value: 'bookingType')),
      type: _i1.NamedTypeNode(
        name: _i1.NameNode(value: 'String'),
        isNonNull: false,
      ),
      defaultValue: _i1.DefaultValueNode(value: null),
      directives: [],
    ),
    _i1.VariableDefinitionNode(
      variable: _i1.VariableNode(name: _i1.NameNode(value: 'cardToken')),
      type: _i1.NamedTypeNode(
        name: _i1.NameNode(value: 'String'),
        isNonNull: false,
      ),
      defaultValue: _i1.DefaultValueNode(value: null),
      directives: [],
    ),
    _i1.VariableDefinitionNode(
      variable: _i1.VariableNode(name: _i1.NameNode(value: 'paymentType')),
      type: _i1.NamedTypeNode(
        name: _i1.NameNode(value: 'Int'),
        isNonNull: false,
      ),
      defaultValue: _i1.DefaultValueNode(value: null),
      directives: [],
    ),
    _i1.VariableDefinitionNode(
      variable: _i1.VariableNode(name: _i1.NameNode(value: 'averagePrice')),
      type: _i1.NamedTypeNode(
        name: _i1.NameNode(value: 'Float'),
        isNonNull: false,
      ),
      defaultValue: _i1.DefaultValueNode(value: null),
      directives: [],
    ),
    _i1.VariableDefinitionNode(
      variable: _i1.VariableNode(name: _i1.NameNode(value: 'days')),
      type: _i1.NamedTypeNode(
        name: _i1.NameNode(value: 'Int'),
        isNonNull: false,
      ),
      defaultValue: _i1.DefaultValueNode(value: null),
      directives: [],
    ),
    _i1.VariableDefinitionNode(
      variable: _i1.VariableNode(name: _i1.NameNode(value: 'startTime')),
      type: _i1.NamedTypeNode(
        name: _i1.NameNode(value: 'Float'),
        isNonNull: false,
      ),
      defaultValue: _i1.DefaultValueNode(value: null),
      directives: [],
    ),
    _i1.VariableDefinitionNode(
      variable: _i1.VariableNode(name: _i1.NameNode(value: 'endTime')),
      type: _i1.NamedTypeNode(
        name: _i1.NameNode(value: 'Float'),
        isNonNull: false,
      ),
      defaultValue: _i1.DefaultValueNode(value: null),
      directives: [],
    ),
    _i1.VariableDefinitionNode(
      variable: _i1.VariableNode(name: _i1.NameNode(value: 'licenseNumber')),
      type: _i1.NamedTypeNode(
        name: _i1.NameNode(value: 'String'),
        isNonNull: true,
      ),
      defaultValue: _i1.DefaultValueNode(value: null),
      directives: [],
    ),
    _i1.VariableDefinitionNode(
      variable: _i1.VariableNode(name: _i1.NameNode(value: 'firstName')),
      type: _i1.NamedTypeNode(
        name: _i1.NameNode(value: 'String'),
        isNonNull: true,
      ),
      defaultValue: _i1.DefaultValueNode(value: null),
      directives: [],
    ),
    _i1.VariableDefinitionNode(
      variable: _i1.VariableNode(name: _i1.NameNode(value: 'middleName')),
      type: _i1.NamedTypeNode(
        name: _i1.NameNode(value: 'String'),
        isNonNull: false,
      ),
      defaultValue: _i1.DefaultValueNode(value: null),
      directives: [],
    ),
    _i1.VariableDefinitionNode(
      variable: _i1.VariableNode(name: _i1.NameNode(value: 'lastName')),
      type: _i1.NamedTypeNode(
        name: _i1.NameNode(value: 'String'),
        isNonNull: true,
      ),
      defaultValue: _i1.DefaultValueNode(value: null),
      directives: [],
    ),
    _i1.VariableDefinitionNode(
      variable: _i1.VariableNode(name: _i1.NameNode(value: 'dateOfBirth')),
      type: _i1.NamedTypeNode(
        name: _i1.NameNode(value: 'String'),
        isNonNull: true,
      ),
      defaultValue: _i1.DefaultValueNode(value: null),
      directives: [],
    ),
    _i1.VariableDefinitionNode(
      variable: _i1.VariableNode(name: _i1.NameNode(value: 'countryCode')),
      type: _i1.NamedTypeNode(
        name: _i1.NameNode(value: 'String'),
        isNonNull: false,
      ),
      defaultValue: _i1.DefaultValueNode(value: null),
      directives: [],
    ),
    _i1.VariableDefinitionNode(
      variable:
          _i1.VariableNode(name: _i1.NameNode(value: 'isDeliveryIncluded')),
      type: _i1.NamedTypeNode(
        name: _i1.NameNode(value: 'Boolean'),
        isNonNull: false,
      ),
      defaultValue: _i1.DefaultValueNode(value: null),
      directives: [],
    ),
    _i1.VariableDefinitionNode(
      variable: _i1.VariableNode(name: _i1.NameNode(value: 'paymentCurrency')),
      type: _i1.NamedTypeNode(
        name: _i1.NameNode(value: 'String'),
        isNonNull: false,
      ),
      defaultValue: _i1.DefaultValueNode(value: null),
      directives: [],
    ),
    _i1.VariableDefinitionNode(
      variable: _i1.VariableNode(name: _i1.NameNode(value: 'promoCode')),
      type: _i1.NamedTypeNode(
        name: _i1.NameNode(value: 'String'),
        isNonNull: false,
      ),
      defaultValue: _i1.DefaultValueNode(value: null),
      directives: [],
    ),
  ],
  directives: [],
  selectionSet: _i1.SelectionSetNode(selections: [
    _i1.FieldNode(
      name: _i1.NameNode(value: 'createReservation'),
      alias: null,
      arguments: [
        _i1.ArgumentNode(
          name: _i1.NameNode(value: 'listId'),
          value: _i1.VariableNode(name: _i1.NameNode(value: 'listId')),
        ),
        _i1.ArgumentNode(
          name: _i1.NameNode(value: 'checkIn'),
          value: _i1.VariableNode(name: _i1.NameNode(value: 'checkIn')),
        ),
        _i1.ArgumentNode(
          name: _i1.NameNode(value: 'checkOut'),
          value: _i1.VariableNode(name: _i1.NameNode(value: 'checkOut')),
        ),
        _i1.ArgumentNode(
          name: _i1.NameNode(value: 'guests'),
          value: _i1.VariableNode(name: _i1.NameNode(value: 'guests')),
        ),
        _i1.ArgumentNode(
          name: _i1.NameNode(value: 'message'),
          value: _i1.VariableNode(name: _i1.NameNode(value: 'message')),
        ),
        _i1.ArgumentNode(
          name: _i1.NameNode(value: 'basePrice'),
          value: _i1.VariableNode(name: _i1.NameNode(value: 'basePrice')),
        ),
        _i1.ArgumentNode(
          name: _i1.NameNode(value: 'delivery'),
          value: _i1.VariableNode(name: _i1.NameNode(value: 'delivery')),
        ),
        _i1.ArgumentNode(
          name: _i1.NameNode(value: 'currency'),
          value: _i1.VariableNode(name: _i1.NameNode(value: 'currency')),
        ),
        _i1.ArgumentNode(
          name: _i1.NameNode(value: 'discount'),
          value: _i1.VariableNode(name: _i1.NameNode(value: 'discount')),
        ),
        _i1.ArgumentNode(
          name: _i1.NameNode(value: 'discountType'),
          value: _i1.VariableNode(name: _i1.NameNode(value: 'discountType')),
        ),
        _i1.ArgumentNode(
          name: _i1.NameNode(value: 'guestServiceFee'),
          value: _i1.VariableNode(name: _i1.NameNode(value: 'guestServiceFee')),
        ),
        _i1.ArgumentNode(
          name: _i1.NameNode(value: 'hostServiceFee'),
          value: _i1.VariableNode(name: _i1.NameNode(value: 'hostServiceFee')),
        ),
        _i1.ArgumentNode(
          name: _i1.NameNode(value: 'total'),
          value: _i1.VariableNode(name: _i1.NameNode(value: 'total')),
        ),
        _i1.ArgumentNode(
          name: _i1.NameNode(value: 'bookingType'),
          value: _i1.VariableNode(name: _i1.NameNode(value: 'bookingType')),
        ),
        _i1.ArgumentNode(
          name: _i1.NameNode(value: 'cardToken'),
          value: _i1.VariableNode(name: _i1.NameNode(value: 'cardToken')),
        ),
        _i1.ArgumentNode(
          name: _i1.NameNode(value: 'paymentType'),
          value: _i1.VariableNode(name: _i1.NameNode(value: 'paymentType')),
        ),
        _i1.ArgumentNode(
          name: _i1.NameNode(value: 'averagePrice'),
          value: _i1.VariableNode(name: _i1.NameNode(value: 'averagePrice')),
        ),
        _i1.ArgumentNode(
          name: _i1.NameNode(value: 'days'),
          value: _i1.VariableNode(name: _i1.NameNode(value: 'days')),
        ),
        _i1.ArgumentNode(
          name: _i1.NameNode(value: 'startTime'),
          value: _i1.VariableNode(name: _i1.NameNode(value: 'startTime')),
        ),
        _i1.ArgumentNode(
          name: _i1.NameNode(value: 'endTime'),
          value: _i1.VariableNode(name: _i1.NameNode(value: 'endTime')),
        ),
        _i1.ArgumentNode(
          name: _i1.NameNode(value: 'licenseNumber'),
          value: _i1.VariableNode(name: _i1.NameNode(value: 'licenseNumber')),
        ),
        _i1.ArgumentNode(
          name: _i1.NameNode(value: 'firstName'),
          value: _i1.VariableNode(name: _i1.NameNode(value: 'firstName')),
        ),
        _i1.ArgumentNode(
          name: _i1.NameNode(value: 'middleName'),
          value: _i1.VariableNode(name: _i1.NameNode(value: 'middleName')),
        ),
        _i1.ArgumentNode(
          name: _i1.NameNode(value: 'lastName'),
          value: _i1.VariableNode(name: _i1.NameNode(value: 'lastName')),
        ),
        _i1.ArgumentNode(
          name: _i1.NameNode(value: 'dateOfBirth'),
          value: _i1.VariableNode(name: _i1.NameNode(value: 'dateOfBirth')),
        ),
        _i1.ArgumentNode(
          name: _i1.NameNode(value: 'countryCode'),
          value: _i1.VariableNode(name: _i1.NameNode(value: 'countryCode')),
        ),
        _i1.ArgumentNode(
          name: _i1.NameNode(value: 'isDeliveryIncluded'),
          value:
              _i1.VariableNode(name: _i1.NameNode(value: 'isDeliveryIncluded')),
        ),
        _i1.ArgumentNode(
          name: _i1.NameNode(value: 'paymentCurrency'),
          value: _i1.VariableNode(name: _i1.NameNode(value: 'paymentCurrency')),
        ),
        _i1.ArgumentNode(
          name: _i1.NameNode(value: 'promoCode'),
          value: _i1.VariableNode(name: _i1.NameNode(value: 'promoCode')),
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
  createReservation,
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
