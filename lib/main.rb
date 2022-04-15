# frozen_string_literal: true

require_relative 'linked_lists'

list = LinkedList.new

# Test size method
puts list.size

# Tests for append/size method
list.append(1)
puts list.size
list.append(2)
puts list.size
list.append(3)
puts list.size
list.append(4)
puts list.size

# Tests for prepend/size method
list.prepend(1)
puts list.size
list.prepend(2)
puts list.size
list.prepend(3)
puts list.size
list.prepend(4)
puts list.size

# Tests for head method
puts list.head

# Tests for tail method
puts list.tail

# Tests for at method
puts list.at(0)
puts list.at(7)
puts list.at(8)
puts list.at(10)

# Tests for pop method
puts list.tail.value
list.pop
puts list.tail.value
list.pop
puts list.tail.value
list.pop
list.pop
puts list.tail.value

# Tests for contains? method
puts list.contains?(1)
puts list.contains?(4)
puts list.contains?(5)

# Tests for find method
puts list.find(5)
puts list.find(3)
puts list.find(1)
puts list.find(4)

# Tests for to_s method
puts list.to_s
