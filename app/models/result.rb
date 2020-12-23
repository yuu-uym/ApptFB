class Result < ApplicationRecord
  self.data = [
    { id: 1, name: '--' },
    { id: 2, name: '受注' },
    { id: 3, name: '失注' },
    { id: 4, name: '検討' },
  ]

  include ActiveHash::Associations
  has_many :appointments
end
