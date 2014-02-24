class AddPaperclipToRoadmaps < ActiveRecord::Migration
  def self.up
    change_table :roadmaps do |t|
      t.has_attached_file :image
    end
  end
end


