# frozen_string_literal: true

module Types
  class ReviewInputType < Types::BaseInputObject
    argument :top_reviews, Boolean, required: false
    argument :lower_stars, Int, required: false
    argument :upper_stars, Int, required: false
    description ' A collection of Reviews'
    field :review, Types::ReviewType, required: false
  end
end
