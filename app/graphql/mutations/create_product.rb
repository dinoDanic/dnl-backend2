class Mutations::CreateProduct < Mutations::BaseMutation
  argument :code, String, required: true
  argument :name, String, required: true
  argument :ean_code, String, required: true
  argument :weight, Integer, required: true

  field :product, Types::ProductType, null: false
  field :errors, [String], null: false

  def resolve(code:, name:, ean_code:, weight:)
    product = Product.new(code: code, name: name, weight: weight, ean_code: ean_code)
    if product.save
      {
        product: product,
        errors: []
      }
    else 
      {
        product: nil,
        errors: user.errors.full_messages
      }
    end
  end
end