class Node
  attr_accessor :object, :next
  def initialize object
    @object = object
    @next = nil
  end
end

class LinkedList
  attr_reader :length

  def initialize object = nil
    @length = 0
    set_first(object) if object
  end

  def push(object)
    if @first_node
      node = @first_node

      while node.next != nil do
        node = node.next
      end

      node.next = Node.new(object)

      @length += 1
    else
      set_first(object)
    end
  end

  def pop()
    done = false
    previous_node = nil
    current_node = @first_node

    return if current_node == nil

    if current_node.next == nil
      @first_node = nil
      @length = 0
    else
      while current_node != nil && !done do
        if current_node.next == nil
          done = true
        else
          previous_node = current_node
          current_node = current_node.next
        end
      end

      previous_node.next = nil
      @length -= 1
    end
  end

  def remove(object)
    previous_node = nil
    current_node = @first_node
    found = false

    while current_node != nil && !found do
      if current_node.object == object
        found = true
      else
        previous_node = current_node
        current_node = current_node.next
      end
    end

    # we found it
    if found
      if previous_node == nil
        # if the node is the first node

        # if length > 1
        if current_node.next
          @first_node = current_node.next()
        else
          @first_node = nil
        end
      elsif (current_node.next)
        # if the node is somewhere in the middle
        previous_node.next = current_node.next
      elsif (current_node.next == nil)
        # if the node is the last one
        previous_node.next = nil
      end

      @length -= 1
    end
  end

  def to_a()
    nodes = []
    current_node = @first_node

    while current_node != nil do
      nodes << current_node.object
      current_node = current_node.next
    end

    return nodes
  end

  private

  def set_first(object)
    if @first_node == nil
      @length = 1
    else
      @next_node = @first_node.next
    end

    @first_node = Node.new(object)
  end
end