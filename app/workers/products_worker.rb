class ProductsWorker  
	include Sidekiq::Worker

	def perform(options)
		product = Product.find(options[:product_id])
		product.end_time
	end
end
