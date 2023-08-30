require_relative "./test_helper"

class KeyValuesStoreTest < Minitest::Test
  def test_add_new_key
    kvs = KeyValuesStore.new
    kvs.add('a', 10)
    
    
  end
end