module Types
  class ReviewType < Types::BaseObject
    field :id, ID, null: false
    field :content, String, null: false
    field :stars, Integer, null: false
    # field :stars, Int, null: false do
    #   argument :top_reviews, Boolean, required: false
    #   argument :lower_stars, Int, required: false
    #
    #   argument :upper_stars, Int, required: false
    #   description " A collection of Reviews"
    # end
    field :product, Types::ProductType, null: false



  end

  # class ReviewTypeInput < Types::BaseInputObject
  #   argument :top_reviews, Boolean, required: false
  #   argument :lower_stars, Int, required: false
  #
  #   argument :upper_stars, Int, required: false
  #   description " A collection of Reviews"
  # end
end
