class Official < ApplicationRecord
  belongs_to :institution
  belongs_to :political_group
end
