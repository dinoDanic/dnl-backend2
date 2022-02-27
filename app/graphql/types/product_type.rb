# frozen_string_literal: true

module Types
  class ProductType < Types::BaseObject
    field :id, ID, null: false
    field :name, String, null: false
    field :code, String, null: false
    field :ean, Integer, null: true
    field :weight, String, null: true
    field :dimension_a, Integer, null: true
    field :dimension_b, Integer, null: true
    field :dimension_c, Integer, null: true
    field :description, String, null: true

    field :category_id, Integer, null: false
    field :created_at, GraphQL::Types::ISO8601DateTime, null: false
    field :updated_at, GraphQL::Types::ISO8601DateTime, null: false
  end
end
