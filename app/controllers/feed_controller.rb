class FeedController < ApplicationController
  def create
  end

  def index
    @post = Post.new
    following = current_user.users
    @feed = Post.where(user_id: following + [current_user]).order('created_at DESC')
  end
end
