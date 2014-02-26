class AddUserToRoadmaps < ActiveRecord::Migration
  def change
    add_column :roadmaps, :user_id, :integer
  end
end
