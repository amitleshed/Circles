class CustomerCircle < ActiveRecord::Base
	belongs_to :customer, foreign_key: "customer_id"
	belongs_to :circle, foreign_key: "circle_id"
end
