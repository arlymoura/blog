class PostPolicy < ApplicationPolicy

  def create?
    user.admin? || user.author?
  end

  def new?
    user.admin? || user.author?
  end

  def update?
    if user.admin?
      return true
    elsif user.author?
      user.posts.find(params[:id])
    end
  end

  def destroy?
    user.admin?
  end
end
