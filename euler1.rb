# If we list all the natural numbers below 10 that are multiples of 3 or 5,
# we get 3, 5, 6 and 9. The sum of these multiples is 23.
#
# Find the sum of all the multiples of 3 or 5 below 1000.

require 'pry'

class MultipleCollection
  attr_reader :multiples

  def initialize
    @multiples = [3,5]
  end

  def create_multiples(multiples_of, starting_multiple)
    new_multiple = multiples_of + starting_multiple
    return @multiples if new_multiple >= 1_000
    @multiples << new_multiple
    create_multiples(multiples_of, new_multiple)
  end

  def self.sum_of_multiples
    multiple_collection = MultipleCollection.new()
    multiple_collection.create_multiples(5, 5)
    multiple_collection.create_multiples(3, 3)
    puts multiple_collection.multiples.uniq!.reduce(:+)
  end
end

MultipleCollection.sum_of_multiples
