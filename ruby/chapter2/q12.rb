# Q12
def over_ten(str)
  str.split('').uniq.length > 9
end

including_int = true
not_include_int = true

i = 1
while including_int || not_include_int
  str =  sprintf('%10.10f'%Math.sqrt(i)).sub('.', '')[0..9]
  if including_int && over_ten(str)
    puts "include int "+ i.to_s
    including_int = false
  end
  
  str2 = sprintf('%10.10f'%Math.sqrt(i)).split('.')[1]
  if not_include_int && over_ten(str2) 
    puts "not include int " +  i.to_s
    not_include_int = false
  end
  i += 1
end
