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
#  attachment_file_name    :string(255)
#  attachment_content_type :string(255)
#  attachment_file_size    :integer
#  attachment_updated_at   :datetime
#  image_file_name         :string(255)
#  image_content_type      :string(255)
#  image_file_size         :integer
#  image_updated_at        :datetime
#

class Resource < ActiveRecord::Base
  belongs_to :roadmap


# Adding an document to resource
    has_attached_file :attachment

    validates_attachment_content_type :attachment, content_type: "application/pdf"
      
# Adding an image to resource
    has_attached_file :image, styles: { 
      thumb: '100x100>',
      square: '200x200#',
      medium: '300x300>', 
      }
    
    validates_attachment_content_type :image, :content_type => /\Aimage/, :message => 'file type not allowed, please only upload images'
  
    #uncomment if you want default_url
    # default_url: 'login_background.jpg'
end
