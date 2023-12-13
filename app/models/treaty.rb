class Treaty < ApplicationRecord
  validates :name, :date_of_signing,
presence: true
end
