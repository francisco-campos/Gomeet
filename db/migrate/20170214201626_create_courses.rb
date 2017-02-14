class CreateCourses < ActiveRecord::Migration[5.0]
  def change
    create_table :courses do |t|
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
