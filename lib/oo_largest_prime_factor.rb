# Enter your object-oriented solution here!
require 'prime'

class LargestPrimeFactor
  def initialize(num)
    @num = num
  end

  def number
    #prime_division returns an array of 2 element arrays containing prime factorization - [[2, 1], [5, 2]]
    #flat_map contatenates the 2 element arrays into a single array [2, 5, 5]
    array = Prime.prime_division(@num).flat_map { |factor, power| [factor] * power }

    largest = 0
    array.each do |i|
      if i > largest
        largest = i
      end
    end
    return largest
  end

end