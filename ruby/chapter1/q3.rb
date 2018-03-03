# Q3
N = 100

card = [true]*100

for i in 2..N+1 do
  reverse = 0
  (N/i).times do |j|
    card[i + j*i -1] = !card[i + j*i -1]
  end

  puts i-1 if card[i-2]
end

