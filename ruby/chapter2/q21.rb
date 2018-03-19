#Q21

pre_array = [1]
now_array = []

step = 2
count = 0

while count < 2014
  step.times do |i|
    if i-1 >= 0 && i != step-1
      now_array[i] = pre_array[i-1] ^ pre_array[i]
    else
      now_array[i] = 1
    end
    count += 1 if now_array[i] == 0
  end
  step += 1
  pre_array = now_array.clone
end

puts step-1
