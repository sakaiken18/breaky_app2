class MypageController < ApplicationController
  before_action :authenticate_user!
  
  def show
    @posts = Post.where(user_id: current_user.id).order("start_time").page(params[:page]).per(9)
  end
end
