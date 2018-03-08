# Q8
def search_path(path, n, x, y)
  return 1 if n == 0

  count = 0
  
  [[0, 1], [1, 0], [0, -1], [-1, 0]].each do |dir|
    next if path[y + dir[0]][x + dir[1]] == 1
    path[y][x] = 1
    count += search_path(path, n-1, x+dir[1], y+dir[0])
    path[y][x] = 0
  end
  return count
  
end

path = Array.new(50).map{Array.new(50,0)}

puts search_path(path, 12, 25, 25)
