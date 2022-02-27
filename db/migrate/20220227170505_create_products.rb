class CreateProducts < ActiveRecord::Migration[7.0]
  def change
    create_table :products do |t|
      t.string :name
      t.string :code
      t.integer :ean
      t.integer :weight
      t.integer :dimension_a
      t.integer :dimension_b
      t.integer :dimension_c
      t.string :description
      t.references :category, null: false, foreign_key: true

      t.timestamps
    end
  end
end
