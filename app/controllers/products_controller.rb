class ProductsController < ApplicationController
	before_action :find_product, only: [:show, :update, :edit, :destroy]
	before_filter :authenticate_supplier!, only: [:update, :edit, :destroy]
	
	
	def index
		if current_supplier
			@products = current_supplier.products 
		elsif current_customer
			@products = Product.order("created_at DESC")
		else
			@products = Product.all
		end
	end

	def show
	end
	
	def new
		@product = Product.new
		
	end

	def create
		@product = current_supplier.products.build(product_params)

		if @product.save
			redirect_to @product, notice: "Your Product is now published!"
		else
			render 'new'
		end
	end

	def edit
		@product = find_product	
		if @product.supplier == current_supplier
		else
			redirect_to @product, notice: "You cannot edit other suppliers' products!"
		end

	end

	def update
		if @product.update(product_params)
			redirect_to @product, notice: "Your Product was successfully updated!"
		else
			render 'edit'
		end
	end

	def destroy
		@product.destroy
		redirect_to root_path
		
	end

	def by_city
		@products = Product.all
	end

	def search	
		@products = Product.search(params[:search]) 
		 if @products.empty?
        	render 'search_failed'
    	end
	end

	def end_time
		ProductsWorker.perform_async(:product_id => params[:id])
		redirect_to root_path
	end


	private


	def find_product
		@product = Product.find(params[:id])
	end

	def product_params
		params.require(:product).permit(:title, :description, :image, :price, :quantity, :category_id, :end_time)
	end

end
