Linked List
==========+
I implemented the linked list in Ruby. Please feel free to use it and let me know if you have any questions

Sample Code
    require './linked_list'

    list = LinkedList.new
    list.push(1)
    list.push(2)
    list.push(3)
    list.push(4)
    list.push(5)

    list.remove(4)

    list.pop()

    list.to_a.each do |object|
      p object
    end

