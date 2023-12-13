class Area < ApplicationRecord
  has_many :member_state_areas
  has_many :member_states, through: :member_state_areas
  validates :name, :description,
presence: true
end
