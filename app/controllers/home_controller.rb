class HomeController < ApplicationController
  skip_before_action :authorize

  def index
  end

  def all
    @posts = Post.all
  end

  def about
  end
  
end
