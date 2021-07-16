class CreateCards < ActiveRecord::Migration[6.1]
  def change
    create_table :cards do |t|
      t.string :name, default: 'Новая карточка'
      t.timestamps
    end
  end
end
