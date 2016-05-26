class Customer < ActiveRecord::Base

  #Associations
  has_many :customer_circles
  has_many :circles, through: :customer_circles
  has_many :active_relationships, class_name: "Relationship", foreign_key: "follower_id", dependent: :destroy
  has_many :passive_relationships, class_name: "Relationship", foreign_key: "followed_id", dependent: :destroy
  has_many :following, through: :active_relationships, source: :followed
  has_many :followers, through: :passive_relationships, source: :follower

  #Devise
  devise :database_authenticatable, :registerable,
       :recoverable, :rememberable, :trackable, :validatable, 
       :lockable, :timeoutable and :omniauthable
  #Validations
  validates_presence_of :full_name
      
  #defintions
  def remember_me
  	true	
  end

  def full_name
  	[first_name, last_name].join(' ')
  end

  def full_name=(name)
  	split = name.split(' ', 2)
  	self.first_name = split.first
  	self.last_name = split.last
  end

  def follow(other_customer)
  	active_relationships.create(followed_id: other_customer.id)
  end

  def unfollow(other_customer)
  	active_relationships.find_by(followed_id: other_customer.id).destroy
  end

  def following?(other_customer)
  	following.include?(other_customer)
  end

end
