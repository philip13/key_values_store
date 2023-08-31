require "test_helper"

class KeyValuesStoreTimeTest < Minitest::Test
  
  def test_add_and_get_key
    @kvs2 = KeyValuesStoreTime.new
    @kvs2.add("a", 10)

    c_time = "6:30 AM"
    @kvs2.add("a", 63, c_time)
    @kvs2.add("a", 50, "5:00 AM")

    assert_equal @kvs2.get_at_effective_date("a", c_time), 63
  end
end
