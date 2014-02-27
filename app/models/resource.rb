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
#  image_file_name         :string(255)
#  image_content_type      :string(255)
#  image_file_size         :integer
#  image_updated_at        :datetime
#  short_url               :string(255)
#

class Resource < ActiveRecord::Base
  belongs_to :roadmap
    
  before_save :save_short_link

# Adding an document to resource
  has_attached_file :attachment


  #MIME types http://msdn.microsoft.com/en-us/library/ms775147(v=vs.85).aspx
  validates_attachment_content_type :attachment, content_type: [
    'application/pdf', 
    'text/plain', 
    'text/html', 
    'text/xml', 
    'text/richtext', 
    'application/msword', 
    'application/vnd.openxmlformats-officedocument.wordprocessingml.document', 
    'application/vnd.ms-excel', 
    'application/vnd.openxmlformats-officedocument.spreadsheetml.sheet', 
    'application/vnd.ms-powerpoint', 
    'application/vnd.openxmlformats-officedocument.presentationml.presentation']
      
# Adding an image to resource
  has_attached_file :image, styles: { 
    thumb: '100x100>',
    square: '200x200#',
    medium: '300x300>', 
    }
  
  validates_attachment_content_type :image, content_type: /\Aimage/, message: 'file type not allowed, please only upload images'

  private

  def save_short_link
    # fix code
  end
    
end
