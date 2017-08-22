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
end
