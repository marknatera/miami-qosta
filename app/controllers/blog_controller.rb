class BlogController < ApplicationController


  def index
    @posts = Post.all

  end

  def show
    respond_with(@posts)
  end
end
