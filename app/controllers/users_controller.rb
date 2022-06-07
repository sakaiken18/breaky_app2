class UsersController < ApplicationController
  def show
    @posts = Post.where(id: current_user.id)
  end
end
