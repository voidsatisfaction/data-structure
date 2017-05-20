class BTnode
  attr_reader :left, :data, :right
  def initialize(args)
    @left = args.fetch(:left, nil)
    @data = args[:data]
    @right = args.fetch(:right, nil)
  end

  def self.postorder_folder_size(node)
    if node
      postorder_folder_size(node.left)
      postorder_folder_size(node.right)
      $folder_size += node.data
    end
  end
end

f11 = BTnode.new({ data: 120 })
f10 = BTnode.new({ data: 55 })
f9 = BTnode.new({ data: 100 })
f8 = BTnode.new({ data: 200 })
f7 = BTnode.new({ data: 68, left: f10, right: f11 })
f6 = BTnode.new({ data: 40 })
f5 = BTnode.new({ data: 15 })
f4 = BTnode.new({ data: 2, left: f8, right: f9 })
f3 = BTnode.new({ data: 10, left: f6, right: f7 })
f2 = BTnode.new({ data: 0, left: f4, right: f5 })
f1 = BTnode.new({ data: 0, left: f2, right: f3 })

$folder_size = 0
BTnode.postorder_folder_size(f1)
puts $folder_size

$folder_size = 0
BTnode.postorder_folder_size(f2)
puts $folder_size

$folder_size = 0
BTnode.postorder_folder_size(f3)
puts $folder_size