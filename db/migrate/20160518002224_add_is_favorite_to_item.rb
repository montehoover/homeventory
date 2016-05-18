class AddIsFavoriteToItem < ActiveRecord::Migration
  def change
    add_column :items, :is_favorite, :boolean
  end
end
