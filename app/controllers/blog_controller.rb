class BlogController < ApplicationController

  before_filter :find_post, only: [:show]

  def index
    @posts = Post.all.order(id: :desc)
  end

  def show
  end

  private

  def find_post
    @post = Post.find(params[:id])
  end

end
