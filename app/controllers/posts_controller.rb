class PostsController < ApplicationController
  before_action :set_post, only: [:show, ]

  def index
    @posts = Post.order(id: :asc)
    @post = Post.new
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

  def set_post
    @post = Post.find(params[:id])
  end

  def post_params
    params.require(:post).permit(:title, :image, :content, :start_time)
  end
end
