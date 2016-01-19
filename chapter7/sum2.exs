defmodule MyList do
	def sum(list), do: _sum(list)
	# private methods
	defp _sum([]),	do: 0
	defp _sum([ head | tail ]), do: head + _sum(tail)

	def reduce([], value, _) do
		value
	end

	def reduce([head | tail], value, func) do
		reduce(tail, func.(head, value), func)
	end

	def map([], _func),	do: []
	def map([ head | tail ], func), do: [ func.(head) | map(tail, func) ]

	#def mapsum(list, func) do
#		map(list, func) |> 	sum
#	end
	def mapsum( list, func) do
		_mapsum(list, func, 0)
	end

	defp _mapsum([], _func, acum),	do: acum
	defp _mapsum([ head | tail ], func, acum) do
		 _mapsum(tail, func, (acum + func.(head))) 
	end

	def maxlist(list), do: _maxlist(list, 0)
	
	defp _maxlist([], max), do: max
	defp _maxlist([head|tail], max) do
		if head > max do
			_maxlist(tail, head)
		else
			_maxlist(tail, max)
		end
	end

	def span(from, to) when from > to, do: raise "Can't do that for now"
	def span(from, from), do: [from]
	def span(from, to) do 
		[from | span(from+1, to)]
	end
end