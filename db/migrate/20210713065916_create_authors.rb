class CreateAuthors < ActiveRecord::Migration[6.1]
  def change
    create_table :authors do |t|
      t.string :first_name  # Имя
      t.string :last_name   # Фамилия
      t.integer :gender, default: 0
      t.boolean :active, default: true
      t.text :description
      t.timestamps
    end
  end
end
