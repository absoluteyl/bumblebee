class Users::RegistrationsController < Devise::RegistrationsController
  def upgrade
  end

  def upgrading
    if current_user.update(premium: true)
      redirect_to root_url, notice: "You're all set! Enjoy shopping!"
    else
      redirect_to root_url, alert: "Oops! Something went wrong."
    end
  end
end
