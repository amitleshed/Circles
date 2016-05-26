class Supplier < ActiveRecord::Base
	#Associations
	has_many :products

	#Devise
	devise :database_authenticatable, :registerable,
	     :recoverable, :rememberable, :trackable, :validatable,
	     :lockable, :timeoutable and :omniauthable

	#Validations
  	validates_presence_of :full_name

def remember_me
	true
end

def full_name
	[first_name, last_name].join('')
end
		
def full_name=(name)
	split = name.split(' ', 2)
	self.first_name = split.first
	self.last_name = split.last 
end
end
