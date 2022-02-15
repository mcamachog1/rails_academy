json.extract! payment_by_student, :id, :student_id, :payment_id, :created_at, :updated_at
json.url payment_by_student_url(payment_by_student, format: :json)
