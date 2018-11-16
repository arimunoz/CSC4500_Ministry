class CreateCampMembers < ActiveRecord::Migration[5.2]
  def change
    create_table :camp_members do |t|
      t.string :first_name
      t.string :last_name
      t.string :street
      t.string :city
      t.string :state, limit: 2
      t.string :zip, limit: 5
      t.string :phone_number, limit: 12
      t.date :dob
      t.integer :age
      t.string :email
      t.boolean :paid
      t.string :payment_type
      t.date :entered_on
      t.references :church, foreign_key: true

      t.timestamps
    end
  end
end
