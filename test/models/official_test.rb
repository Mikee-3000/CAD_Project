require 'test_helper'


class OfficialTest < ActiveSupport::TestCase
  def setup
    @official = officials(:one)
    @official2 = officials(:two)
  end

  test 'valid official' do
    assert @official2.valid?
  end

  test 'invalid without name' do
    @official.name = nil
    refute @official.valid?
    assert_not_nil @official.errors[:name]
  end

  test 'invalid without position' do
    @official.position = nil
    refute @official.valid?
    assert_not_nil @official.errors[:position]
  end
end
