# frozen_string_literal: true

class Users::SessionsController < Devise::SessionsController
  def guest_sign_in
    sign_in User.guest
    redirect_to root_path, notice: "ゲストユーザーとしてログインしました。"
  end
end
