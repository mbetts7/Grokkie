class AddImageFieldToSkills < ActiveRecord::Migration
  def change
    add_column :skills, :image_url, :text
  end
end
