class Evaluation < ApplicationRecord
  belongs_to :user
  belongs_to :appointment

  validates :comment, length: {maximum: 250}
end
