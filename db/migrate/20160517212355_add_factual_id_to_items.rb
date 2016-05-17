class AddFactualIdToItems < ActiveRecord::Migration
  def change
    add_column :items, :factual_id, :string
  end
end
