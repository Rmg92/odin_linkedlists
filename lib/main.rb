# frozen_string_literal: true

require_relative 'linked_lists'

list = LinkedList.new

# Tests for append/size method
list.append(1)
puts list.to_s
list.append(2)
puts list.to_s
list.append('Bye')
puts list.to_s

# Tests for prepend/size method
list.prepend(1)
puts list.to_s
list.prepend(2)
puts list.to_s
list.prepend('Hello')
puts list.to_s

# Tests for head method
puts list.head
puts list.head.value

# Tests for tail method
puts list.tail
puts list.tail.value

# Tests for at method
puts list.at(0)
puts list.at(7)
puts list.at(10)

# Tests for pop method
list.pop
puts list.to_s

# Tests for contains? method
puts list.contains?(1)
puts list.contains?(4)
puts list.contains?('Hello')

# Tests for find method
puts list.find(5)
puts list.find(1)
puts list.find('Hello')

# Tests for to_s method
puts list.to_s

# Tests for insert_at method
list.insert_at(10, 0)
puts list.to_s
list.insert_at('Hello', 3)
puts list.to_s
list.insert_at('Hello', 6)
puts list.to_s

# Tests for removes_at method
list.remove_at(3)
puts list.to_s
list.remove_at(4)
puts list.to_s
list.remove_at(0)
puts list.to_s
list.remove_at(6)
puts list.to_s
