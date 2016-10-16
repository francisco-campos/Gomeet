# = Clase OmniauthCallbacksController
# Autor: Francisco Campos
#
# == Descripción
# La clase permite el registro y login de usuarios atravez de redes sociales.
# Ejecuta el callback de la petición de conexión
#
class Users::OmniauthCallbacksController < Devise::OmniauthCallbacksController


  def connect
    #raise request.env["omniauth.auth"].to_yaml
    @user = User.from_omniauth(request.env["omniauth.auth"])

    if @user.persisted?
      sign_in_and_redirect @user, :event => :authentication #this will throw if @user is not activated
      set_flash_message(:notice, :success, :kind => "Facebook") if is_navigational_format?
    else
      session["devise.facebook_data"] = request.env["omniauth.auth"]
      redirect_to new_user_registration_url
    end

  end

  alias_method :facebook, :connect
  alias_method :google_oauth2, :connect

  def failure
    redirect_to root_path
  end

end
