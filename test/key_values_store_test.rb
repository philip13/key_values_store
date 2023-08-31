require_relative "./test_helper"

class KeyValuesStoreTest < Minitest::Test
  def setup
    @kvs = KeyValuesStore.new
  end

  def test_add_and_get_key
    @kvs.add("a", 10)
    assert_equal @kvs.get("a"), 10

    @kvs.add("a", 99)
    assert_equal @kvs.get("a"), 99
  end

  def test_add_and_delete
    @kvs.add("x", 77)
    assert_equal @kvs.delete("x"), 77
    assert_nil @kvs.get("x")
  end
end