class AddCheckIdToAppointment < ActiveRecord::Migration[6.0]
  def change
    add_reference :appointments, :check, foreign_key: true
  end
end
