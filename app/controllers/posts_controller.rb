class PostsController < ApplicationController
  def index
    @post = Post.new
    @posts = Post.order(id: :asc)
  end

  def show
  end

  def new
  end

  def create
    post = Post.create!(post_params)
    redirect_to post_path(post)
  end

  def edit
  end

  def update
  end

  def destroy
  end

  private

  def post_params
    params.require(:post).permit(:title, :image, :content)
  end
end
