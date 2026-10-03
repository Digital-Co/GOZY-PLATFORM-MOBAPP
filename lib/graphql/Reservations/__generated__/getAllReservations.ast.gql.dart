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

const getAllReservation = _i1.OperationDefinitionNode(
  type: _i1.OperationType.query,
  name: _i1.NameNode(value: 'getAllReservation'),
  variableDefinitions: [
    _i1.VariableDefinitionNode(
      variable: _i1.VariableNode(name: _i1.NameNode(value: 'userType')),
      type: _i1.NamedTypeNode(
        name: _i1.NameNode(value: 'String'),
        isNonNull: false,
      ),
      defaultValue: _i1.DefaultValueNode(value: null),
      directives: [],
    ),
    _i1.VariableDefinitionNode(
      variable: _i1.VariableNode(name: _i1.NameNode(value: 'currentPage')),
      type: _i1.NamedTypeNode(
        name: _i1.NameNode(value: 'Int'),
        isNonNull: false,
      ),
      defaultValue: _i1.DefaultValueNode(value: null),
      directives: [],
    ),
    _i1.VariableDefinitionNode(
      variable: _i1.VariableNode(name: _i1.NameNode(value: 'dateFilter')),
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
      name: _i1.NameNode(value: 'getAllReservation'),
      alias: null,
      arguments: [
        _i1.ArgumentNode(
          name: _i1.NameNode(value: 'userType'),
          value: _i1.VariableNode(name: _i1.NameNode(value: 'userType')),
        ),
        _i1.ArgumentNode(
          name: _i1.NameNode(value: 'currentPage'),
          value: _i1.VariableNode(name: _i1.NameNode(value: 'currentPage')),
        ),
        _i1.ArgumentNode(
          name: _i1.NameNode(value: 'dateFilter'),
          value: _i1.VariableNode(name: _i1.NameNode(value: 'dateFilter')),
        ),
      ],
      directives: [],
      selectionSet: _i1.SelectionSetNode(selections: [
        _i1.FieldNode(
          name: _i1.NameNode(value: 'result'),
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
          name: _i1.NameNode(value: 'count'),
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
      ]),
    )
  ]),
);
const contactSupport = _i1.OperationDefinitionNode(
  type: _i1.OperationType.query,
  name: _i1.NameNode(value: 'contactSupport'),
  variableDefinitions: [
    _i1.VariableDefinitionNode(
      variable: _i1.VariableNode(name: _i1.NameNode(value: 'message')),
      type: _i1.NamedTypeNode(
        name: _i1.NameNode(value: 'String'),
        isNonNull: false,
      ),
      defaultValue: _i1.DefaultValueNode(value: null),
      directives: [],
    ),
    _i1.VariableDefinitionNode(
      variable: _i1.VariableNode(name: _i1.NameNode(value: 'listId')),
      type: _i1.NamedTypeNode(
        name: _i1.NameNode(value: 'Int'),
        isNonNull: false,
      ),
      defaultValue: _i1.DefaultValueNode(value: null),
      directives: [],
    ),
    _i1.VariableDefinitionNode(
      variable: _i1.VariableNode(name: _i1.NameNode(value: 'reservationId')),
      type: _i1.NamedTypeNode(
        name: _i1.NameNode(value: 'Int'),
        isNonNull: false,
      ),
      defaultValue: _i1.DefaultValueNode(value: null),
      directives: [],
    ),
    _i1.VariableDefinitionNode(
      variable: _i1.VariableNode(name: _i1.NameNode(value: 'userType')),
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
      name: _i1.NameNode(value: 'contactSupport'),
      alias: null,
      arguments: [
        _i1.ArgumentNode(
          name: _i1.NameNode(value: 'message'),
          value: _i1.VariableNode(name: _i1.NameNode(value: 'message')),
        ),
        _i1.ArgumentNode(
          name: _i1.NameNode(value: 'listId'),
          value: _i1.VariableNode(name: _i1.NameNode(value: 'listId')),
        ),
        _i1.ArgumentNode(
          name: _i1.NameNode(value: 'reservationId'),
          value: _i1.VariableNode(name: _i1.NameNode(value: 'reservationId')),
        ),
        _i1.ArgumentNode(
          name: _i1.NameNode(value: 'userType'),
          value: _i1.VariableNode(name: _i1.NameNode(value: 'userType')),
        ),
      ],
      directives: [],
      selectionSet: _i1.SelectionSetNode(selections: [
        _i1.FieldNode(
          name: _i1.NameNode(value: 'result'),
          alias: null,
          arguments: [],
          directives: [],
          selectionSet: _i1.SelectionSetNode(selections: [
            _i1.FieldNode(
              name: _i1.NameNode(value: 'userId'),
              alias: null,
              arguments: [],
              directives: [],
              selectionSet: null,
            ),
            _i1.FieldNode(
              name: _i1.NameNode(value: 'email'),
              alias: null,
              arguments: [],
              directives: [],
              selectionSet: null,
            ),
            _i1.FieldNode(
              name: _i1.NameNode(value: 'firstName'),
              alias: null,
              arguments: [],
              directives: [],
              selectionSet: null,
            ),
          ]),
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
      ]),
    )
  ]),
);
const ReservationStatus = _i1.OperationDefinitionNode(
  type: _i1.OperationType.mutation,
  name: _i1.NameNode(value: 'ReservationStatus'),
  variableDefinitions: [
    _i1.VariableDefinitionNode(
      variable: _i1.VariableNode(name: _i1.NameNode(value: 'threadId')),
      type: _i1.NamedTypeNode(
        name: _i1.NameNode(value: 'Int'),
        isNonNull: true,
      ),
      defaultValue: _i1.DefaultValueNode(value: null),
      directives: [],
    ),
    _i1.VariableDefinitionNode(
      variable: _i1.VariableNode(name: _i1.NameNode(value: 'content')),
      type: _i1.NamedTypeNode(
        name: _i1.NameNode(value: 'String'),
        isNonNull: false,
      ),
      defaultValue: _i1.DefaultValueNode(value: null),
      directives: [],
    ),
    _i1.VariableDefinitionNode(
      variable: _i1.VariableNode(name: _i1.NameNode(value: 'type')),
      type: _i1.NamedTypeNode(
        name: _i1.NameNode(value: 'String'),
        isNonNull: false,
      ),
      defaultValue: _i1.DefaultValueNode(value: null),
      directives: [],
    ),
    _i1.VariableDefinitionNode(
      variable: _i1.VariableNode(name: _i1.NameNode(value: 'startDate')),
      type: _i1.NamedTypeNode(
        name: _i1.NameNode(value: 'String'),
        isNonNull: false,
      ),
      defaultValue: _i1.DefaultValueNode(value: null),
      directives: [],
    ),
    _i1.VariableDefinitionNode(
      variable: _i1.VariableNode(name: _i1.NameNode(value: 'endDate')),
      type: _i1.NamedTypeNode(
        name: _i1.NameNode(value: 'String'),
        isNonNull: false,
      ),
      defaultValue: _i1.DefaultValueNode(value: null),
      directives: [],
    ),
    _i1.VariableDefinitionNode(
      variable: _i1.VariableNode(name: _i1.NameNode(value: 'personCapacity')),
      type: _i1.NamedTypeNode(
        name: _i1.NameNode(value: 'Int'),
        isNonNull: false,
      ),
      defaultValue: _i1.DefaultValueNode(value: null),
      directives: [],
    ),
    _i1.VariableDefinitionNode(
      variable: _i1.VariableNode(name: _i1.NameNode(value: 'reservationId')),
      type: _i1.NamedTypeNode(
        name: _i1.NameNode(value: 'Int'),
        isNonNull: false,
      ),
      defaultValue: _i1.DefaultValueNode(value: null),
      directives: [],
    ),
    _i1.VariableDefinitionNode(
      variable: _i1.VariableNode(name: _i1.NameNode(value: 'actionType')),
      type: _i1.NamedTypeNode(
        name: _i1.NameNode(value: 'String'),
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
  ],
  directives: [],
  selectionSet: _i1.SelectionSetNode(selections: [
    _i1.FieldNode(
      name: _i1.NameNode(value: 'ReservationStatus'),
      alias: _i1.NameNode(value: 'reservationStatus'),
      arguments: [
        _i1.ArgumentNode(
          name: _i1.NameNode(value: 'threadId'),
          value: _i1.VariableNode(name: _i1.NameNode(value: 'threadId')),
        ),
        _i1.ArgumentNode(
          name: _i1.NameNode(value: 'content'),
          value: _i1.VariableNode(name: _i1.NameNode(value: 'content')),
        ),
        _i1.ArgumentNode(
          name: _i1.NameNode(value: 'type'),
          value: _i1.VariableNode(name: _i1.NameNode(value: 'type')),
        ),
        _i1.ArgumentNode(
          name: _i1.NameNode(value: 'startDate'),
          value: _i1.VariableNode(name: _i1.NameNode(value: 'startDate')),
        ),
        _i1.ArgumentNode(
          name: _i1.NameNode(value: 'endDate'),
          value: _i1.VariableNode(name: _i1.NameNode(value: 'endDate')),
        ),
        _i1.ArgumentNode(
          name: _i1.NameNode(value: 'personCapacity'),
          value: _i1.VariableNode(name: _i1.NameNode(value: 'personCapacity')),
        ),
        _i1.ArgumentNode(
          name: _i1.NameNode(value: 'reservationId'),
          value: _i1.VariableNode(name: _i1.NameNode(value: 'reservationId')),
        ),
        _i1.ArgumentNode(
          name: _i1.NameNode(value: 'actionType'),
          value: _i1.VariableNode(name: _i1.NameNode(value: 'actionType')),
        ),
        _i1.ArgumentNode(
          name: _i1.NameNode(value: 'startTime'),
          value: _i1.VariableNode(name: _i1.NameNode(value: 'startTime')),
        ),
        _i1.ArgumentNode(
          name: _i1.NameNode(value: 'endTime'),
          value: _i1.VariableNode(name: _i1.NameNode(value: 'endTime')),
        ),
      ],
      directives: [],
      selectionSet: _i1.SelectionSetNode(selections: [
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
      ]),
    )
  ]),
);
const document = _i1.DocumentNode(definitions: [
  getAllReservation,
  contactSupport,
  ReservationStatus,
  _i2.reservationFragment,
  _i3.viewListingShortFragment,
  _i4.userProfileFragment,
  _i5.userVerifiedInfoFragment,
  _i6.threadItemsFragment,
  _i7.listingDataFragment,
  _i7.cancellationDataFragment,
  _i8.listingUserFragment,
]);
