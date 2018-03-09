# Q14
country = ["Brazil", "Croatia", "Mexico", "Cameroon", "Spain", "Netherlands", "Chile", "Australia",
           "Colombia", "Greece", "Cote d'lvoire", "Japan", "Uruguay", "Costa Rica", "England", "Italy",
           "Switzerland", "Ecuador", "France", "Honduras", "Argentina", "Bosnia and Herzegovina", "Iran", "Nigeria",
           "Germany", "Portugal", "Ghana", "USA", "Belgium", "Algeria", "Russia", "Korea Republic"]

country.map!{|c| c.upcase}

table = {}

country.each { |word| table[word[0]] == nil ? table[word[0]] = [word] : table[word[0]].push(word)}
def shiritori(word, table)
  table[word[0]].delete(word)
  count = 1
  max = 0

  if table[word[word.length - 1]] != nil
    array = table[word[word.length - 1]].clone
    array.each do |w|
      max = [max, shiritori(w, table)].max
    end
  end

  table[word[0]].push(word)
  return count + max
end

max = 1

country.each do |c|
  max = [shiritori(c, table), max].max
end

puts max
