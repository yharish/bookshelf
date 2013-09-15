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

        respond_to do |format|
	      if @book.save
	        format.html { redirect_to user_path, notice: 'Book was successfully created.' }
	        format.json { render json: user_path, status: :created, location: @book }
	      else
	        format.html { render action: "new" }
	        format.json { render json: @book.errors, status: :unprocessable_entity }
	      end
    end
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
        format.html { redirect_to user_path, notice: 'Book was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @book.errors, status: :unprocessable_entity }
      end
    end
	end

	def destroy
    	@book = Book.find(params[:id])
    	respond_to do |format|  
        if @book.destroy
          format.html { redirect_to user_path, notice: 'Book was successfully deleted.' }  
          format.js   { render :nothing => true }  
        end
      end 
	end
end