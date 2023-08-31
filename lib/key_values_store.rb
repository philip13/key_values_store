class KeyValuesStore
  def initialize
    @key_values = {}
  end

  def add(key, value)
    @key_values[key] = value
  end

  def get(key)
    @key_values[key]
  end

  def delete(key)
    @key_values.delete(key)
  end
end