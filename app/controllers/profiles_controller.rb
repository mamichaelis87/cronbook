class ProfilesController < ApplicationController
  def new
  end
  
  def edit
    @profile = current_user.profile
  end

  def update
    @profile = current_user.profile

    if @profile.update(profile_params)
      redirect_to user_path(current_user)
    else
      render :edit, status: :unprocessable_entity
    end
  end

  private

  def profile_params
    params.require(:profile).permit(:first_name, :last_name, :birthday, :hometown, :occupation, :quote, :other_info)
  end
end
