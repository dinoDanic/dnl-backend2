module Mutations
  class CreateProduct < BaseMutation
    argument :name, String, required: true
    argument :code, String, required: true
    argument :category_id, ID, required: true

    type Types::ProductType

    def resolve(name:, code:, category_id:)
      Product.create!(name: name, code: code, category_id: category_id )
    end
  end
end