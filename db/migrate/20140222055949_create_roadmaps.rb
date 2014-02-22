class CreateRoadmaps < ActiveRecord::Migration
  def change
    create_table :roadmaps do |t|
      t.text :title
      t.string :description
      t.integer :votes

      t.timestamps
    end
  end
end
