class FeedController < ApplicationController
  def create
  end

  def index
    @post = Post.new
  end
end
