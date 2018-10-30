class CreatePaymentInformations < ActiveRecord::Migration[5.2]
  def change
    create_table :payment_informations do |t|
      t.string :name_on_card
      t.string :card_number
      t.date :expiration_date
      t.string :cvv, limit: 3
      t.decimal :amount_paid
      t.string :payment_type

      t.timestamps
    end
  end
end
