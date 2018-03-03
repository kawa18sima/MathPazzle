# Q4
def cut(n, m, current)
  if current >= n
    return 0
  elsif current <= m
    return 1 + cut(n, m ,current * 2)
  else
    return 1 + cut(n, m ,current + m)
  end
end

def cut2(n,m)
  current = 1
  count = 0
  while n > current do
    current += current < m ? current : m
    count += 1
  end
  return count
end

# puts cut(20, 3, 1) 
# puts cut(100, 5 , 1)
puts cut2(20, 3)
puts cut2(100, 5)
