json.extract! admission, :id, :name, :dob, :gender, :address, :phone, :email, :father_name, :mother_name, :father_phone, :mother_phone, :admission_for, :mark_sheet, :created_at, :updated_at
json.url admission_url(admission, format: :json)
