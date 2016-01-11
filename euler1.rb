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
    multiple = multiples_of + starting_multiple
    return @multiples if multiple > 1_000
    @multiples << multiple
    create_multiples(multiples_of, multiple)
  end
end

multiple_collection = MultipleCollection.new()
multiple_collection.create_multiples(5, 5)
multiple_collection.create_multiples(3, 3)
puts multiple_collection.multiples.uniq!.reduce(:+)
