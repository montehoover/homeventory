class CreateItems < ActiveRecord::Migration
  def change
    create_table :items do |t|
      t.string :name
      t.string :description
      t.integer :fresh_duration
      t.datetime :exp_date
      t.integer :avg_use_duration
      t.datetime :use_date
      t.float :restock_amount
      t.float :amount_left
      t.string :img_url
      t.references :default, index: true, foreign_key: true
      t.references :favorite, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
