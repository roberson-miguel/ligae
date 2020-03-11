class RemoveDiffplanFromSimulation < ActiveRecord::Migration[6.0]
  def change

    remove_column :simulations, :diff_plan, :integer
  end
end
