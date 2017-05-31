# given array of non-duplicate elements, find pair summing to target (n)
# and return their indices
# return nil if no such pair exists

class Array
  def two_sum(sum)
    num_hash = Hash.new
    each_with_index do |el, i|
      num_hash[el] = i
      complement = sum - el
      return [i, num_hash[complement]] if num_hash[complement]
    end

    nil
  end
end
