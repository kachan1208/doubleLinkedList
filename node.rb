class Node
  @prev = nil
  @next = nil
  attr_accessor :id, :val

  def initialize(val = nil)
    @val = val 
    @id = 0
  end

  def prev
    return @prev unless @prev.nil?
  end

  def prev=(node)
    @prev = node
  end

  def next
    return @next unless @next.nil?
  end

  def next=(node)
    @next = node
  end

end