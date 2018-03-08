#Q9

def count_human(boy, girl)
  boys, girls = 20, 10
  return 0 if boy == girl && boy != 0 || boy - 10 ==girl
  return 1 if boy == 20 && girl ==9 || boy == 19 && girl == 10

  count = 0

  count += count_human(boy + 1, girl) if boy < boys
  count += count_human(boy, girl += 1) if girl < girls

  return count

end

def count_human2(boys, girls)
  boys, girls = boys + 1, girls + 1
  ary = Array.new(boys * girls) {0}
  ary[0] = 1
  boys.times do |boy|
    girls.times do |girl|
      if boy != girl && boys - boy != girls - girl
        ary[boy+ boys * girl] += ary[boy - 1 + boys * girl] if boy > 0
        ary[boy+ boys * girl] += ary[boy + boys * (girl-1)] if girl > 0
      end
    end
  end

  return ary[-2] + ary[-boys -1]
end

puts count_human(0, 0)
puts count_human2(20, 10)
