class Post < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
 #  devise :database_authenticatable, :registerable,
 #         :recoverable, :rememberable, :trackable, :validatable

	# validate :title, presence: true, length: {minimum: 8}
	# validate :body, presence: true
		# attr_accessible :title, :body


 # validation & error messages with andrewperk
		validates :title, :body, presence: true
		validates :title, :length => { :minimum => 2, maximum: 50 }
		validates :title, uniqueness: true
end