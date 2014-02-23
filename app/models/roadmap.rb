class Roadmap < ActiveRecord::Base
  belongs_to :skill
  has_many :resources
end
