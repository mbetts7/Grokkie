# == Schema Information
#
# Table name: resources
#
#  id          :integer          not null, primary key
#  name        :text
#  url         :string(255)
#  description :string(255)
#  position_id :integer
#  roadmap_id  :integer
#  created_at  :datetime
#  updated_at  :datetime
#  image_url   :text
#

class Resource < ActiveRecord::Base
  belongs_to :roadmap
end
