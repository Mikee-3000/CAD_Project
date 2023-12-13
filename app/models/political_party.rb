class PoliticalParty < ApplicationRecord
  belongs_to :political_group, optional: true
  validates :name, presence: true
  validate :political_group_must_exist, if: -> { political_group_id.present? }
  private
  def political_group_must_exist
    errors.add(:political_group, 'must exist') unless PoliticalGroup.exists?(self.political_group_id)
  end
end
