Bookshelf is a site for tracking a user's reading. He can group and view the books according to 'Has Read', 'Reading' and 'Will Read' categories.

Use-Case:
1. New user signs-up on the home page/Existing user signs-in.
2. User is redirected to his profile page which lists all the books in his bookshelf according to categories.
3. He can add a new book by clicking on the 'Add Book' link. He can delete/edit an existing book by clicking on the respective links on the 'All Books' list container. All the CRUD operations can be performed by the user on his books.
4. The user signs-out.

Other Info:
* AJAX implementation has been done to delete a book from a user's profile page.
* The 'users' table and 'books' table are associated with a HABTM relationship via a 'books_users' table. 
* RSpec has been used to write the tests and can be run by the command - bundle exec rspec spec/ (All the written tests pass)