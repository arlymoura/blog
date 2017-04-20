module UsersHelper
  def remove_password_fields(user_params)
    if user_params[:password].blank?
      user_params.delete(:password)
      user_params.delete(:password_confirmation)
    end
    user_params
  end
end
