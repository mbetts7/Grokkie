class Skill < ActiveRecord::Base
  belongs_to :category
  has_many :roadmaps
end
