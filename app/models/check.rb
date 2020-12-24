class Check < ApplicationRecord
  belongs_to :user
  
  with_options presence: true do
    validates :title
    validates :item1
  end

end
