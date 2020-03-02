class CreateDdds < ActiveRecord::Migration[6.0]
  def change
    create_table :ddds do |t|
      t.integer :code
      t.string :state

      t.timestamps
    end
  end
end
