class Card < ApplicationRecord
  belongs_to :list
  has_and_belongs_to_many :labels
  has_many :checklists
  has_many :check_items, through: :checklists

end