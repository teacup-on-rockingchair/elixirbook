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

  def span(from, from) do
    from
  end

  def span(from, to) do
    [from | span(from+1, to)]
  end
end

#Mylist.flatten([ 1, [ 2, 3, [4] ], 5, [[[6]]]])
