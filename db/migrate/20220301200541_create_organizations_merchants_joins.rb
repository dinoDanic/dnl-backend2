class CreateOrganizationsMerchantsJoins < ActiveRecord::Migration[7.0]
  def change
    create_table :organization_merchant_joins do |t|

      t.timestamps
    end
  end
end
