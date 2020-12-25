class AppointmentCheck < ApplicationRecord
  belongs_to :appointment
  belongs_to :check
end
