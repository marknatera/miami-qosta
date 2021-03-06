class BlogController < ApplicationController

  before_filter :find_post, only: [:show]

  def index
    @posts = Post.all.order(id: :desc)
  end

  def show
    @recent = Post.all.order(id: :desc).limit(5)
  end

  private

  def find_post
    @post = Post.find(params[:id])
  end

end
