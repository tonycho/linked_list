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




