class CreateLibraries < ActiveRecord::Migration[6.1]
  def change
    create_table :libraries do |t|
      t.string :name #наименование библиотеки/книгохранилища
      t.string :address
      t.text :schedule
#      t.bigint :telephone
      t.timestamps
    end
  end
end
