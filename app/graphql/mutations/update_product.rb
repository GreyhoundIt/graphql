# frozen_string_literal: true

module Mutations
  class UpdateProduct < GraphQL::Schema::RelayClassicMutation
    graphql_name 'UpdateProduct'

    field :product, Types::ProductType, null: true
    field :result, Boolean, null: true

    argument :id, ID, required: true
    argument :title, String, required: false
    argument :description, String, required: false

    def resolve(**args)
      product = Product.find(args[:id])
      update = {}
      update[:title] = args[:title] if args[:title].present?
      update[:description] = args[:description] if args[:description].present?
      product.update(update)
      {
        product: product,
        result: product.errors.blank?
      }
    end
  end
end
