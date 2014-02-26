class AddPaperclipToResources < ActiveRecord::Migration
  def self.up
    change_table :resources do |t|
      t.has_attached_file :attachment
    end
  end
end