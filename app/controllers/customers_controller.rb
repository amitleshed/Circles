class CustomersController < ApplicationController
	before_action :find_customer, only: [:show]
	
	
	def index
		@products = Product.all
		@categories = Category.all
	end

	def show
	end



private

def find_customer
	@customer = Customer.find(params[:id])
end

end 