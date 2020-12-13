class Node
  attr_accessor :value, :next_node

  @@count = 0

  def initialize(value)
    @@count += 1

    @value = value
    @next_node = nil
  end

  def self.count
    @@count
  end

end

class LinkedList

  def initialize
    @head = nil
    @tail = nil
  end

  def prepend(value)
    node = Node.new(value)
    if @head.nil?
      @tail = node
    else
      node.next_node = @head
    end
    @head = node
  end

  def append(value)
    node = Node.new(value)
    if @head.nil?
      @head = node
    else
      @tail.next_node = node
    end
    @tail = node
  end

  def size
    Node.count
  end

  def head
    @head.value
  end

  def tail
    @tail.value
  end

  def at(index)
    pos = @head
    if index < Node.count
      index.times do
        pos = pos.next_node
      end
      pos.value
    else
      "No value is found at the given index"
    end
  end

  # def to_s
  #   temp = head
  #   while temp != nil
  #     temp = temp.next_node
  #     puts temp
  #   end
  # end

end

list = LinkedList.new

list.prepend("test2")

list.prepend("test1")

list.prepend("test0")

list.append("test4")

puts list.size
puts "Head: #{list.head}"
puts "Tail: #{list.tail}"
puts list.at(3)