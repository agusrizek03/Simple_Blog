class HomeController < ApplicationController
	before_action :authenticate_user!

  def index
  	@post = Post.all.order("Updated_at DESC")
  end
end
