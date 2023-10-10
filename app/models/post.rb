class Post < ApplicationRecord
  validates :title, :content, :address, presence: true
  has_many :comments
end