class Post < ApplicationRecord
  # attr_accessible  :title, :body, :image

  validates :body, presence: true
  validates :title, presence: true
  validates :image, presence: true
  mount_uploader :image, ImageUploader
end
