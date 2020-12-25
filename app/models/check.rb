class Check < ApplicationRecord
  belongs_to :user
  has_many :appointments

  with_options presence: true do
    validates :title
    validates :item1
  end

end
