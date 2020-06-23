class Checklist < ApplicationRecord
  belongs_to :card
  has_many :check_items
end
