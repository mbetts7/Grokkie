# == Schema Information
#
# Table name: categories
#
#  id         :integer          not null, primary key
#  name       :text
#  created_at :datetime
#  updated_at :datetime
#

class Category < ActiveRecord::Base
	has_many :skills, dependent: :destroy
end
