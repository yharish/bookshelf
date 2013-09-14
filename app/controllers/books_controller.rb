class BooksController < ApplicationController

	def index
		@books = Book.all
	end

	def new
		@user = current_user
		@book = Book.new
        

	end

	def create
		@book = Book.new(params[:book])
        @user = current_user
        @book.users << User.find(current_user.id)
        @book.save
        
        redirect_to user_path
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

	def destroy
    	@book = Book.find(params[:id])
    	@book.destroy
    	redirect_to root_path
	end
end