require "test_helper"

class PoliticalGroupTest < ActiveSupport::TestCase
  def setup
    @political_group = political_groups(:one)
    @political_group2 = political_groups(:two)
  end

  test 'valid political group' do
    assert @political_group2.valid?
  end

  test 'invalid without name' do
    @political_group.name = nil
    refute @political_group.valid?
    assert_not_nil @political_group.errors[:name]
  end

  test 'invalid without description' do
    @political_group.description = nil
    refute @political_group.valid?
    assert_not_nil @political_group.errors[:description]
  end
end