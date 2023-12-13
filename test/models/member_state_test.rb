require 'test_helper'


class MemberStateTest < ActiveSupport::TestCase
  def setup
    @member_state = member_states(:one)
    @member_state2 = member_states(:two)
  end

  test 'valid member state' do
    assert @member_state2.valid?
  end

  test 'invalid without name' do
    @member_state.name = nil
    refute @member_state.valid?
    assert_not_nil @member_state.errors[:name]
  end

  test 'invalid without entry_date' do
    @member_state.entry_date = nil
    refute @member_state.valid?
    assert_not_nil @member_state.errors[:entry_date]
  end

  test 'invalid without capital' do
    @member_state.capital = nil
    refute @member_state.valid?
    assert_not_nil @member_state.errors[:capital]
  end
end
