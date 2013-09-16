class Book < ActiveRecord::Base
  attr_accessible  :book_name, :author, :description, :category
  has_and_belongs_to_many :users
  validates :book_name, presence: true
  validates :author, presence: true
  validates :category, presence: true
end
