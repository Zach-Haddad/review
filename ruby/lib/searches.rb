class Array
  # depth-first search

  # breadth-first search

  # binary search, assume no duplicates,
  def binary_search(target)
    min = 0
    max = length - 1

    while min <= max
      mid = (min + max) / 2
      case self[mid] <=> target
      when -1
        min = mid + 1
      when 0
        return mid
      when 1
        max = mid - 1
      end
    end

    -1
  end


  # with recursion
  def recursive_binary(target)
    return -1 if length == 0
    mid = length/2

    case target <=> self[mid]
    when -1 #too small, search right
      self.take(mid).recursive_binary(target)
    when 0
      return mid
    when 1 #too big, search left
      res = self.drop(mid).recursive_binary(target)
      res == -1 ? -1 : res + mid
    end
  end

  # first occurence in sorted array (modified binary search)
  def find_first_in_sorted(target)
    min = 0
    max = length - 1

    while min <= max
      mid = (min + max) / 2

      if self[mid] == target
        if mid > 0 && self[mid - 1] == target
          max = mid - 1
        else
          return mid
        end
      elsif self[mid] > target
        max = mid - 1
      else
        min = mid + 1
      end
    end

    -1
  end

end

p [1,2,3,4].recursive_binary(4)
