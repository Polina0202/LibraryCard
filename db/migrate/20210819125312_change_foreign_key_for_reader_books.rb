class ChangeForeignKeyForReaderBooks < ActiveRecord::Migration[6.1]
  def change
    rename_column :reader_books, :card_id, :reader_id
  end
end
