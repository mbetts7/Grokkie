class CreateSkills < ActiveRecord::Migration
  def change
    create_table :skills do |t|
      t.text :name
      t.belongs_to :category, index: true

      t.timestamps
    end
  end
end
