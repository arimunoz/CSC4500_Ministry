json.extract! camp_member, :id, :first_name, :last_name, :street, :city, :state, :zip, :created_at, :updated_at
json.url camp_member_url(camp_member, format: :json)
