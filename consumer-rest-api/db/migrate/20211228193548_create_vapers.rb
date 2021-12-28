class CreateVapers < ActiveRecord::Migration[7.0]
  def change
    create_table :vapers do |t|
      t.string :name
      t.float :price
      t.string :brand
      t.integer :warranty_time

      t.timestamps
    end
  end
end
