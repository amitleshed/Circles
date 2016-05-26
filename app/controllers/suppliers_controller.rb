class SuppliersController < ApplicationController
	before_action :find_supplier, only: [:show]
	def index
		if current_supplier
			@products = current_supplier.products
		end

		@categories = Category.all
	end

	def show
	end



	private

	def find_supplier
		@supplier = Supplier.find(params[:id])
	end
end
