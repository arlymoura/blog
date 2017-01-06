class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

   before_create :set_default_role

   enum role: {admin: 0, author: 1, comun: 2}

  private
  def set_default_role
    self.role ||= 'comun'
  end
end
