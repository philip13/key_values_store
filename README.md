
# Part 1:
Base on the next code create the code that can be, works to use the next functions:

```ruby
kvs.add('a', 10)
kvs.add('a', 99)
kvs.get('a') # => 99
kvs.add('b', 20) 
kvs.delete('a') # => nil
```


# Part 2:
Base on the code first part, create the code to include timestamp 

```ruby
kvs.add('a', 10) # @ 7:30AM
kvs.add('a', 20) # @ 8:00AM
kvs.get_at_effective_date('a', 7:45AM) # => 10
kvs.get_at_effective_date('a', 6:00AM) # => nil
kvs.get_at_effective_date('a', 8:30AM) # => 20
kvs.get('a') -> 20
```

# {'a': [ 
  # "7:30 AM": "10",
  # "8:00 AM": "20"
  # 
# ]}


# kvs = KeyValueStore.new();
# kvs.add('a', 10, '730') #730
# kvs.add('a', 20, '830')
# puts "kvs.get('a') #{kvs.get('a')}"
# puts "kvs.get_at_effective_date('a', 7:30) #{kvs.get_at_effective_date('a', '730')}"