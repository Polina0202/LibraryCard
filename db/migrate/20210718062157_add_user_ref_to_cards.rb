class AddUserRefToCards < ActiveRecord::Migration[6.1]
  def change
    add_reference :cards, :person, null: false, foreign_key: true
  end
end
