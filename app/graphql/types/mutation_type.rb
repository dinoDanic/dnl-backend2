module Types
  class MutationType < Types::BaseObject
    field :create_category, mutation: Mutations::CreateCategory
    field :create_product, mutation: Mutations::CreateProduct
  end 
end
