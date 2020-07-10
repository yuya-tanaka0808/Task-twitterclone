class BlogsController < ApplicationController
  def index
    @blog = Blog.all
  end
  def new
    @blog = Blog.new
  end
  def create
    @blog = Blog.new(blog_params)
    if @blog.save
    redirect_to new_blog_path, notice: "投稿しました！"
    else
      render :new
    end
  end
  def confirm
   @blog = Blog.new(blog_params)
   render :new if @blog.invalid?
  end
  private
  def blog_params
  params.require(:blog).permit(:content)
  end
  def find_blog
    @blog = Blog.find(params[:id])
  end
end
