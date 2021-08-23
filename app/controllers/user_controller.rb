class UserController < ApplicationController
  # Follows a user.
  def follow
    follow = Follow.new(follower_id: current_user.id, followed_user_id: params[:id])
    follow.save
    redirect_to root_url
  end

  # Unfollows a user.
  def unfollow
    follow = Follow.find_by(follower_id: current_user.id, followed_user_id: params[:id])
    follow.destroy
    redirect_to root_url
  end
end
