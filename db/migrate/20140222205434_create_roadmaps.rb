class CreateRoadmaps < ActiveRecord::Migration
  def change
    create_table :roadmaps do |t|
      t.text :title
      t.string :description
      t.integer :vote, default: 0
      t.belongs_to :skill, index: true

      t.timestamps
    end
  end
end
