class Array
  # merge sort
  def merge_sort
    return self if length <= 1
    midpt = length / 2

    l = self.take(midpt).merge_sort
    r = self.drop(midpt).merge_sort

    Array.merge(l, r)
  end

  def self.merge(l, r)
    res = []

    until l.empty? || r.empty?
      l.first < r.first ? res << l.shift : res << r.shift
    end

    res + l + r
  end

  # quicksort
  def quicksort
    return self if length < 2

    pivot = first
    l = self[1..-1].select { |el| el <= pivot }
    r = self[1..-1].select { |el| el > pivot }

    l.quicksort + [pivot] + r.quicksort
  end
  
  # bubblesort
  def bubblesort
    sorted = false

    until sorted
      sorted = true

      each_index do |i|
        next if length == i + 1
        j = i + 1

        if self[i] > self[j]
          sorted = false
          self[i], self[j] = self[j], self[i]
        end
      end
    end

    self
  end

end
