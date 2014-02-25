class AddLearningToUser < ActiveRecord::Migration
  def change
    add_column :users, :learning_style, :string
  end
end
