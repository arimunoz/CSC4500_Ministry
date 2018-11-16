json.extract! payment_information, :id, :name_on_card, :card_number, :expiration_date, :cvv, :amount_paid, :payment_type, :camp_member_id, :created_at, :updated_at
json.url payment_information_url(payment_information, format: :json)
