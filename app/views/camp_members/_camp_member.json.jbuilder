json.extract! camp_member, :id, :first_name, :last_name, :street, :city, :state, :zip, :phone_number, :dob, :age, :email, :paid, :payment_type, :entered_on, :church_id, :created_at, :updated_at
json.url camp_member_url(camp_member, format: :json)
