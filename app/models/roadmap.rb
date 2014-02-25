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
#

class Roadmap < ActiveRecord::Base
  belongs_to :skill
  belongs_to :user
  has_many :resources
  acts_as_votable

  has_attached_file :image, styles: { 
      thumb: '100x100>',
      square: '200x200#',
      medium: '300x300>', 
      }   
    # ,default_url: '/images/background1.jpeg'

  validates_attachment_content_type :image, :content_type => /\Aimage\/.*\Z/

  # validates_attachment :image,
  # :content_type => { :content_type => ["image/jpg", "image/gif", "image/png", "image/jpeg"] }

end
