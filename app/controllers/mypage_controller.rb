class MypageController < ApplicationController
  before_action :authenticate_user!
  
  def show
    @posts = Post.where(user_id: current_user.id).order(start_time: "desc").page(params[:page]).per(8)
  end
end
