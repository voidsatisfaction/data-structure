class BTnode
  attr_reader :left, :data, :right
  def initialize(args)
    @left = args.fetch(:left, nil)
    @data = args[:data]
    @right = args.fetch(:right, nil)
  end

  def self.preorder(node)
    if node
      print node.data
      preorder(node.left)
      preorder(node.right)
    end
  end

  def self.inorder(node)
    if node
      inorder(node.left)
      print node.data
      inorder(node.right)
    end
  end

  def self.postorder(node)
    if node
      postorder(node.left)
      postorder(node.right)
      print node.data
    end
  end
end

n7 = BTnode.new({ data: 'D'})
n6 = BTnode.new({ data: 'C'})
n5 = BTnode.new({ data: 'B'})
n4 = BTnode.new({ data: 'A'})
n3 = BTnode.new({ data: '/', left: n6, right: n7 })
n2 = BTnode.new({ data: '*', left: n4, right: n5  })
n1 = BTnode.new({ data: '-', left: n2, right: n3 })

puts "preorder"
BTnode.preorder(n1)
puts "####"

puts "inorder"
BTnode.inorder(n1)
puts "####"

puts "postorder"
BTnode.postorder(n1)
puts "####"

BTnode.preorder(n3)