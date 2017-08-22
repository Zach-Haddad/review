def make_change(target, coins = [25, 10, 5, 1])
  return [] if target == 0
  return nil if coins.none? { |coin| coin <= target }

  coins = coins.sort.reverse

  best_change = nil
  coins.each_with_index do |coin, index|
    next if coin > target

    remainder = target - coin
    best_remainder = make_change(remainder, coins.drop(index))

    next if best_remainder.nil?

    this_change = [coin] + best_remainder

    if best_change.nil? || (this_change.count < best_change.count)
      best_change = this_change
    end
  end

  best_change
end
