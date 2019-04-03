module Types
  class MutationType < Types::BaseObject
    field :createReview, mutation: Mutations::CreateReview
    field :deleteProduct, mutation: Mutations::DeleteProduct
    field :updateProduct, mutation: Mutations::UpdateProduct
    field :createProduct, mutation: Mutations::CreateProduct

  end
end
