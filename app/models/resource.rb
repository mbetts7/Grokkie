# == Schema Information
#
# Table name: resources
#
#  id                      :integer          not null, primary key
#  name                    :text
#  url                     :string(255)
#  description             :string(255)
#  position_id             :integer
#  roadmap_id              :integer
#  created_at              :datetime
#  updated_at              :datetime
#  image_url               :text
#  attachment_file_name    :string(255)
#  attachment_content_type :string(255)
#  attachment_file_size    :integer
#  attachment_updated_at   :datetime
#

class Resource < ActiveRecord::Base
  belongs_to :roadmap
end
