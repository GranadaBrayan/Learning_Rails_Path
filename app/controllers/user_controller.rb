class UserController < ApplicationController
  # Follows a user.
  def follow
    Follow.new(follower_id: current_user.id, followed_user_id: params[:id]).save
    redirect_to root_url
  end

  # Unfollows a user.
  def unfollow
    Follow.where(follower_id: current_user.id, followed_user_id: params[:id])[0].destroy
    redirect_to root_url
  end
end
