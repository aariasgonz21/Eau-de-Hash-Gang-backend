class CreatePerfumes < ActiveRecord::Migration[5.2]
  def change
    create_table :perfumes do |t|
      t.string :name
      t.string :img
      t.string :catchphrase
      t.string :scent
      t.integer :price
      t.string :category

      t.timestamps
    end
  end
end
