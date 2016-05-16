class CreateItems < ActiveRecord::Migration
  def change
    create_table :items do |t|
      t.string :amount_left
      t.references :regular, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
