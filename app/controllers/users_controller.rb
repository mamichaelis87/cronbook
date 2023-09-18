class UsersController < ApplicationController
  def show
    @user = User.find(params[:id])
    @profile = @user.profile
    @post = Post.new
  end

  def index
    @users = User.all
  end

  private

  def user_params
    params.require(:user).permit(profile_attributes: [:first_name, :last_name, :birthday, :hometown, :occupation, :quote, :other_info])
  end
end
