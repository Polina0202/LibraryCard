class ChangeCardBooksToReaderBooks < ActiveRecord::Migration[6.1]
  def change
    rename_table :card_books, :reader_books
  end
end
