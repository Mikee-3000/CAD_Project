class Official < ApplicationRecord
  belongs_to :institution, optional: true
  belongs_to :political_group, optional: true
  validates :name, :position, presence: true
  validate :institution_must_exist, if: -> { institution_id.present? }
  validate :political_group_must_exist, if: -> { political_group_id.present? }
  private
  def institution_must_exist
    errors.add(:institution, 'must exist') unless Institution.exists?(self.institution_id)
  end
  def political_group_must_exist
    errors.add(:political_group, 'must exist') unless PoliticalGroup.exists?(self.political_group_id)
  end
end