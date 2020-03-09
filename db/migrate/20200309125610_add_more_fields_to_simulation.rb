class AddMoreFieldsToSimulation < ActiveRecord::Migration[6.0]
  def change
    add_column :simulations, :ddd_origin_user, :integer
    add_column :simulations, :ddd_destiny_user, :interger
    add_column :simulations, :diff_plan, :integer
    add_column :simulations, :with_plan, :float
    add_column :simulations, :without_plan, :float
  end
end
