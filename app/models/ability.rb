class Ability
  include CanCan::Ability

  def initialize(user)
    user ||= User.new # guest user (not logged in)
    if user.admin?
      can :access, :rails_admin       # only allow admin users to access Rails Admin
      can :dashboard
      can :manage, :all
    else
      # can [:read, :update, :destroy], Car
      can :read, :all                   # allow everyone to read everything
      if user.comun?
        can :manage, User if :user_id == user.id
        can :manage, Comment if :user_id == user.id
      end

    end
  end
end
