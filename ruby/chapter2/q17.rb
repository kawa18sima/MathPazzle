#Q17
N = 30
boy, girl = 1, 0
N.times {|i| boy, girl = boy + girl, boy}
puts boy + girl
