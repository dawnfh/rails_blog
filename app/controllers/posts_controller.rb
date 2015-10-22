class PostsController < ApplicationController
	def index
		@posts = Post.all.order('created_at DESC')
	end

	def new
	end

	def create
		@post = Post.new(post_params)
		@post.save
		redirect_to @post
	end

	def show
		@post = Post.find(params[:id])
	end
# private prevents you from doing a mass update (will not be able to use one line of code to create/update a user)in these fields
	private
	def post_params
		params.require(:post).permit(:title, :body)
	end
end
