class UsersController < ApplicationController
  before_action :authenticate_user!
  
  def show
    @posts = User.where(user_id: current_user.id)
    @posts = Post.order(start_time: "desc").page(params[:page]).per(8)
  end
end
