json.extract! course, :id, :title, :location, :short_description, :about_teacher, :what_will_we_do, :what_will_i_learn, :requirements, :created_at, :updated_at
json.url course_url(course, format: :json)