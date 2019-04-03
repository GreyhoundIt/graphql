module Mutations
  class DeleteProduct < GraphQL::Schema::RelayClassicMutation
   graphql_name 'DeletePost'

    field :product, Types::ProductType, null: true
    field :result, Boolean, null: true

    argument :id, ID ,required: true

    def resolve(**args)
      product = Product.find(args[:id])
      product.destroy
      {
          product: product,
          result: product.errors.blank?
      }
    end
  end
end
