require 'test_helper'

class TreatyTest < ActiveSupport::TestCase
  def setup
    @treaty = treaties(:one)
    @treaty2 = treaties(:two)
  end

  test 'valid treaty' do
    assert @treaty2.valid?
  end

  test 'invalid without name' do
    @treaty.name = nil
    refute @treaty.valid?
    assert_not_nil @treaty.errors[:name]
  end

  test 'invalid without date_of_signing' do
    @treaty.date_of_signing = nil
    refute @treaty.valid?
    assert_not_nil @treaty.errors[:date_of_signing]
  end
end
