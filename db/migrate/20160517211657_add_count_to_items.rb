class AddCountToItems < ActiveRecord::Migration
  def change
    add_column :items, :count, :float
  end
end
