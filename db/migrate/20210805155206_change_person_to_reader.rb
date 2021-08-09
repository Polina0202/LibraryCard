class ChangePersonToReader < ActiveRecord::Migration[6.1]
  def change
    rename_table :people, :readers
  end
end
