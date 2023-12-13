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

  test 'invalid with non-existent institution' do
    @official.institution_id = Institution.maximum(:id) + 1
    refute @official.valid?
    assert_not_nil @official.errors[:institution]
  end
  test 'invalid with non-existent political group' do
    @official.political_group_id = Institution.maximum(:id) + 1
    refute @official.valid?
    assert_not_nil @official.errors[:political_group]
  end
end
