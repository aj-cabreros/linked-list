require_relative 'lib/linked_list'

list = LinkedList.new

list.append('dog')
list.append('cat')
list.append('parrot')
list.append('hamster')
list.append('snake')
list.append('turtle')

list.prepend('pig')
list.prepend('cow')

puts list
puts "size of list: #{list.size}"
# puts list.at(2) #returns node object reference
list.pop
puts list

puts list.contains?('cat')
puts list.find('cat')
