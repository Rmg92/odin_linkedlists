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
