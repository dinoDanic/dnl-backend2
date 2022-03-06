class CreateProductsOrdersJoins < ActiveRecord::Migration[7.0]
  def change
    create_table :product_order_joins do |t|

      t.timestamps
    end
  end
end
