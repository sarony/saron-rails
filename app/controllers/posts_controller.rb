class PostsController < ApplicationController

skip_before_action :authorize, :only => [:index, :show]

  def index
    @posts = Post.all
  end

  def new
    # layout: 'false'
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
    @posts = PostsPostType.where(:post_type_id => 1)
  end

  def thoughts
    @posts = Post.where(:post_type => "thoughts")
  end

  def illustrations
    @posts = Post.where(:post_type => "illustrations")
  end

  private

  def set_post
    @post = Post.where(:id => params[:id]).first
  end

  def post_params
    params.require(:post).permit(:title, :preview, :body)
  end

end
