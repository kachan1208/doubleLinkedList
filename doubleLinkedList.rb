load "node.rb"
class List
  @firstElement = nil
  @lastElement = nil
  attr_accessor :lenght
  
  def initialize
    @lenght = 0
  end

  def push(val)
    if @lastElement.nil?
      buff = Node.new(val) 
      @firstElement = buff
      @lastElement = buff
    else
      buff = Node.new(val)
      buff.id = @lastElement.id + 1
      buff.prev = @lastElement # set prev element for node
      @lastElement.next = buff # set next element for current node
      @lastElement = buff # update last element
    end

    @lenght += 1
  end

  def getVal
    result = []
    buff = @firstElement

    loop do
      result << buff.val
      buff = buff.next
      break if buff.nil?
    end

    return result
  end

  def getNode(id)
    buff = @firstElement
    loop do
      break if buff.nil? || buff.id == id
      buff = buff.next
    end

    return buff
  end

  def removeNode(id)
    node = self.getNode(id)
    unless node.nil?
      unless node == @firstElement
        node.prev.next = node.next
      end
      unless node == @lastElement
        node.next.prev = node.prev
      end
      @lenght -= 1;
    end
  end
end

#TODO: add update first, last element when remove node