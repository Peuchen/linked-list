class Node
  attr_accessor :value, :next_node

  @@count = 0

  def initialize
    @@count += 1

    @value = nil
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
    if @head.nil?
      @head = Node.new
      @tail = @head
      @head.value = value
      @tail.value = value
    else
      @head.next_node = head
      @head = Node.new
      @head.value = value
    end
  end

  def append(value)
    if @head.nil?
      @tail = Node.new
      @head.value = value
      @tail.value = value
    else
      @tail.next_node = tail
      @tail = Node.new
      @tail.value = value
    end
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

end

list = LinkedList.new
puts list
list.prepend("test2")
list.prepend("test1")
list.prepend("test0")
puts list.size
puts list.head
puts list.tail