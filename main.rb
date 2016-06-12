require 'pp'
load "doubleLinkedList.rb"

list = List.new
list.push(10)
list.push(20)
list.push("30")
# print list.lenght


list.removeNode(3)
pp list.getVal