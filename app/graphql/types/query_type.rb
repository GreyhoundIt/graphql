module Types
  class QueryType < Types::BaseObject
    # Add root-level fields here.
    # They will be entry points for queries on your schema.


    field :product, ProductType, null: false, description: "find product by id"do
      argument :id, ID, required: true
    end

    field :products, [ProductType], null: false

    field :brand, BrandType, null: false, description: "find brand by id"do
      argument :id, ID, required: true
    end

    field :brands, [BrandType], null: false

    field :category, CategoryType, null: false, description: "find category by id"do
      argument :id, ID, required: true
    end

    field :categories, [CategoryType], null: false

    field :reviews, [ReviewType], null: false do
      argument :top_reviews, Boolean, required: false
      argument :lower_stars, Int, required: false
      argument :upper_stars, Int, required: false
      description " A collection of Reviews"
    end

    def reviews(**args)
      return Review.where('stars = 5') if  args[:top_reviews].present?
      return Review.where('stars >=? and stars <=?', args[:lower_stars], args[:upper_stars]) if args[:lower_stars].present? && args[:upper_stars].present?
      return Review.where('stars >=?', args[:lower_stars]) if args[:lower_stars].present?
      Review.all
    end


    def categories
      Category.all
    end

    def category(id:)
      Category.find(id)
    end

    def brands
      Brand.all
    end

    def brand(id:)
      Brand.find(id)
    end

    def products
      Product.all
    end

    def product(id:)
      Product.find(id)
    end

  end
end
