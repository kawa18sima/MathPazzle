#Q11
count = 0

two_before, before = 1, 1

while count < 11
  now = two_before + before
  num_str = now.to_s
  n = 0
  num_str.length.times do |i|
    n += num_str[i].to_i
  end
  if now % n == 0
    puts now if count > 5
    count += 1
  end
  two_before, before = before, now
end
