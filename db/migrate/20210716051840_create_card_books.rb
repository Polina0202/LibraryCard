class CreateCardBooks < ActiveRecord::Migration[6.1]
  def change
    create_table :card_books do |t|
      t.references :card
      t.references :book
      t.datetime :planning_return_time, null: false
      t.datetime :returned_time
      t.timestamps
    end
  end
end
