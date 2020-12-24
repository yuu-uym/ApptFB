class Check < ApplicationRecord

  with_options presence: true do
    validates :title
    validates :item1
  end

end
