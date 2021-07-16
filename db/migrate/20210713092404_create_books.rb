class CreateBooks < ActiveRecord::Migration[6.1]
  def change
    create_table :books do |t|
      t.string :title
      t.integer :year_published #год издания
      t.text :annotation
      t.integer :pages #кол-во страниц
      t.text :content
      t.timestamps
    end
  end
end
