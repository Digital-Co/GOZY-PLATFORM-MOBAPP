// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:gozy/graphql/inspection/__generated__/inspection_fragment.ast.gql.dart'
    as _i3;
import 'package:gozy/graphql/inspection/__generated__/inspection_photo_fragment.ast.gql.dart'
    as _i4;
import 'package:gozy/graphql/inspection/__generated__/inspection_result_fragment.ast.gql.dart'
    as _i2;
import 'package:gql/ast.dart' as _i1;

const submitCheckout = _i1.OperationDefinitionNode(
  type: _i1.OperationType.mutation,
  name: _i1.NameNode(value: 'submitCheckout'),
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
      variable: _i1.VariableNode(name: _i1.NameNode(value: 'hasDamage')),
      type: _i1.NamedTypeNode(
        name: _i1.NameNode(value: 'Boolean'),
        isNonNull: true,
      ),
      defaultValue: _i1.DefaultValueNode(value: null),
      directives: [],
    ),
    _i1.VariableDefinitionNode(
      variable: _i1.VariableNode(name: _i1.NameNode(value: 'input')),
      type: _i1.NamedTypeNode(
        name: _i1.NameNode(value: 'CheckoutInput'),
        isNonNull: true,
      ),
      defaultValue: _i1.DefaultValueNode(value: null),
      directives: [],
    ),
  ],
  directives: [],
  selectionSet: _i1.SelectionSetNode(selections: [
    _i1.FieldNode(
      name: _i1.NameNode(value: 'submitCheckout'),
      alias: null,
      arguments: [
        _i1.ArgumentNode(
          name: _i1.NameNode(value: 'reservationId'),
          value: _i1.VariableNode(name: _i1.NameNode(value: 'reservationId')),
        ),
        _i1.ArgumentNode(
          name: _i1.NameNode(value: 'hasDamage'),
          value: _i1.VariableNode(name: _i1.NameNode(value: 'hasDamage')),
        ),
        _i1.ArgumentNode(
          name: _i1.NameNode(value: 'input'),
          value: _i1.VariableNode(name: _i1.NameNode(value: 'input')),
        ),
      ],
      directives: [],
      selectionSet: _i1.SelectionSetNode(selections: [
        _i1.FragmentSpreadNode(
          name: _i1.NameNode(value: 'inspectionResultFragment'),
          directives: [],
        )
      ]),
    )
  ]),
);
const document = _i1.DocumentNode(definitions: [
  submitCheckout,
  _i2.inspectionResultFragment,
  _i3.inspectionFragment,
  _i4.inspectionPhotoFragment,
]);
