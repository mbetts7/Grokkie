class CreateResources < ActiveRecord::Migration
  def change
    create_table :resources do |t|
      t.text :name
      t.string :url
      t.string :description
      t.integer :position_id
      t.belongs_to :roadmap, index: true

      t.timestamps
    end
  end
end
