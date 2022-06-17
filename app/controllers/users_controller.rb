class UsersController < ApplicationController
  def show
    @posts = current_user.posts
    @posts = Post.order("start_time").page(params[:page]).per(9)
  end
end
