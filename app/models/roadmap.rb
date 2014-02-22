class Roadmap < ActiveRecord::Base
	has_many :resources
	has_many :comments, as: :commentable, dependent: :destroy
	# belongs_to :user
end
