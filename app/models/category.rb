# == Schema Information
#
# Table name: categories
#
#  id                 :integer          not null, primary key
#  name               :text
#  created_at         :datetime
#  updated_at         :datetime
#  image_url          :text
#  image_file_name    :string(255)
#  image_content_type :string(255)
#  image_file_size    :integer
#  image_updated_at   :datetime
#

class Category < ActiveRecord::Base
	has_many :skills, dependent: :destroy
  has_many :roadmaps, :through => :skills
end
