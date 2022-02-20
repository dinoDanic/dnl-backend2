module Types
  class QueryType < Types::BaseObject
    include GraphQL::Types::Relay::HasNodeField
    include GraphQL::Types::Relay::HasNodesField

    # /products
    field :products, [Types::ProductType], null: false

    def products
      Product.all
    end
    
  end
end