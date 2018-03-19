#Q20
num = [1, 14, 14, 4, 11, 7, 6, 9, 8, 10, 10, 5, 13, 2, 3, 15]

list = Hash.new(0)

for i in 1..num.size do
  num.combination(i) do |set|
    list[set.inject(:+)] += 1
  end
end

puts list.max{|x, y| x[1] <=> y[1]}

