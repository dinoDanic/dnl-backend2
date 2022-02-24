module Types
  class QueryType < Types::BaseObject
    include GraphQL::Types::Relay::HasNodeField
    include GraphQL::Types::Relay::HasNodesField

    field :products, [ProductType], null: false
    field :categories, [CategoryType], null: false

    field :product, ProductType, null: false do
      argument :id, ID, required: true
    end

    field :category, CategoryType, null: false do 
      argument :id, ID, required: true
    end

    def products
      Product.all
    end

    def categories
      Category.all
    end

    def product(id:) 
      Product.find(id)
    end

    def category(id:)
      Category.find(id)
    end
    
  end
end