module Types
  class ReviewType < Types::BaseObject
    field :id, ID, null: false
    field :content, String, null: false
    field :stars, Integer, null: false
    field :product, Types::ProductType, null: false
    # field :reviews, [ReviewType], null: false do
    #   argument :top_reviews, Boolean, required: false
    #   argument :lower_stars, Int, required: false
    #   argument :upper_stars, Int, required: false
    #   description " A collection of Reviews"
    # end


    # def reviews(**args)
    #   return Review.where('stars = 5') if  args[:top_reviews].present?
    #   return Review.where('stars >=? and stars <=?', args[:lower_stars], args[:upper_stars]) if args[:lower_stars].present? && args[:upper_stars].present?
    #   return Review.where('stars >=?', args[:lower_stars]) if args[:lower_stars].present?
    #   Review.all
    # end

  end
end
