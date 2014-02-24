class AddImageFieldToResources < ActiveRecord::Migration
  def change
    add_column :resources, :image_url, :text
  end
end
