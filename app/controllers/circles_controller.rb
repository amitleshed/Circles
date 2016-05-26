class CirclesController < ApplicationController
	before_action :find_circle, only: [:show]

	def index	
		@circles = Circle.all
	end

	def new
	end

	def create
	end

	def add_customer
		find_circle
	  	if @circle.add_customer(current_customer)
	    	redirect_to root_path
	    else
	    	render 'add_error'
	  	end
	end
	
	private

	def find_circle
		@circle = Circle.find(params[:id])
	end
	
end
