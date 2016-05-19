class AddIsShoppingListToItems < ActiveRecord::Migration
  def change
    add_column :items, :is_shopping_list, :boolean
  end
end
