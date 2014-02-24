class AddProfileToUser < ActiveRecord::Migration
  def change
    add_column :users, :twitter_name, :string
    add_column :users, :github_name, :string
    add_column :users, :bio, :text
  end
end
