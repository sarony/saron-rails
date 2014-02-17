class HomeController < ApplicationController

  def index
  end

  def all
    @posts = Post.all
  end

  def about
  end
  
end
