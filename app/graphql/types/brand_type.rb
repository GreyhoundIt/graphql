module Types
  class BrandType < Types::BaseObject

    description = "A Brand"
    field :id, ID, null: false
    field :name, String, null: false
    field :type, String, null: false
    field :url, String, null: true
    field :slug, String, null: false
    field :show, Boolean, null: false
    field :products, [Types::ProductType], null: false
  end
end
