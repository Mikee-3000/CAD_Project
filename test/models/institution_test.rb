require 'test_helper'

class InstitutionTest < ActiveSupport::TestCase
  def setup
    @institution = institutions(:one)
    @institution2 = institutions(:two)
  end

  test 'valid institution' do
    assert @institution2.valid?
  end

  test 'invalid without name' do
    @institution.name = nil
    refute @institution.valid?
    assert_not_nil @institution.errors[:name]
  end

  test 'invalid without date_established' do
    @institution.date_established = nil
    refute @institution.valid?
    assert_not_nil @institution.errors[:date_established]
  end

  test 'invalid without description' do
    @institution.description = nil
    refute @institution.valid?
    assert_not_nil @institution.errors[:description]
  end

  test 'invalid without seat' do
    @institution.seat = nil
    refute @institution.valid?
    assert_not_nil @institution.errors[:seat]
  end
end
