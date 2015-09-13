def count_tree_height(cycles)
  tree_height = 1;
  cycles.times do |i|
    cycle = i + 1
    if cycle.odd?
      tree_height *= 2
    else
      tree_height += 1
    end
  end
  return tree_height
end

total_input = gets.to_i

total_input.times do
  cycles = gets.to_i
  puts count_tree_height(cycles)
end