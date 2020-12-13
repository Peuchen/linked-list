class Node
  def value
    nil
  end

  def next_node
    nil
  end
end

class LinkedList
  def append(value)
    node = Node.new
    node.value(value)
  end
end