class CreateEmergencyContacts < ActiveRecord::Migration[5.2]
  def change
    create_table :emergency_contacts do |t|
      t.string :first_name
      t.string :last_name
      t.string :phone_number, limit: 12
      t.string :relationship
      t.references :camp_member, foreign_key: true

      t.timestamps
    end
  end
end
