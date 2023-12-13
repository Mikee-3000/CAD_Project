class PoliticalGroup < ApplicationRecord
  has_many :officials, dependent: :nullify
  has_many :political_parties, dependent: :nullify
  validates :name, :description,
presence: true
end
