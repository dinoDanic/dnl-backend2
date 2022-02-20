class Mutations::CreateProduct < Mutations::BaseMutation
  argument :code, String, required: true
  argument :name, String, required: true

  field :product, Types::ProductType, null: false
  field :errors, [String], null: false

  def resolve(code:, name:)
    product = Product.new(code: code, name: name)
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