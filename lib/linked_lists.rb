# frozen_string_literal: true

require_relative 'node'

# this class represents the full list
class LinkedList
  attr_accessor :name

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
    # For testing, erase when not needed
    p @head
    p @tail
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
    # For testing, erase when not needed
    p @head
    p @tail
  end

  def size
    # returns the total number of nodes in the list
    size = 1
    0 if @head.nil?
    tmp_node = @head
    until tmp_node.next_node.nil?
      tmp_node = tmp_node.next_node
      size += 1
    end
    size
  end

  def head
    # returns the first node in the list
  end

  def tail
    # returns the last node in the list
    nil
  end

  def at(_index)
    # returns the node at the given index
    nil
  end

  def pop
    # removes the last element from the list
    nil
  end

  def contains?(_value)
    # returns true if the passed in value is in the list and otherwise returns false.
    nil
  end

  def find(_value)
    # returns the index of the node containing value, or nil if not found
    nil
  end

  def to_s
    # represent your LinkedList objects as strings, so you can print them out and preview them in the console.
    # The format should be: ( value ) -> ( value ) -> ( value ) -> nil
    nil
  end

  # Extra Credit
  def insert_at(_value, _index)
    # inserts a new node with the provided value at the given index.
    nil
  end

  def remove_at(_index)
    # removes the node at the given index.
    nil
  end
end
