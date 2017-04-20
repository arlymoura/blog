class User < ApplicationRecord
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable,
         :omniauthable

   before_create :set_default_role

   has_many :posts, dependent: :destroy
   has_many :comments

   enum role: {admin: 0, author: 1, comun: 2}

   validates :password, presence: true,length:{minimum: 6}, :if => :password

   def self.from_omniauth(auth)
     where(provider: auth.provider, uid: auth.uid).first_or_create do |user|
       user.email = (auth.info.email.present?) ? auth.info.email : "email#{rand(36**8).to_s(36)}@hotmail.com"
       user.name = auth.info.name
       user.password = Devise.friendly_token[0,20]
       user.image = auth.info.image
     end
   end

  def to_s
    self.name || self.email
  end

  def self.search(params)
    users = all # for not existing params args
    users = users.where("LOWER(name) like ?", "%#{params[:search].downcase}%") if params[:search]
    users
  end

  private

  def set_default_role
    self.role ||= 'comun'
  end
end
