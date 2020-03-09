class CreateSimulations < ActiveRecord::Migration[6.0]
  def change
    create_table :simulations do |t|
      t.string :name
      t.string :phone
      t.string :city
      t.integer :amount_user

      t.timestamps
    end
  end
end
