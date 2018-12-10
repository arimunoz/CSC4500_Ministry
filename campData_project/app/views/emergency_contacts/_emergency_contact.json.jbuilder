json.extract! emergency_contact, :id, :first_name, :last_name, :phone_number, :relationship, :created_at, :updated_at
json.url emergency_contact_url(emergency_contact, format: :json)
