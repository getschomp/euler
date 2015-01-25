def fibonacci(n)
  num1 = 1
  num2 = 2
  fib_numbers = []
  fib_numbers << num1
  fib_numbers << num2
  i = 1
  while i <= n
    transfer = num2
    num2 = num1 + num2
    num1 = transfer
    fib_numbers << num2
    i = fib_numbers.last
  end
  if i > 4_000_000
    fib_numbers.pop
  end
  fib_numbers
end


def eliminate_odds(array)
  even_fibs = []
  array.each do |num|
    if num % 2 == 0
      even_fibs << num
    end
  end
  even_fibs
end

fib_num = fibonacci(4_000_000)
puts eliminate_odds(fib_num)
