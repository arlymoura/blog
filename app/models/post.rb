class Post < ApplicationRecord

  belongs_to :user
  belongs_to :category
  has_many :comments, dependent: :destroy

  validates :body, presence: true
  validates :title, presence: true
  # validates :image, presence: true
  mount_uploader :image, ImageUploader

end
