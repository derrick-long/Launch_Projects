def factorial(n)
  if n <= 1
    1
  else #hits else again subtracting one each time, basically  another way to loop
    n * factorial(n - 1)
  end
end
