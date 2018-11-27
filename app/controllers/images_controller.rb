class ImagesController < ApplicationController

	def destroy
		@post = Post.find(params[:post_id])
		@image = @post.images.find(params[:id])
		@image.destroy
		redirect_to edit_post_path(@post)
	end
end
