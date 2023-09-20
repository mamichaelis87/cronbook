class UsersController < ApplicationController
  def show
    @user = User.find(params[:id]) # this is not always the current_user
    @profile = @user.profile
  end

  def index
    @users = User.all
  end

  private

  def user_params
    params.require(:user).permit(profile_attributes: [:first_name, :last_name, :birthday, :hometown, :occupation, :quote, :other_info])
  end
end
