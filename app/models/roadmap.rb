class Roadmap < ActiveRecord::Base
	has_many :resources, dependent: :destroy
	has_many :comments, as: :commentable, dependent: :destroy
	# belongs_to :user
end
