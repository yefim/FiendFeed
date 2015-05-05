class UsersController < ApplicationController
  def index
    graph = Koala::Facebook::API.new(current_user.oauth_token)
    @friends = graph.get_connections('me', 'friends').map { |u| u["id"] }

    @users = User.where.not(id: current_user.id)
  end

  def show
    @user = User.find(params[:id])
    @feed = Post.where(user_id: params[:id])
    graph = Koala::Facebook::API.new(current_user.oauth_token)
    @friends = graph.get_connections('me', 'friends').map { |u| u["id"] }
  end

  def follow
    user = User.find(params[:id])
    current_user.users << user
    current_user.save!
    redirect_to feed_index_path
  end
end
