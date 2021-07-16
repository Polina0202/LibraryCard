class AddActiveToCards < ActiveRecord::Migration[6.1]
  def change
    add_column :cards, :active, :boolean, default: true
  end
end
