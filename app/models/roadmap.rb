# == Schema Information
#
# Table name: roadmaps
#
#  id                 :integer          not null, primary key
#  title              :text
#  description        :string(255)
#  vote               :integer          default(0)
#  skill_id           :integer
#  created_at         :datetime
#  updated_at         :datetime
#  image_url          :text
#  image_file_name    :string(255)
#  image_content_type :string(255)
#  image_file_size    :integer
#  image_updated_at   :datetime
#  user_id            :integer
#  category_id        :integer
#

class Roadmap < ActiveRecord::Base
  belongs_to :user
  belongs_to :skill
  belongs_to :category
  has_many :resources
  acts_as_votable

end
