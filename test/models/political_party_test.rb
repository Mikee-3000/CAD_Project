require 'test_helper'

class PoliticalPartyTest < ActiveSupport::TestCase
  def setup
    @political_party = political_parties(:one)
    @political_party2 = political_parties(:two)
  end

  test 'valid political party' do
    assert @political_party2.valid?
  end

  test 'invalid without name' do
    @political_party.name = nil
    refute @political_party.valid?
    assert_not_nil @political_party.errors[:name]
  end
  test 'invalid with non-existent political group' do
    @political_party.political_group_id = Institution.maximum(:id) + 1
    refute @political_party.valid?
    assert_not_nil @political_party.errors[:political_group]
  end
end
