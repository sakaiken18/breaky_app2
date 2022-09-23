class TopController < ApplicationController
  def index
    @posts = Post.order("start_time").limit(8)
  end
end
