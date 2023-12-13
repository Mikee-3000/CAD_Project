class Institution < ApplicationRecord
  validates :name, :date_established, :short_description, :geographical_seat,
presence: true
end
