nums = [82597,-9243,62390,83030,-97960,-26521,-61011,0,-82597,12333,75987,46091,83794,19355]
# Given an integer array nums, return all the triplets [nums[i], nums[j], nums[k]]
# such that i != j, i != k, and j != k, and nums[i] + nums[j] + nums[k] == 0.

def three_sum(nums)
  all_triplets = []
  nums.combination(3) do |comb|
    all_triplets << comb if comb.sum.zero?
  end
  sort_triplets = all_triplets.map {|item| item.sort}
  p sort_triplets.uniq
end

three_sum(nums)
