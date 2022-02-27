module Mutations
  class CreateProduct < BaseMutation
    argument :name, String, required: true
    argument :code, String, required: true
    argument :ean, Integer, required: false
    argument :weight, String, required: false
    argument :dimension_a, Integer, required: false
    argument :dimension_b, Integer, required: false
    argument :dimension_c, Integer, required: false
    argument :description, String, required: false

    argument :category_id, ID, required: false

    type Types::ProductType

    def resolve(name:, code:, ean:, weight:, dimension_a:, dimension_b:, dimension_c:, description:, category_id: )
      Product.create!(name: name, code: code, category_id: category_id, weight: weight, dimension_a: dimension_a, dimension_b: dimension_b, dimension_c: dimension_c, description: description )
    end
  end
end