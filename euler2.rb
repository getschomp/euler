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
    fibnumbers.pop
  end
end

puts fibonacci(4_000_000)
