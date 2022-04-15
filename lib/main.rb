# frozen_string_literal: true

require_relative 'linked_lists'

list = LinkedList.new

puts list.head
puts list.head.value
puts list.head.next_node
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
