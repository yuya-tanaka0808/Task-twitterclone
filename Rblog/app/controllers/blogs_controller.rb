class BlogsController < ApplicationController
  def index
    @blog = Blog.all
  end
  def new
    @blog = Blog.new
  end
end
