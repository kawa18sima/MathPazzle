# Q13
count = 0
question = "adeiklrstw"
str = "read + write + talk == skill"

(0..9).to_a.permutation do |a, d, e, i, k, l, r, s, t, w|
  next if r==0 || s==0 || t==0 || w==0
  tmp = str.clone
  num = [a, d, e, i, k, l, r, s, t, w]
  for nu in 0..num.length
    tmp.gsub!(/#{question[nu]}/, num[nu].to_s)
  end
  if eval(tmp)
    count += 1
    puts tmp
  end
end

puts count
