require 'pry'
require_relative 'node'

class LinkedList
  attr_accessor :head

  def initialize
    @head = nil
  end

  def [](index)
    counter = 0
    self.each do |node|
      if index == counter
        return node
      end
      counter += 1
    end
  end


  def each
    node = @head
    while !node.nil?
      yield(node)
      node = node.next_node 
    end
  end

  def prepend(value)
    @head = Node.new(value, @head)
  end

  def to_s
    formatted_string = "LinkedList("
   self.each do |node|
     if node.next_node.nil?
       formatted_string << node.info.to_s
     else
       formatted_string << node.info.to_s + ", "
     end
   end
    formatted_string << ")"
    formatted_string
  end

  def insert(index, value)
    #find value before index, set next node by making a new node, with the node after it as the next node
    counter = 0
    #refactor

    self.each do |node|
      if index == 0
        self.prepend(value)
        break
      end
      if counter == index - 1
        new_node = Node.new(value)
        if node.next_node != nil
          new_node.next_node = node.next_node
        end
        node.next_node = new_node
      end
      counter += 1
    end
  end

  def remove(index)
    if index == 0
      self.head = self[1]
    else
      current_node = self[index]
      before_node = self[index - 1]
      before_node.next_node = current_node.next_node
    end
  end

end
