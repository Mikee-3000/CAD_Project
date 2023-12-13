class Institution < ApplicationRecord
  has_many :officials, dependent: :nullify
  validates :name, :date_established, :description, :seat,
presence: true
end
