class Book < ActiveRecord::Base
  attr_accessible  :book_name, :author, :description
  has_and_belongs_to_many :users
end
