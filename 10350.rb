n = gets.to_i
arr = gets.split.map(&:to_i)

sum_val = arr.sum
result = 0

n.times do |i|
  k = 0
  n.times do |j|
    k += arr[(i + j) % n]
    result -= (k / sum_val) if k < 0
  end
end

puts result
