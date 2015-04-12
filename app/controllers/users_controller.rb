class UsersController < ApplicationController
  def show
    @feed = Post.where(user_id: params[:id])
  end
end
