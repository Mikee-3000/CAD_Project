class MemberState < ApplicationRecord
  has_many :member_state_areas
  has_many :areas, through: :member_state_areas
  validates :name, :entry_date, :capital,
presence: true
end
