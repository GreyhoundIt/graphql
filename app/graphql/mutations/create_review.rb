module Mutations
  class CreateReview < GraphQL::Schema::RelayClassicMutation
   graphql_name 'CreateReview'

    field :review, Types::ReviewType, null: true
    field :result, Boolean, null: true

    argument :product_id, ID, required: true
    argument :content, String, required:true
    argument :stars, Integer, required: true

    def resolve(**args)
      product = Product.find(args[:product_id])
      review = product.reviews.build(content: args[:content], stars: args[:stars])
      review.save
      {
          review: review,
          result: product.errors.blank?
      }
      end
    end
end
