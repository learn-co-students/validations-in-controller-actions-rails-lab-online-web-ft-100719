class Author < ActiveRecord::Base
    validates :name, presence: true
    validates :email, format: {:with => /\A([^@\s]+)@((?:[-a-z0-9]+\.)+[a-z]{2,})\z/i}, uniqueness: true
end
