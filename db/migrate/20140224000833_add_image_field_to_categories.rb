class AddImageFieldToCategories < ActiveRecord::Migration
  def change
    add_column :categories, :image_url, :text
  end
end
