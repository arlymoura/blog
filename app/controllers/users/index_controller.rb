class Users::IndexController < Devise::RegistrationsController
  def index
    @users = User.all
  end
end
