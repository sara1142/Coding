class AddColumnsToGames < ActiveRecord::Migration[5.2]
  def change
    add_column :games, :javascript, :string
    add_column :games, :css, :string
    add_column :games, :html, :string
  end
end
