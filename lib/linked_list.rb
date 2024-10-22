class LinkedList
  attr_accessor :head, :tail

  def initialize
    @head = Node.new
    @tail = Node.new
    head.next_node = tail
  end

  def append(value)
    node = Node.new
    node.value = value

    if head.value.nil?
      self.head = node
      self.tail = node
    else
      tail.next_node = node
      self.tail = node
    end
  end

  def prepend(value)
    node = Node.new
    node.value = value
    node.next_node = head
    self.head = node
  end

  def size
    node = head
    count = 0
    loop do
      break if node.nil?

      count += 1
      node = node.next_node
    end
    count
  end

  def at(index)
    node = head
    count = 0
    if index.negative? || index > (size - 1) || !index.is_a?(Integer)
      puts 'invalid index for list'
    else
      loop do
        node = node.next_node
        count += 1
        break if index == count
      end
    end
    node
    # node.value
  end

  def pop
    node = head
    node = node.next_node until node.next_node == tail
    self.tail = (node)
    node.next_node = nil
  end

  def contains?(value)
    node = head
    loop do
      node = node.next_node
      break if node.nil? || node.value.eql?(value)
    end
    if node.nil?
      false
    else
      true
    end
    # node.value
  end

  def find(value)
    node = head
    index = 0
    loop do
      node = node.next_node
      index += 1
      break if node.nil? || node.value.eql?(value)
    end
    if node.nil?
      nil
    else
      index
    end
  end

  def to_s
    node = head
    loop do
      if node.nil?
        print 'nil'
        break
      else
        print "#{node.value} -> "
        node = node.next_node
      end
    end
    '' # return a str, otherwise prints object reference
  end
end

class Node
  attr_accessor :value, :next_node

  def initialize
    @value = nil
    @next_node = nil
  end
end
