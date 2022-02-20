class CreateProducts < ActiveRecord::Migration[7.0]
  def change
    create_table :products do |t|
      t.string :name
      t.integer :code
      t.string :ean_code
      t.integer :weight

      t.timestamps
    end
  end
end
# TODO: VUKA ZVONA db:migrate nece updejtati