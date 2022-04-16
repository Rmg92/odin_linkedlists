# frozen_string_literal: true

require_relative 'node'
require 'pry'

# this class represents the full list
class LinkedList
  attr_accessor :name
  attr_reader :head, :tail

  def initialize
    @head = nil
    @tail = nil
  end

  def append(value)
    # adds a new node containing value to the end of the list
    new_node = Node.new
    new_node.value = value
    if @head.nil?
      @head = new_node
    elsif @head.next_node.nil?
      @head.next_node = new_node
      @tail = new_node
    else
      tmp_node = @head
      tmp_node = tmp_node.next_node until tmp_node.next_node.nil?
      @tail.next_node = new_node
      @tail = new_node
    end
  end

  def prepend(value)
    # adds a new node containing value to the start of the list
    new_node = Node.new
    new_node.value = value
    if @head.nil?
      @head = new_node
    elsif @tail.nil?
      @tail = @head
      @head = new_node
      @head.next_node = @tail
    else
      new_node.next_node = @head
      @head = new_node
    end
  end

  def size
    # returns the total number of nodes in the list
    return 0 if @head.nil?

    size = 1
    tmp_node = @head
    until tmp_node.next_node.nil?
      tmp_node = tmp_node.next_node
      size += 1
    end
    size
  end

  def at(index)
    # returns the node at the given index
    return 'Linked list is smaller than the entered value!' if (size - 1) < index

    tmp_node = @head
    node_index = 0
    until node_index == index
      tmp_node = tmp_node.next_node
      node_index += 1
    end
    tmp_node
  end

  def pop
    # removes the last element from the list
    tmp_node = @head
    node_index = 1
    until (size - 1) == node_index
      tmp_node = tmp_node.next_node
      node_index += 1
    end
    tmp_node.next_node = nil
    @tail = tmp_node
  end

  def contains?(value)
    # returns true if the passed in value is in the list and otherwise returns false.
    tmp_node = @head
    node_index = 0
    until size == node_index
      return true if tmp_node.value == value

      tmp_node = tmp_node.next_node
      node_index += 1
    end
    false
  end

  def find(value)
    # returns the index of the node containing value, or nil if not found
    return nil unless contains?(value)

    tmp_node = @head
    node_index = 0
    until value == tmp_node.value
      tmp_node = tmp_node.next_node
      node_index += 1
    end
    node_index
  end

  def to_s
    # represent your LinkedList objects as strings, so you can print them out and preview them in the console.
    # The format should be: ( value ) -> ( value ) -> ( value ) -> nil
    list = ''
    tmp_node = @head
    node_index = 0
    until size == node_index
      list += "( #{tmp_node.value} ) -> "
      tmp_node = tmp_node.next_node
      node_index += 1
    end
    list += 'nil'
    list
  end

  # Extra Credit
  def insert_at(value, index)
    # inserts a new node with the provided value at the given index.
    return prepend(value) if index.zero?

    return puts 'Linked list is smaller than the entered value!' if (size - 1) < index

    new_node = Node.new
    new_node.value = value
    node_index = 0
    tmp_node = @head
    until node_index == index
      if node_index == index - 1
        new_node.next_node = tmp_node.next_node
        tmp_node.next_node = new_node
      end
      tmp_node = tmp_node.next_node
      node_index += 1
    end
  end

  def remove_at(index)
    # removes the node at the given index.
    return puts 'Linked list is smaller than the entered value!' if (size - 1) < index

    node_index = 0
    tmp_node = @head
    if index.zero?
      @head = @head.next_node
    else
      until node_index == index - 1
        tmp_node = tmp_node.next_node
        node_index += 1
      end
      tmp_node.next_node = tmp_node.next_node.next_node
    end
  end
end
