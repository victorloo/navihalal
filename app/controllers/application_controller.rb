class ApplicationController < ActionController::Base

  # enter admin should has role = admin
  def authenticate_admin
    unless current_user.admin?
      flash[:alert] = "Not allow!"
      redirect_to root_path
    end
  end
end
