class Category < ActiveRecord::Base
	has_many :products
	validates :name, uniqueness: { case_sensitive: false }, presence: true
	acts_as_tree order: "name"
	
end



