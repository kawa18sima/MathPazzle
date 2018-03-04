# Q7
require 'date'

day = Date.parse("1964/10/10")..Date.parse("2020/07/24")

dates = day.map{|item|
  str = item.strftime("%Y%m%d").to_i
}

puts dates.select{|item| item.to_s(2) == item.to_s(2).reverse}
