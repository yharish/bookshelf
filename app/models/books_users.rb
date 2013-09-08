class BooksUsers < ActiveRecord::Base
  attr_accessible :book_id, :user_id
  belongs_to :Users 
  belongs_to :Books
 
end