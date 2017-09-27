class Post < ApplicationRecord
  attr_accessor :image, :image_cache, :remove_image

  belongs_to :user
  belongs_to :category
  has_many :comments, dependent: :destroy

  validates :body, presence: true
  validates :title, presence: true
  # validates :image, presence: true
  mount_uploader :image, ImageUploader

  def self.search(params)
    posts = all # for not existing params args
    posts = posts.where("LOWER(title) like ?", "%#{params[:search].downcase}%") if params[:search]
    posts
  end

end
