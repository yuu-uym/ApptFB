class Appointment < ApplicationRecord
  belongs_to :user
  belongs_to :check
  has_one :evaluations

  extend ActiveHash::Associations::ActiveRecordExtensions
  belongs_to :result, optional: true
  
  with_options presence: true do
    validates :company
    validates :appt_date
    validates :check_id, numericality: true
  end
  validates :comment, length: {maximum: 250}
  validates :score, numericality: { only_integer: true, greater_than:0, less_than: 101}, allow_blank: true

end