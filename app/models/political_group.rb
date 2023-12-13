class PoliticalGroup < ApplicationRecord
  validates :name, :description,
presence: true
end
