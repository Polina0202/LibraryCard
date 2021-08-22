class ChangeNumberOfPageForBooks < ActiveRecord::Migration[6.1]
  def change
    rename_column :books, :number_of_pages, :page
  end
end
