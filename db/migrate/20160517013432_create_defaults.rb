class CreateDefaults < ActiveRecord::Migration
  def change
    create_table :defaults do |t|
      t.string :name
      t.float :restock_amount
      t.float :max_amount_sofar
      t.integer :fresh_duration
      t.integer :avg_use_duration

      t.timestamps null: false
    end
  end
end
