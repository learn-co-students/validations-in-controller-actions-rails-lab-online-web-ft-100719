class Author < ActiveRecord::Base
  validates :name,uniqueness: true, presence: true, length: { in:1..11}
  validates :email,uniqueness: true, presence: true
end
