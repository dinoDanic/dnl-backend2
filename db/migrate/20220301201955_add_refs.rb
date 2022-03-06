class AddRefs < ActiveRecord::Migration[7.0]
  def change
    add_reference :users, :organization, foreign_key: true
    add_reference :products, :organization, foreign_key: true
    add_reference :products, :category, foreign_key: true

    add_reference :organization_merchant_joins, :organization, foreign_key: true
    add_reference :organization_merchant_joins, :merchant, foreign_key: true
    
    add_reference :product_order_joins, :product, foreign_key: true
    add_reference :product_order_joins, :order, foreign_key: true
    
    add_reference :orders, :bureau, foreign_key: true

    add_reference :bureaus, :merchant, foreign_key: true
  end
end
