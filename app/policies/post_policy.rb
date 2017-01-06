class PostPolicy < ApplicationPolicy

  def create?
    user.admin? || user.author?
  end

  def new?
    user.admin? || user.author?
  end

  def update?
       user.admin? || user.author?
  end

  def destroy?
    user.admin?
  end
end
