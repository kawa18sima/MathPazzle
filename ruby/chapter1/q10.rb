#Q10
european = [0, 32, 15, 19, 4, 21, 2, 25, 17, 34, 6, 27,
            13, 36, 11, 30, 8, 23, 10, 5, 24, 16, 33, 1,
            20, 14, 31, 9, 22, 18, 29, 7, 28, 12, 35, 3, 26]

american = [0, 28, 9, 26, 30, 11, 7, 20, 32, 17, 5, 22, 34,
            15, 3, 24, 36, 13, 1, 00, 27, 10, 25, 29, 12, 8,
            19, 31, 18, 6, 21, 33, 16, 4, 23, 35, 14, 2]

count = 0
(2..36).each do |n|
  euro_max = euro  = european[0,n].inject(:+)
  ame_max = ame =american[0, n].inject(:+)

  european.length.times do |i|
    euro += european[(i+n-1)%37] - european[i]
    ame += american[(i+n-1)%37] - american[i]
    euro_max = [euro, euro_max].max
    ame_max = [ame, ame_max].max
  end
  count += 1 if euro_max < ame_max
end

puts count
