class CreateImages < ActiveRecord::Migration[5.0]
  def change
    create_table :images do |t|
      t.references :library, foreign_key: true
      t.string :location
      t.string :title
      t.integer :order

      t.timestamps
    end
  end
end
