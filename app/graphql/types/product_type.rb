# frozen_string_literal: true

module Types
  class ProductType < Types::BaseObject
    field :id, ID, null: false
    field :code, String, null: false
    field :name, String, null: false
    field :ean_code, String, null: false
    field :weight, Integer, null: false
  end
end
