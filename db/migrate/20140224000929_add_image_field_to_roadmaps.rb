class AddImageFieldToRoadmaps < ActiveRecord::Migration
  def change
    add_column :roadmaps, :image_url, :text
  end
end
