defmodule Mylist do

	def dump(h) do
		IO.inspect(h)
	end

	def _flatten([], [], result) do
		IO.puts "End"
		result
	end

	def _flatten([], [h|t], result) do
		IO.puts "End tail"
		dump([h|t])
		_flatten(h, t, result)
	end

	def _flatten([h|t], tail, result) do
		IO.puts "Check first "
		dump(h)
		_flatten( h, [t|tail],  result)
	end

	def _flatten(h, [t|tail], result) do
		IO.puts "Check second "
		dump(t)
		IO.puts "Added"
		dump(h)
		_flatten( t, [tail], [h| result])
	end

	def _inverse([], result) do
		result
	end

	def _inverse([h|t], result) do
		_inverse(t, [h| result])
	end

	def inverse([h|t]) do
		_inverse([h|t], [])
	end

	def flatten([h|t]) do
		dump inverse(_flatten(h, t, []))
	end

  def span(from, to ) when from > to do
    []
  end

  def span(from, to) do
    [from | span(from+1, to)]
  end

  def rem_all( num, list) do
    Enum.all?(list,&( rem(num, &1) != 0))
  end

  def _primes(n) do
    for x <- span(2, n), rem_all(x, span(2,x-1)), do: x
  end

  def primes(n) do
    _primes(n)
  end

end

#Mylist.flatten([ 1, [ 2, 3, [4] ], 5, [[[6]]]])
