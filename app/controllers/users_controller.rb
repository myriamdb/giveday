class UsersController < ApplicationController

  def dashboard
  end

  def update
    current_user.update(profil_params)
    redirect_to root_path
  end

  private
  def profil_params
    params.require(:user).permit(:first_name, :last_name, :phone, :adress )
  end
end
