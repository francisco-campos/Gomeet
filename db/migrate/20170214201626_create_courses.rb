class CreateCourses < ActiveRecord::Migration[5.0]
  def change
    create_table :courses do |t|
      t.references :library, foreign_key: true
      t.references :user, foreign_key: true
      t.string :title
      t.string :location
      t.string :short_description
      t.string :about_teacher
      t.string :what_will_we_do
      t.string :what_will_i_learn
      t.string :requirements

      t.timestamps
    end
  end
end
