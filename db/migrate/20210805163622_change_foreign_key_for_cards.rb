class ChangeForeignKeyForCards < ActiveRecord::Migration[6.1]
  def change
    rename_column :cards, :person_id, :reader_id
  end
end
