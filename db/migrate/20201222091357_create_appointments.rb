class CreateAppointments < ActiveRecord::Migration[6.0]
  def change
    create_table :appointments do |t|
      t.string :company,            null: false
      t.date :appt_date,            null: false
      t.integer :result_id
      t.integer :score
      t.integer :point1
      t.integer :point2
      t.integer :point3
      t.integer :point4
      t.integer :point5
      t.integer :point6
      t.integer :point7
      t.integer :point8
      t.integer :point9
      t.integer :point10
      t.integer :point11
      t.integer :point12
      t.integer :point13
      t.integer :point14
      t.integer :point15
      t.integer :point16
      t.integer :point17
      t.integer :point18
      t.integer :point19
      t.integer :point20
      t.references :user,           null: false, foreign_key: true 
      t.references :check,           null: false, foreign_key: true 
      t.timestamps
    end
  end
end

