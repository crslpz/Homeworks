class GraphNodes
    def bfs(starting_node, target_value, visited = Set.new())
        queue = [starting_node]
        until queue.empty?
            ele = queue.shift
            return ele if ele == target_value
            visited << ele
            ele.neighbors.each {|child| queue << child if !visited.include?(child)}
        end
    end

end

a = GraphNode.new('a')
b = GraphNode.new('b')
c = GraphNode.new('c')
d = GraphNode.new('d')
e = GraphNode.new('e')
f = GraphNode.new('f')
a.neighbors = [b, c, e]
c.neighbors = [b, d]
e.neighbors = [a]
f.neighbors = [e]