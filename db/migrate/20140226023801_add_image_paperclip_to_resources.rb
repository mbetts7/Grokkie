class AddImagePaperclipToResources < ActiveRecord::Migration
  def self.up
    change_table :resources do |t|
      t.has_attached_file :image
    end
  end
end