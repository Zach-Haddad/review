class Array
  def my_map(&prc)
    self.length.times do |i|
      self[i] = prc.call(self[i])
    end

    self
  end

  def my_each(&prc)
    self.length.times do |i|
      prc.call(self[i])
    end

    self
  end

  def my_select(&prc)
    selects = []
    self.my_each do |x|
      selects << x if prc.call(x)
    end

    selects
  end

  def my_reject(&prc)
    selects = []
    self.my_each do |x|
      selects << x unless prc.call(x)
    end

    selects
  end

  def my_any?(&prc)
    selects = []
    self.my_each do |x|
      return true if prc.call(x)
    end

    false
  end

  def my_all?(&prc)
    selects = []
    self.my_each do |x|
      return false unless prc.call(x)
    end

    true
  end

  def my_zip(*arrs)
    zips = []

    self.length.times do |i|
      subzip = [self[i]]

      arrs.my_each do |arr|
        subzip << arr[i]
      end

      zips << subzip
    end

    zips
  end

  def my_rotate(n=1)
    split = n % self.length
    self.drop(split) + self.take(split)
  end

  def my_join(sep = '')
    res = ''
    self.my_each do |x|
      res += x.to_s
      res += sep unless self.index(x) == self.length - 1
    end
    res
  end

  def my_reverse
    res = []
    self.my_each {|x| res.unshift(x)}
    res
  end

  def bubblesort(&prc)
    prc ||= Proc.new {|a, b| a > b}
    res = self.dup

    sorted = false
    until sorted
      sorted = true
      each_index do |i|
        next if i + 1 == self.length
        j = i + 1

        if prc.call(res[i], res[j])
          res[i], res[j] = res[j], res[i]
          sorted = false
        end
      end
    end

    res
  end

  def bubblesort!(&prc)
    prc ||= Proc.new {|a, b| a > b}

    sorted = false
    until sorted
      sorted = true
      each_index do |i|
        next if i + 1 == self.length
        j = i + 1

        if prc.call(self[i], self[j])
          self[i], self[j] = self[j], self[i]
          sorted = false
        end
      end
    end

    self
  end
end

class Integer
  def factors
    res = []
    (1..self/2).each do |i|
      next unless self % i == 0
      b = self / i
      [i, b].each {|num| res << num unless res.include?(num)}
    end

    res.sort
  end
end
