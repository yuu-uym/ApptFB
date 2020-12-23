class CreateAppointments < ActiveRecord::Migration[6.0]
  def change
    create_table :appointments do |t|
      t.string :company,            null: false
      t.date :appt_date,            null: false
      t.integer :result_id
      t.integer :score
      t.references :user,           null: false, foreign_key: true 
      t.timestamps
    end
  end
end

