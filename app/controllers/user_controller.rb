class UserController < ApplicationController
  def login
    u = User.find_or_create_by(user_id: params[:user_id])

    u.user_id = params[:user_id]
    u.save


  end
end
