class ImagesController < ApplicationController

	def destroy
		@image = Image.find(params[:id])
		@image.destroy
		redirect_to posts_path
	end
end
