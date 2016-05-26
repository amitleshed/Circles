class Circle < ActiveRecord::Base
	#associations
	belongs_to :product
	has_many :customer_circles
	has_many :customers, through: :customer_circles


	
  #definitions
	def add_customer(customer_id)
		if customer = Customer.where(id: customer_id).first
			self.customers << customer unless self.customers.include?(customer)
		end
	end 

	def customer_in_circle?(customer)
		self.customers.include?(customer)
	end
end
