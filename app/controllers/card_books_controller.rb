class CardBooksController < ApplicationController
  def index
  end
  
  def new
    @books
    @cardsBook = CardBook.all
  end
end
