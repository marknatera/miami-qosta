class BlogController < ApplicationController

  before_filter :find_post, only: [:show]

  def index
    @posts = Post.all

  end

  def show
    respond_with(@posts)
  end

  private

  def find_dev
    @post = Post.find_by_slug!(params[:id])
  end

end
