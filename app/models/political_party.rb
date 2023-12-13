class PoliticalParty < ApplicationRecord
  belongs_to :political_group, optional: true
  validates :name,
presence: true
end
