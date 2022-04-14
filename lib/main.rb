# frozen_string_literal: true

require_relative 'linked_lists'

list = LinkedList.new

puts list.size
# Tests for append method
list.append(1)
puts list.size
list.append(2)
puts list.size
list.append(3)
puts list.size
list.append(4)
puts list.size

# Tests for prepend method
list.prepend(1)
puts list.size
list.prepend(2)
puts list.size
list.prepend(3)
puts list.size
list.prepend(4)
puts list.size
