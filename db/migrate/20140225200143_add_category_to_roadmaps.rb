class AddCategoryToRoadmaps < ActiveRecord::Migration
  def change
    add_column :roadmaps, :category_id, :integer
  end
end
