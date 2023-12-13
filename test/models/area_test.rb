require "test_helper"


class AreaTest < ActiveSupport::TestCase
  def setup
    @area = areas(:one)
  end

  test 'valid area' do
    assert @area.valid?
  end

  test 'invalid without name' do
    @area.name = nil
    refute @area.valid?
    assert_not_nil @area.errors[:name]
  end

  test 'invalid without description' do
    @area.description = nil
    refute @area.valid?
    assert_not_nil @area.errors[:description]
  end
end
