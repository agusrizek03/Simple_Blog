class PostsController < ApplicationController
  def index
    @post = current_user.posts.all
  end

  def show
  end

  def edit
  end

  def new
    @post = Post.new
  end

  def create
    @post = current_user.posts.build(post_params)
    @post.save
    redirect_to posts_path
  end

  def update
  end

  def destroy
  end

  private
  def post_params
    params.require(:post).permit(:title, :body)
  end
end
