class BlogsController < ApplicationController
  before_action :find_blog, only:[:show, :edit, :update, :destroy]
  def index
    @blog = Blog.all
  end
  def show
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
  def edit
  end
  def update
    if @blog.update(blog_params)
      redirect_to blogs_path, notice: "編集しました！"
    else
      render :edit
    end
  end
  def destroy
    @blog.destroy
    redirect_to blogs_path, notice: "削除しました！"
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
