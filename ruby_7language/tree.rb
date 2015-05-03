class Tree
  attr_accessor :children, :node_name

  def initialize(tmpName,tmpChildren=[])
    @children = tmpChildren
    @node_name = tmpName
  end

  def visit_all(&block)
    visit &block
    children.each {|c| c.visit_all &block}
  end

  def visit(&block)
    block.call self
  end
end

ruby_tree = Tree.new("ruy", [Tree.new("Reia"), Tree.new("MacRuby")])

puts "Visiting a node"
ruby_tree.visit{ |node| puts node.node_name}
puts

puts "visiting entire tree"
ruby_tree.visit_all{ |node| puts node.node_name}




a = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16]
a.each{ |a| puts a}
