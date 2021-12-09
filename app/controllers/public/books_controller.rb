class Public::BooksController < ApplicationController
  def new
  end
  def confirm
  end
  def create
    @book = current_user.books.create(book_path)
    redirect_to root_path notice:"予約が完了しました"
  end
  def thanx
  end
  def index
    @orders = current_customer.books
  end
  def show
  end

  private
  def book_params
    params.require(:book).permit(:day, :time, :restaurant)
  end
end
