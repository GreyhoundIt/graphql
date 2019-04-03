# frozen_string_literal: true

module Mutations
  class CreateProduct < GraphQL::Schema::RelayClassicMutation
    # TODO: define return fields
    # field :post, Types::PostType, null: false
    field :product, Types::ProductType, null: true
    field :result, Boolean, null: true
    # TODO: define arguments
    # argument :name, String, required: true
    argument :title, String, required: false
    argument :description, String, required: false
    # TODO: define resolve method
    def resolve(**args)
      product = Product.create(title: args[:title], description: args[:description])
      {
        product: product,
        result: product.errors.blank?
      }
    end
  end
end
