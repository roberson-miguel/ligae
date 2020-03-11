class RemoveDiffFromSimulation < ActiveRecord::Migration[6.0]
  def change

    remove_column :simulations, :diff, :integer
  end
end
