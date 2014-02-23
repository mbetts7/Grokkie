class Comment < ActiveRecord::Base
  belongs_to :roadmap
  has_many :comments, as: :commentable, dependent: :destroy
end
