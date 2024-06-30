height = [10527,740,9013,1300,29680]

def trap(height)
  water = []
  if height.size == 1 && height.first.zero?
    water << 0
  else
    run = true
    while run
      left_height = height.index { |item| item > 0 }
      p left_height
      right_height = height.select { |item| item > 0}.last
      p right_height
      closed_container = height[left_height..right_height]
      p "closed container #{closed_container}"
      block_of_water = closed_container.select { |item| item <= 0 }.size
      p "block water #{block_of_water}"
      water << block_of_water
      p "water #{water}"
      reduce_level = closed_container.map { |item| item - 1 }
      stop = reduce_level.select{|i| i > 0}
      run = false if reduce_level.all? { |item| item <= 0 } || stop.size == 1
      p "reduce level #{reduce_level}"
      height = reduce_level
    end
  end
  p water.sum
end


trap(height)
