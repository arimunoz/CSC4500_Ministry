class CreateCampMembers < ActiveRecord::Migration[5.2]
  def change
    create_table :camp_members do |t|
      t.string :first_name
      t.string :last_name
      t.string :street
      t.string :city
      t.string :state, limit: 2
      t.string :zip, limit: 5

      t.timestamps
    end
  end
end
