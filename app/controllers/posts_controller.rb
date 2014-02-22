require 'pry'

class PostsController < ApplicationController

skip_before_action :authorize, :except => [:new, :edit, :update, :destroy]

  def index
    @posts = Post.all
  end

  def new
    @post = Post.new
    @post_types = PostType.all
  end

  def create
    @post = Post.create(post_params)
    redirect_to posts_path
  end

  def show
    set_post
  end

  def edit
    set_post
  end

  def update
    set_post
    @post.update(post_params)
    redirect_to post_path
  end

  def destroy
    set_post
    @post.destroy
    redirect_to posts_path
  end

  def code
    # TODO: fix these filters
    @postsposttypes = PostsPostType.where(:post_type_id => 2)
    @posts = @postsposttypes.collect{|ppt| ppt.post }
  end

  def thoughts
    @postsposttypes = PostsPostType.where(:post_type_id => 3)
    @posts = @postsposttypes.collect{|ppt| ppt.post }
  end

  def illustrations
    @postsposttypes = PostsPostType.where(:post_type_id => 1)
    @posts = @postsposttypes.collect{|ppt| ppt.post }
  end

  private

  def set_post
    @post = Post.where(:id => params[:id]).first
  end

  def post_params
    params.require(:post).permit(:title, :preview, :body)
  end

end
