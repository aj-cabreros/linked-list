require_relative 'lib/linked_list'

list = LinkedList.new

# ======= Test #append =======
list.append('dog')
list.append('cat')
list.append('parrot')
list.append('hamster')
list.append('snake')
list.append('turtle')

list.append('pig')
list.append('cow')

# puts list
# ======= Test #contains? & #size & #pop=======

# puts "Contains 'hamster': #{list.contains?('hamster')}"
# puts "Contains 'cow': #{list.contains?('cow')}"

# loop do
#   puts list
#   puts "list size #{list.size}"
#   break if list.head.nil?

#   list.pop
# end

# puts "Contains 'hamster': #{list.contains?('hamster')}"
# puts "Contains 'cow': #{list.contains?('cow')}"

# ======= Test #prepend =======

# list.prepend('dog')
# list.prepend('cat')
# list.prepend('parrot')
# list.prepend('hamster')
# list.prepend('snake')
# list.prepend('turtle')

# list.prepend('pig')
# list.prepend('cow')

# append and prepend should mirror so index 7/8 head should be dog
# p list.at(7) # returns node object reference
# p list.at(8) # returns node object reference

# ======= Test #remove_at =======
# loop do
#   puts list
#   list.remove_at(0)
#   break if list.head.nil?
# end

# loop do
#   puts list
#   list.remove_at(1)
#   break if list.size == 1
# end

# ======= Test #shift =======

# loop do
#   puts list
#   list.shift
#   break if list.head.nil?
# end

# ======= Test #insert_at =======

# list.insert_at('INSERT_FIRST_INDEX', 0)
# list.insert_at('INSERT_LAST_INDEX', 5)
# puts "size of list: #{list.size}"
# puts list

# list.insert_at('Out of Bounds', 7)
# list.insert_at('Out of Bounds', -1)
# puts "size of list: #{list.size}"
# puts list

# list.insert_at('Within', 3)
# list.insert_at('Within', 5)
# puts "size of list: #{list.size}"
# puts list

# list.shift
puts list
