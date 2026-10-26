// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:gozy/graphql/listingOptions/__generated__/listing_option_fragment.ast.gql.dart'
    as _i2;
import 'package:gql/ast.dart' as _i1;

const saveListingOption = _i1.OperationDefinitionNode(
  type: _i1.OperationType.mutation,
  name: _i1.NameNode(value: 'saveListingOption'),
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
      variable: _i1.VariableNode(name: _i1.NameNode(value: 'slot')),
      type: _i1.NamedTypeNode(
        name: _i1.NameNode(value: 'String'),
        isNonNull: false,
      ),
      defaultValue: _i1.DefaultValueNode(value: null),
      directives: [],
    ),
    _i1.VariableDefinitionNode(
      variable: _i1.VariableNode(name: _i1.NameNode(value: 'label')),
      type: _i1.NamedTypeNode(
        name: _i1.NameNode(value: 'String'),
        isNonNull: false,
      ),
      defaultValue: _i1.DefaultValueNode(value: null),
      directives: [],
    ),
    _i1.VariableDefinitionNode(
      variable: _i1.VariableNode(name: _i1.NameNode(value: 'description')),
      type: _i1.NamedTypeNode(
        name: _i1.NameNode(value: 'String'),
        isNonNull: false,
      ),
      defaultValue: _i1.DefaultValueNode(value: null),
      directives: [],
    ),
    _i1.VariableDefinitionNode(
      variable: _i1.VariableNode(name: _i1.NameNode(value: 'price')),
      type: _i1.NamedTypeNode(
        name: _i1.NameNode(value: 'Float'),
        isNonNull: true,
      ),
      defaultValue: _i1.DefaultValueNode(value: null),
      directives: [],
    ),
    _i1.VariableDefinitionNode(
      variable: _i1.VariableNode(name: _i1.NameNode(value: 'billingMode')),
      type: _i1.NamedTypeNode(
        name: _i1.NameNode(value: 'String'),
        isNonNull: false,
      ),
      defaultValue: _i1.DefaultValueNode(value: null),
      directives: [],
    ),
    _i1.VariableDefinitionNode(
      variable: _i1.VariableNode(name: _i1.NameNode(value: 'icon')),
      type: _i1.NamedTypeNode(
        name: _i1.NameNode(value: 'String'),
        isNonNull: false,
      ),
      defaultValue: _i1.DefaultValueNode(value: null),
      directives: [],
    ),
    _i1.VariableDefinitionNode(
      variable: _i1.VariableNode(name: _i1.NameNode(value: 'isActive')),
      type: _i1.NamedTypeNode(
        name: _i1.NameNode(value: 'Boolean'),
        isNonNull: false,
      ),
      defaultValue: _i1.DefaultValueNode(value: null),
      directives: [],
    ),
  ],
  directives: [],
  selectionSet: _i1.SelectionSetNode(selections: [
    _i1.FieldNode(
      name: _i1.NameNode(value: 'saveListingOption'),
      alias: null,
      arguments: [
        _i1.ArgumentNode(
          name: _i1.NameNode(value: 'listId'),
          value: _i1.VariableNode(name: _i1.NameNode(value: 'listId')),
        ),
        _i1.ArgumentNode(
          name: _i1.NameNode(value: 'slot'),
          value: _i1.VariableNode(name: _i1.NameNode(value: 'slot')),
        ),
        _i1.ArgumentNode(
          name: _i1.NameNode(value: 'label'),
          value: _i1.VariableNode(name: _i1.NameNode(value: 'label')),
        ),
        _i1.ArgumentNode(
          name: _i1.NameNode(value: 'description'),
          value: _i1.VariableNode(name: _i1.NameNode(value: 'description')),
        ),
        _i1.ArgumentNode(
          name: _i1.NameNode(value: 'price'),
          value: _i1.VariableNode(name: _i1.NameNode(value: 'price')),
        ),
        _i1.ArgumentNode(
          name: _i1.NameNode(value: 'billingMode'),
          value: _i1.VariableNode(name: _i1.NameNode(value: 'billingMode')),
        ),
        _i1.ArgumentNode(
          name: _i1.NameNode(value: 'icon'),
          value: _i1.VariableNode(name: _i1.NameNode(value: 'icon')),
        ),
        _i1.ArgumentNode(
          name: _i1.NameNode(value: 'isActive'),
          value: _i1.VariableNode(name: _i1.NameNode(value: 'isActive')),
        ),
      ],
      directives: [],
      selectionSet: _i1.SelectionSetNode(selections: [
        _i1.FragmentSpreadNode(
          name: _i1.NameNode(value: 'listingOptionsResultFragment'),
          directives: [],
        )
      ]),
    )
  ]),
);
const document = _i1.DocumentNode(definitions: [
  saveListingOption,
  _i2.listingOptionFragment,
  _i2.bookingOptionLineFragment,
  _i2.reservationOptionSnapshotFragment,
  _i2.listingOptionsResultFragment,
]);
