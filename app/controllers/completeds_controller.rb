class CompletedsController < ApplicationController
  before_action :post_find

  def create
    current_user.completeds.create!(post_id: params[:post_id])
  end

  def destroy
    current_user.completeds.find_by(post_id: params[:post_id]).destroy!
  end

  private

  def post_find
    @post = Post.find(params[:post_id])
  end
end
