# == Schema Information
#
# Table name: categories
#
#  id         :integer          not null, primary key
#  name       :text
#  created_at :datetime
#  updated_at :datetime
#  image_url  :text
#

class Category < ActiveRecord::Base
	has_many :roadmaps, dependent: :destroy
	has_many :skills, dependent: :destroy
  has_many :roadmaps, :through => :skills
end
