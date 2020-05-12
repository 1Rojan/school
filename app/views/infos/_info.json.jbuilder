json.extract! info, :id, :school_name, :school_intro, :school_location, :contact, :email, :created_at, :updated_at
json.url info_url(info, format: :json)
