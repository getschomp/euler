# The prime factors of 13195 are 5, 7, 13 and 29.
#
# What is the largest prime factor of the number 600851475143 ?
require 'prime'

primes = [];
Prime.each(100) do |prime|
  primes << prime  #=> 2, 3, 5, 7, 11, ...., 97
end

primes.each do |prime|
  if Prime.prime?(prime)



divided_by_two = 600851475143/2
if Prime.prime?(divided_by_two) == false

end
