height = [10527,740,9013,1300,29680]

def trap(height)
  water = []
  if height.size == 1 && height.first.zero?
    water << 0
  else
    run = true
    while run
      left_height = height.index { |item| item > 0 }
      right_height = height.select { |item| item > 0}.last
      closed_container = height[left_height..right_height]
      block_of_water = closed_container.select { |item| item <= 0 }.size
      water << block_of_water
      reduce_level = closed_container.map { |item| item - 1 }
      stop = reduce_level.select{|i| i > 0}
      run = false if reduce_level.all? { |item| item <= 0 } || stop.size == 1
      height = reduce_level
    end
  end
  water.sum
end

