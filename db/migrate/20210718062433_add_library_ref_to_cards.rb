class AddLibraryRefToCards < ActiveRecord::Migration[6.1]
  def change
    add_reference :cards, :library, null: false, foreign_key: true
  end
end
