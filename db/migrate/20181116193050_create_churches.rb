class CreateChurches < ActiveRecord::Migration[5.2]
  def change
    create_table :churches do |t|
      t.string :church_name
      t.string :pastor_name
      t.string :mens_leader

      t.timestamps
    end
  end
end