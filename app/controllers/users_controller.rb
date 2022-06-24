class UsersController < ApplicationController
  
  def show
    @posts = User.where(user_id: current_user.id).includes(:user).all
    @posts = Post.order("start_time").page(params[:page]).per(9)
  end
end
