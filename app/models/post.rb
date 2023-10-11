class Post < ApplicationRecord
  validates :title, :content, :address, presence: true
  has_many :comments
  has_many :post_category_ships,dependent: :restrict_with_error
  has_many :comments, dependent: :restrict_with_error
  has_many :categories, through: :post_category_ships
  belongs_to :user

  mount_uploader :image, ImageUploader
end