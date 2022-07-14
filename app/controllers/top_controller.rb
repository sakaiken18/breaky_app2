class TopController < ApplicationController
  def index
    @posts = Post.order("start_time").limit(6)
  end
end
