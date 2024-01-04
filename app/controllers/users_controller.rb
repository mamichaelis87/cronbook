class UsersController < ApplicationController
  def show
    @user = User.find(params[:id]) # this is not always the current_user
    set_profile(@user)
    @pending_friends = @user.pending_friends
    @friend_requests = FriendRequest.where(friend: @user)
    @comment = Comment.new
  end

  def index
    @friends = current_user.friends
    @pending_friends = current_user.pending_friends
    @friend_requests = FriendRequest.where(friend: current_user)
    @potential_friends = find_potential_friends(@friends, @pending_friends, @friend_requests)
  end

  private

  def user_params
    params.require(:user).permit(profile_attributes: [:first_name, :last_name, :birthday, :hometown, :occupation, :quote, :other_info, :profile_picture])
  end

  def set_profile(user)
    if user.profile
      @profile = user.profile
    else
      @profile = Profile.create(user_id: user.id)
    end
  end

  def find_potential_friends(friends, pending_friends, friend_requests)
    # all users minus self minus friends minus pending friends minus friend requests
    connections = friends + pending_friends
    connections << current_user
    friend_requests.each do |req|
      connections << req.user
    end
    potential_friends = User.all - connections
    return potential_friends
  end
end