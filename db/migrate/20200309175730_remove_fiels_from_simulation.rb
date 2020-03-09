class RemoveFielsFromSimulation < ActiveRecord::Migration[6.0]
  def change

    remove_column :simulations, :name, :string

    remove_column :simulations, :city, :string

    remove_column :simulations, :phone, :string
  end
end
