class AddImageToCategories < ActiveRecord::Migration
  def self.up
    change_table :categories do |t|
      t.has_attached_file :image
    end
  end
end