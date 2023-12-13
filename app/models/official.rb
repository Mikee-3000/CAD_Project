class Official < ApplicationRecord
  belongs_to :institution, optional: true
  belongs_to :political_group, optional: true
  validates :name, :position,
presence: true
end