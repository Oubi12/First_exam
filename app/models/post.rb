class Post < ApplicationRecord
  validates :title, :content, :address, presence: true
  # has_many :comments
  has_many :comments, dependent: :destroy
  has_many :post_category_ships,dependent: :destroy
  has_many :categories, through: :post_category_ships
  belongs_to :user

  mount_uploader :image, ImageUploader
end