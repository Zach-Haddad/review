# Input: a bunch of times, minutes and seconds,
# formatted as a single string like: "12:32 34:01 15:23 9:27 55:22 25:56"
#
# Output: the sum of the times, hours, minutes, and seconds,
# formatted as a single string like: "2:32:41"

def time_sum(time_string)
  sub_arrs = subarrayify(time_string)
  secs, mins = sec_min_sums(sub_arrs)
  result = convert_hrs_mins_secs(secs, mins)

  result.map { |num| pad(num) }.join(":")
end

def subarrayify(time_string)
  time_string.split(" ").map do |sub_arr|
    sub_arr.split(":").map(&:to_i)
  end
end

def sec_min_sums(sub_arrs)
  secs, mins = 0, 0
  sub_arrs.each do |sub_arr|
    mins += sub_arr[0]
    secs += sub_arr[1]
  end

  [secs, mins]
end

def convert_hrs_mins_secs(secs, mins)
  secs_carryover = secs / 60
  secs %= 60

  mins += secs_carryover
  hrs = mins / 60
  mins %= 60

  [hrs, mins, secs]
end

def pad(num)
  num < 10 ? "0#{num}" : num.to_s
end

p time_sum("11:10 20:40")
