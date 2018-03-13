#Q18
def search(num, list, used)
  return false if list[1].include?(num) && used.all?
  flag = true
  return true if list[num] == nil
  list[num].each do |cand_num|
    next if used[cand_num - 1] == true
    used[cand_num - 1] = true
    flag = search(cand_num, list, used)
    used[cand_num - 1] = false
    break if !flag
  end
  return flag
end


def ans
  flag = true
  n = 2
  while flag
    squa = []
    list = {}
    i = 1
    while i ** 2 < n * 2
      squa.push(i ** 2)
      i += 1
    end
    (1..n).each do |i|
      list[i] = squa.map{|s| s - i}.select{|s| s > 0 && s <= n}
    end
    flag = search(1, list, [true] + [false] * (n - 1)) if list != {}
    n += 1
  end
  puts n - 1
end

ans
