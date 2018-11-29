class CreateLevels < ActiveRecord::Migration[5.2]
  def change
    create_table :levels do |t|
      add_column :users, :image, :string
      t.timestamps
    end
  end
end
