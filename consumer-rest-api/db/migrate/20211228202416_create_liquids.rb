class CreateLiquids < ActiveRecord::Migration[7.0]
  def change
    create_table :liquids do |t|
      t.string :strength
      t.string :flavor
      t.integer :size
      t.string :brand

      t.timestamps
    end
  end
end
