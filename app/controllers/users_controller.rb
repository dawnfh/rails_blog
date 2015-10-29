class UsersController < ApplicationController

	def create
		@user = User.create(user_params)
		# @user = user.start_with_p  can i place it here instead of insea
	end

	def new
	end

private
	def users_params
	params.require(:user).permit(:fname, :lname, :email)
	end

	def delete
	end

	def Submitting
		respond_to do |format|
			format.js
		end

		alert ('submit')
	end

	# def caraballo
	# 	@users = User.with_last_name_craballo.with_first_name_orlando
	# end
end
