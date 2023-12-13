class Institution < ApplicationRecord
  validates :name, :date_established, :description, :seat,
presence: true
end
