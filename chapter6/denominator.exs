defmodule GCD do
	def of(x, 0) do x end
	def of(x, y) do 
		IO.puts "gdc(#{x}, #{y})"
		of(y, rem(x,y)) 
	end
end