require 'prime'

# Enter your procedural solution here!
def largest_prime_factor(num)
  #prime_division returns an array of 2 element arrays containing prime factorization - [[2, 1], [5, 2]]
  #flat_map contatenates the 2 element arrays into a single array [2, 5, 5]
  array = Prime.prime_division(num).flat_map { |factor, power| [factor] * power }

  largest = 0
  array.each do |i|
    if i > largest
      largest = i
    end
  end
  return largest
end