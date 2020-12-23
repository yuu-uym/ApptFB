class Appointment < ApplicationRecord
  belongs_to :user

  extend ActiveHash::Associations::ActiveRecordExtensions
  belongs_to :result, optional: true
  
  with_options presence: true do
    validates :company
    validates :appt_date
  end
end
