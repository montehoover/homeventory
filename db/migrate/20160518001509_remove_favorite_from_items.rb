class RemoveFavoriteFromItems < ActiveRecord::Migration
  def change
    remove_reference :items, :favorite, index: true, foreign_key: true
  end
end
