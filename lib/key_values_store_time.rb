

class KeyValuesStoreTime
  def initialize
    @key_values = {}
  end

  def add(key, value, c_time= nil)
    c_time ||= Time.now.strftime("%l:%M:%S %p")

    if @key_values[key].nil?
      @key_values[key] = {}
      @key_values[key][c_time] = value
    else
      @key_values[key][c_time] = value
    end
  end

  def get(key)
    @key_values[key].to_a.last
  end

  def get_at_effective_date(key, c_time)
    @key_values[key][c_time]
  end
end