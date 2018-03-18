#Q19
require "prime"

primes = Prime.take(6)
min_com = primes.clone

primes.permutation do |prime|
  friends = prime.each_cons(2).map{|x, y| x * y}
  friends += [prime[0], prime[-1]].map{|x| x * x}
  if min_com.max > friends.max
    min_com = friends.clone
  end
end

puts min_com.max
p min_com
