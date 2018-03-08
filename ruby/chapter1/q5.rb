# Q5

result = [0] * 100000
result2 = [0] * 100000

for i in 0..15
  for j in 0..15-i
    for k in 0..15-i-j
      for l in 0.. 15-i-j-k
        num = 500 * i + 100 * j + 50 * k + 10 * l
        result[num] += 1
      end
    end
  end
end

coins = [10, 50, 100, 500]
(2..15).each do |i|
  coins.repeated_combination(i).each do |coin_set|
    result2[coin_set.inject(:+)] += 1
  end
end

puts result[1000]
puts result2[1000]
