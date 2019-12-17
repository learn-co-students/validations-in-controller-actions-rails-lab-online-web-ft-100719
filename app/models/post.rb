class Post < ActiveRecord::Base
  validates :title, length: { minimum: 1 }
  validates :category, presence: true, inclusion: { in: %w[Fiction Non-Fiction] }
  validates :content, length: { minimum: 100 }
end
