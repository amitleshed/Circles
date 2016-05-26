class Relationship < ActiveRecord::Base
	#Associations
	belongs_to :follower, class_name: "Customer"
	belongs_to :followed, class_name: "Customer"

	#Validations
	validates :follower_id, presence: true
	validates :followed_id, presence: true
end
