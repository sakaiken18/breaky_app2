class PostsController < ApplicationController
  before_action :set_post, only: [:show, :edit, :update, :destroy]

  def index
    @posts = Post.where(user_id: current_user.id).includes(:user).all
    @post = Post.new(user_id: @current_user.id)
  end

  def show
  end

  def new
  end

  def create
    @post = current_user.posts.create!(post_params)
    redirect_to post_path(@post)
  end

  def edit
  end

  def update
    @post.update!(post_params)
    redirect_to @post
  end

  def destroy
    @post.destroy!
    redirect_to posts_path
  end

  private

  def set_post
    @post = Post.find(params[:id])
      unless @post.user == current_user
        redirect_to post_path(@post)
      end
  end

  def post_params
    params.require(:post).permit(:title, :image, :content, :start_time).merge(user_id: current_user.id)
  end
end
