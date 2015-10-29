class PostsController < ApplicationController
	
	after_destroy :log_destroy_action

	# @posts is a variable that is going to be available in the index.html.erb page
	def index
		@posts = Post.all.order('created_at DESC')
	end

  def log_destroy_action
    puts 'Post destroyed'
  end

	def new
		@post = Post.new
	end


	def create
		@post = Post.new(post_params)
		@post.save
		redirect_to @post
	end

	def show
		@post = Post.find(params[:id])
	end

	def delete
		 @post = Post.find(params[:id])
	   @post.delete
	end

	def destroy
  	 session[:user_id] = nil
     redirect_to post_path
	end


# private prevents you from doing a mass update (will not be able to use one line of code to create/update a user)in these fields
	private
	def post_params
		params.require(:post).permit(:title, :body)
	end
end
