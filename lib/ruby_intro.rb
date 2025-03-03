# When done, submit this entire file to the autograder.

# Part 1

def sum arr
  arr.sum
end

def max_2_sum arr
  arr.max(2).sum
end

def sum_to_n?(array, n)
  array.combination(2).any? { |a, b| a + b == n }
end

# Part 2

def hello(name)
  "Hello, #{name}"
end

def starts_with_consonant? s
  return false if s.empty? || !s[0].match(/[a-zA-Z]/)
  s[0].match(/[^aeiouAEIOU]/)
end

def binary_multiple_of_4? s
  return false if s.empty? || s.match(/[^01]/)
  s.to_i(2) % 4 == 0
end

# Part 3

class BookInStock
  attr_accessor :isbn, :price

  def initialize(isbn, price)
    @isbn = isbn
    @price = price
    raise ArgumentError.new("Invalid ISBN") if @isbn.empty?
    raise ArgumentError.new("Invalid price") if @price <= 0
  end

  def price_as_string
    "$#{'%.2f' % @price}"
  end
end
