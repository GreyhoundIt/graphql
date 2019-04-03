module Types
  class ProductType < Types::BaseObject
    description " A product"

    field :id, ID, null: false
    field :title, String, null: false
    field :description, String, null: false
    field :spec, String, null: true
    field :min_order, Int, null:false
    field :brand, Types::BrandType, null: false
    field :category, Types::CategoryType, null: false
    field :reviews, [Types::ReviewType], null: false

  end
end
