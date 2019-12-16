class Post < ActiveRecord::Base

  #include ActiveModel::Validations
  #validates_with PostValidator


  validates :title , presence: true
  validates :content , presence: true, length: { minimum: 10 }
  validates :category, uniqueness: true, presence: true, inclusion: { in: %w(Fiction Non-Fiction)}

  #def category 
    #if category.valid?

    #end

  #end
end
