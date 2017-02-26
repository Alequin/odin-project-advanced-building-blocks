
load './enumerable.rb'

x = [1,2,3,4]

=begin

puts x.my_each { |value|
  puts value
}

x.my_each_with_index { |index, value|
  puts "#{index}: #{value}"
}

p [1,2,3, false].my_all?

p x.my_select { |value|
  value == 2
}

puts x.my_all?

puts x.my_all?{ |a|
  a % 1 == 0
}

puts x.my_any?

puts x.my_any?{ |a|
  a % 2 == 0
}

puts x.my_none?

puts x.my_none?{ |a|
  a % 1 == 0
}

puts x.count

puts x.count(2)

puts x.count() { |a|
  a % 2 == 0
}

p x.my_map { |a|
  a * 5
}

puts x.my_inject { |sum, val|
  sum *= val
}

y = Proc.new { |a|
    a % 2 == 0
}
p x.my_map(&y)

=end
