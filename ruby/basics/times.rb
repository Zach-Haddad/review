# Input: a bunch of times, minutes and seconds,
# formatted as a single string like: "12:32 34:01 15:23 9:27 55:22 25:56"
#
# Output: the sum of the times, hours, minutes, and seconds,
# formatted as a single string like: "2:32:41"

times = "12:32 34:01 15:23 9:27 55:22 25:56"

def time_sum(times)
  sub_arrs = times.split.map do |arr|
    arr.split(":").map(&:to_i)
  end

  secs, mins = 0, 0

  sub_arrs.each do |arr|
    secs += arr[0]
    mins += arr[1]
  end

  display_time(secs, mins)
end

def display_time(secs, mins)
  secs_carryover = secs / 60
  secs %= 60

  mins += secs_carryover
  mins_carryover = mins / 60
  mins %= 60

  hours = mins_carryover

  [hours, mins, secs].map{|num| display_num(num)}.join(":")
end

def display_num(num)
  num < 10 ? "0#{num}" : "#{num}"
end

p time_sum(times)
