class UsersController < ApplicationController
  def show
    @user = User.find(params[:id])
    @feed = Post.where(user_id: params[:id])
  end

  def follow
    user = User.find(params[:id])
    current_user.users << user
    current_user.save!
    redirect_to user_path(user)
  end
end
