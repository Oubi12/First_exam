class Comment < ApplicationRecord
  belongs_to :post
  validate :content, presence: true
end
