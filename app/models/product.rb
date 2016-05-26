class Product < ActiveRecord::Base
	include ActionView::Helpers
	#callbacks
	after_create do 
		Circle.create product: self
	end
	#associations 
	belongs_to :category
	belongs_to :supplier
	has_one :circle, dependent: :destroy
	

	#searchkick
	searchkick 
	

	#validations
	has_attached_file :image, styles: { custom: "270x270", small: "150x150", tiny: "110x110" }, 
						url: "/assets/products/:id/:style/:basename.:extension",
						path: ":rails_root/public/assets/products/:id/:style/:basename.:extension"
	validates_attachment_content_type :image, content_type: /\Aimage\/.*\Z/
	validates_length_of :title, minimum: 2
	validates :description, length: { minimum: 20, maximum: 340 }
	validates_numericality_of :price, :quantity
	validates_presence_of :price, :quantity, :title, :description, :category_id

	#definitions
	def end_time
		self.update_attribute(:end_time, Time.now)
	end
end
