class PostsController < ApplicationController
  def create
    post = Post.new(body: params[:post][:body])
    post.user = current_user
    post.save!
    redirect_to feed_index_path
  end
end
