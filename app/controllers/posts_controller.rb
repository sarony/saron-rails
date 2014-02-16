class PostsController < ApplicationController

  def index
    @posts = Post.all
  end

  def new
    @post = Post.new
  end

  def create
    @post = Post.create(post_params)
    redirect_to posts_path
  end

  def show
    set_post
    
  end

  private

  def set_post
    @post = Post.where(:id => params[:id]).first
  end

  def post_params
    params.require(:post).permit(:title, :preview, :body)
  end

end
