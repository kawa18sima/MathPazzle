# Q2
operator = ["*", ""]
for num in 1000..9999
  for i in 0..1
    for j in 0..1
      for k in 0..1
        number = num.to_s
        val = number[0] + operator[i] + number[1] + operator[j] + number[2] + operator[k] + number[3]

        val.gsub!(/\*0+/, "*")
        val.gsub!(/\*{2,}/, "*")
        if val[val.length-1] == "*"
          val[val.length]="1"
        end

        if number.reverse == eval(val).to_s && val.length > 4
          puts number
        end
      end
    end
  end
end


