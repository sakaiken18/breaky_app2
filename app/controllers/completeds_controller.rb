class CompletedsController < ApplicationController

  def create
    Completed.create(user_id: current_user.id, post_id: params[:id])
    redirect_to root_path
  end

  def destroy
    completed = Completed.find_by(user_id: current_user.id, post_id: params[:id])
    completed.destroy
    redirect_to root_path
  end
end
