class CommentPolicy < ApplicationPolicy

  def create?
    user.admin? || user.author? ||  user.comun?
  end

  def new?
    user.admin? || user.author? ||  user.comun?
  end

  def update?
    user.comments.find(params[:id])?
  end

  def destroy?
    user.admin?
  end
end
