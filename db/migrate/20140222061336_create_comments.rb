class CreateComments < ActiveRecord::Migration
  def change
    create_table :comments do |t|
      t.text :body
      t.belongs_to :roadmap, index: true
      t.integer :commentable_id
      t.string  :commentable_type

      t.timestamps
    end
  end
end
