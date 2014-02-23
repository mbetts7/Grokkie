class Roadmap < ActiveRecord::Base
  belongs_to :skill
  belongs_to :user
  has_many :resources
end
