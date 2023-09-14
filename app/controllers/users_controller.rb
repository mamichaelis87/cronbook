class UsersController < ApplicationController
  def show
    @user = current_user
    @profile = current_user.profile
  end
end
