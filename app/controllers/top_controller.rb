class TopController < ApplicationController
  def index
    @posts = User.where(user_id: current_user.id)
    @posts = Post.order("start_time").limit(6)
  end
end
