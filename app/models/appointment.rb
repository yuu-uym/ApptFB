class Appointment < ApplicationRecord
  belongs_to :user
  belongs_to :check

  extend ActiveHash::Associations::ActiveRecordExtensions
  belongs_to :result, optional: true
  
  with_options presence: true do
    validates :company
    validates :appt_date
    validates :check_id, numericality: true
  end
  
end
