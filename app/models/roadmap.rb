# == Schema Information
#
# Table name: roadmaps
#
#  id          :integer          not null, primary key
#  title       :text
#  description :string(255)
#  vote        :integer          default(0)
#  skill_id    :integer
#  created_at  :datetime
#  updated_at  :datetime
#  image_url   :text
#

class Roadmap < ActiveRecord::Base
  belongs_to :skill
  belongs_to :user
  has_many :resources
end
