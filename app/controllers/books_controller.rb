class BooksController < ApplicationController
  def index
    @books = Book.all
  end

  def top_books
    @books = Book.all.sort_by{|book| book.rank}.reverse.first(7)
  end

  def voteup
    book = Book.find(params[:id])
    book.rankup
    redirect_to(:back)
  end

  def show
    @book = Book.find(params[:id])
  end

  def edit
    @book = Book.find(params[:id])
  end

  def update
    @book = Book.find(params[:id])
    raise "boom"
    if @book.update(params.require(:book).permit(:name, :author, :description))
      redirect_to books_path
    else
      render :edit
    end
  end

  def new
    @book = Book.new
  end

  def create
    @book = Book.new(params.require(:book).permit(:name, :author, :description))
    @book.rank = 0
    if @book.save
      redirect_to books_path
    else
      render :new
    end
  end

  def destroy
    Book.find(params[:id]).destroy
    redirect_to books_path
  end
end
