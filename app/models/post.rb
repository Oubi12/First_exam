class Post < ApplicationRecord
  validates :title, :content, :address, presence: true
end