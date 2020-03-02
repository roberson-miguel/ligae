class CreateTaxes < ActiveRecord::Migration[6.0]
  def change
    create_table :taxes do |t|
      t.integer :ddd_origin
      t.integer :ddd_destiny
      t.integer :amount_min
      t.string :name_plan
      t.float :price_plan
      t.float :price_surplus

      t.timestamps
    end
  end
end
