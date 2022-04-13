# frozen_string_literal: true

# this class represents the full list
class LinkedList
  attr_accessor :name

  def initialize
    @head = nil
    @tail = nil
  end

  def append(value)
    # adds a new node containing value to the end of the list
  end

  def prepend(value)
    # adds a new node containing value to the start of the list
    nil
  end

  def size
    # returns the total number of nodes in the list
    nil
  end

  def head
    # returns the first node in the list
    nil
  end

  def tail
    # returns the last node in the list
    nil
  end

  def at(index)
    # returns the node at the given index
    nil
  end

  def pop
    # removes the last element from the list
    nil
  end

  def contains?(value)
    # contains?(value)
    nil
  end

  def find(value)
    # returns the index of the node containing value, or nil if not found
    nil
  end

  def to_s
    # represent your LinkedList objects as strings, so you can print them out and preview them in the console.
    # The format should be: ( value ) -> ( value ) -> ( value ) -> nil
    nil
  end

  # Extra Credit
  def insert_at(value, index)
    # that inserts a new node with the provided value at the given index.
    nil
  end

  def remove_at(index)
    # that removes the node at the given index.
    nil
  end
end
