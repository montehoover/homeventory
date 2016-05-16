class CreateOauthusers < ActiveRecord::Migration
  def change
    create_table :oauthusers do |t|
      t.string :provider
      t.string :provider_id
      t.string :provider_hash
      t.string :email
      t.string :name

      t.timestamps null: false
    end
  end
end
