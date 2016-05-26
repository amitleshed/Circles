class CategoriesController < ApplicationController
	before_action :find_category, only: [:show]
	

	def index
		@categories = Category.order(:name)
		@category1 = Category.find(2)
		
	end

	def show
		
	end

	
	
	private

	def find_category
		@category = Category.find(params[:id]) 
	end

	def find_subcategories
		@subcategories = Category.where(parent_id: params[:parent_id])
	end
end
