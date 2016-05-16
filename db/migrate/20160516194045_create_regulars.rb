class CreateRegulars < ActiveRecord::Migration
  def change
    create_table :regulars do |t|
      t.string :name
      t.string :description
      t.float :restock_amount
      t.datetime :exp_date
      t.datetime :usage_date
      t.boolean :is_favorite
      t.float :max_ever_stocked
      t.references :category, index: true, foreign_key: true
      t.references :user, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
