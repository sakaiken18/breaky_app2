class TopController < ApplicationController
  def index
    @posts = Post.order(start_time: "desc").limit(8)
  end
end
