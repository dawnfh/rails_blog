class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
	# scope :with_last_name_caraballo, -> {where(lname: "Caraballo")}
	# scope :with_last_name_orlando, -> lamdba {where(fname: "Orlando")}
	# scipe :hotmail, -> {wgere(email: "horatio%hotmail.com ")}
	# scope :starts_with_p, -> {where("fname LIKE ?", "P%")}
	validates_confirmation_of :password
	validates_presence_of :password, :on => :create
	validates_presence_of :email
	validates_uniqueness_of :email

	has_attached_file :avatar, :styles => { :medium => "300x300>", :thumb => "100x100>" }, :default_url => "/images/:style/missing.png" validates_attachment_content_type :avatar, :content_type => /\Aimage\/.*\Z/


	#lesson on data integrity to change for STATUS ={"active", "inactive", "banned"}
	def edit
		@user = User.find params[:id]

		@user.status = Status[0]
		@user.save
	end
end 

