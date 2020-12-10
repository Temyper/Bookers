class BookersController < ApplicationController

  def top
# 処理無し
  end

  def index
    @books = Book.all.order("id")
    @book = Book.new
  end

def create
  book = Book.new(book_params)
  if book.save
redirect_to success_book_path
  else
render error_book_path
  end

end

  def show
    @book = Book.find(params[:id])
  end

def update
  book = Book.find(params[:id])

  if  book.update(book_params)
    render success_book_path
  else
    render error_book_path
  end

end
  # def new

  # end

  def edit
      @book = Book.find(params[:id])
  end

def destroy
  book = Book.find(params[:id])
  book.destroy
end

def success

end

def error

end

   private
  def book_params
    params.require(:book).permit(:title, :body)
  end
end
