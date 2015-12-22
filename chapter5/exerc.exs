# Write a function that takes three arguments. If the first two are zero,
# return “FizzBuzz.” If the first is zero, return “Fizz.” If the second is zero,
# return “Buzz.” Otherwise return the third argument. Do not use any lan-
# guage features that we haven’t yet covered in this book.

fizz_buzz = fn
  ( 0, 0, _) -> "FizzBuzz"
  ( 0, _, _) -> "Fizz"
  ( _, 0, _) -> "Buzz"
  ( _, _, c) -> c
end

# The operator rem(a, b) returns the remainder after dividing a by b . Write a
# function that takes a single integer ( n ) and calls the function in the previ-
# ous exercise, passing it rem(n,3) , rem(n,5) , and n . Call it seven times with
# the arguments 10, 11, 12, and so on. You should get “Buzz, 11, Fizz, 13,
# 14, FizzBuzz, 16.”

rem_fizz = fn(n) ->
  fizz_buzz.(rem(n,3), rem(n,5), n)
end

rem_fizz.(10)
rem_fizz.(11)
rem_fizz.(12)
rem_fizz.(13)
rem_fizz.(14)
rem_fizz.(15)
rem_fizz.(16)



# Exercise: Functions-4
# Write a function prefix that takes a string. It should return a new function
# that takes a second string. When that second function is called, it will
# return a string containing the first string, a space, and the second string.
# iex> mrs = prefix.("Mrs")
# #Function<erl_eval.6.82930912>
# iex> mrs.("Smith")
# "Mrs Smith"
# iex> prefix.("Elixir").("Rocks")
# "Elixir Rocks"

prefix = fn(a) -> fn (b) -> "#{a} #{b}" end end



# Use the & ... notation to rewrite the following.
# – Enum.map [1,2,3,4], fn x -> x + 2 end
# – Enum.each [1,2,3,4], fn x -> IO.inspect x end

Enum.map [1,2,3,4], &(&1+2)

Enum.map [1,2,3,4], &(IO.inspect(&1))