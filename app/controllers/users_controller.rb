class UsersController < ApplicationController

  before_filter :authenticate_user!
  def index
    @users = User.all
  end

  def show
    @user = current_user
    @books = Book.paginate(:per_page => 5, :page => params[:books_page])
   
    @readingBooks = Book.where(:category => 'Reading')    # @records = Model.where(:some_column => some_value)
    @readingBooks = @readingBooks.paginate(:per_page => 5, :page => params[:readingBooks_page])

    @hasReadBooks = Book.where(:category => 'Has Read')
    @hasReadBooks = @hasReadBooks.paginate(:per_page => 5, :page => params[:hasReadBooks_page])

    @willReadBooks = Book.where(:category => 'Will Read') 
    @willReadBooks = @willReadBooks.paginate(:per_page => 5, :page => params[:willReadBooks])
  end

  def new
    @user = User.new   
  end

  def edit
    @user = User.find(params[:id])
  end

  def create 
    @user = User.new(params[:user])
    respond_to do |format|
      if @user.save
        redirect_to @user
      else
        render 'new'
      end
    end
  end

  def update
    @user = User.find(params[:id])
  end

  def destroy
    # @user = User.find(params[:id])
    # @user.destroy

    @book = Book.find(params[:id])
      respond_to do |format|  
        if @book.destroy
          format.html { redirect_to user_path, notice: 'Book was successfully deleted.' }  
          format.js   { render :nothing => true }  
        end
      end 
  end
end
