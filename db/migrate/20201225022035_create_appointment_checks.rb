class CreateAppointmentChecks < ActiveRecord::Migration[6.0]
  def change
    create_table :appointment_checks do |t|
      t.references :appointment, foreign_key: true
      t.references :check, foreign_key: true
      t.timestamps
    end
  end
end
