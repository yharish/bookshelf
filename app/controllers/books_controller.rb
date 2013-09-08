class BooksController < ApplicationController

	def index
		@books = Book.all
	end

	def new
		@book = Book.new
	end

	def create

		@book = Book.new(params[:book])
		
        @user = User.find(1)
        @bookuser = BooksUsers.new
        @bookuser.book_id = @book.id
        #@bookuser.user_id = @user.id
        @bookuser.user_id = 1
        @bookuser.save
        @book.save

        redirect_to users_path
    
	end

	def show
		@book = Book.find(params[:id])
	end

	def edit
		@book = Book.find(params[:id])
	end

	def update
		@book = Book.find(params[:id])

		respond_to do |format|
      if @book.update_attributes(params[:book])
        format.html { redirect_to @book, notice: 'User was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @book.errors, status: :unprocessable_entity }
      end
    end
	end
end