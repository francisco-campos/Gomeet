class CreateLibraries < ActiveRecord::Migration[5.0]
  def change
    create_table :libraries do |t|
      t.string :title
      t.integer :parent_id

      t.timestamps
    end
    add_index :libraries, :parent_id
  end
end
