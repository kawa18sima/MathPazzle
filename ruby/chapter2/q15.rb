# Q15
N = 10

STEPS = 4

$memo = {}

def move(a, b)
  return $memo[[a, b]] if $memo[[a, b]] != nil
  return $memo[[a, b]] = 0 if a > b
  return $memo[[a, b]] = 1 if a == b

  count = 0
  (1..STEPS).each do |i|
    (1..STEPS).each do |j|
      count += move(a + i, b - j)
    end
  end
  return $memo[[a,b]] = count
end

def move2(*)
  dp = Array.new(N + 1, 0)
  cnt = 0
  dp[N] = 1

  N.times do |i|
    (N + 1).times do |j|
      (1..STEPS).each do |k|
        break if k > j
        dp[j - k] += dp[j]
      end
      dp[j] = 0
    end
    cnt += dp[0] if i % 2 == 1
  end
  return cnt
end

puts move(0, N)
puts move2
