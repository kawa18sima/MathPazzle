# Q6

count = 0

2.step(10000, 2) do |n|
  num = n * 3 + 1
  while n != num && num != 1 do
    num = num % 2 == 0  ? num / 2 : num * 3 + 1
    count += 1 if num == n
  end
end

puts count
