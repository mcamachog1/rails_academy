json.extract! student, :id, :name, :college, :year, :email, :mobile, :parent_id, :created_at, :updated_at
json.url student_url(student, format: :json)
