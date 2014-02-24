# == Schema Information
#
# Table name: skills
#
#  id          :integer          not null, primary key
#  name        :text
#  category_id :integer
#  created_at  :datetime
#  updated_at  :datetime
#

class Skill < ActiveRecord::Base
  belongs_to :category
  has_many :roadmaps, dependent: :destroy
end
