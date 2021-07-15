class CreateRepositories < ActiveRecord::Migration[6.1]
  def change
    create_table :repositories do |t|
      t.string :name #наименование библиотеки/книгохранилища
      t.string :address
      t.text :schedule
      t.bigint :telephone
      t.integer :number_of_books #количество книг на складе
      t.timestamps
    end
  end
end
