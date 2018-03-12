#Q16
MAX = 500

def ans1(*)
  count = 0
  
  (1..MAX/4).each do |n|
    (1..n-1).to_a.combination(2) do |a, b|
      count += 1 if ((a ** 2 + b ** 2) == n ** 2) && a.gcd(b) == 1
    end
  end
  
  puts count
end

def ans2(*)
  count = 0
  ans =[]
  
  (1..MAX/4).each do |n|
    array = (1..n-1).to_a.map{|side| side * (n * 2 - side) }
    array.combination(2) do |a, b|
      ans.push([a, b]) if a + b == n * n && a.gcd(b) == 1
    end
  end
  
  puts ans.length
end

ans1
# ans2
