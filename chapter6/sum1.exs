defmodule SumRecursive do
	def of(0) do 0 end
	def of(n) do
		n + of(n-1) 
	end
end