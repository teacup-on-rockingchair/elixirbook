defmodule Chop do

	def guess(actual, bottom..top) when (div(top - bottom,2)+bottom) == actual do
		IO.puts "It is #{actual}"
	end


	def guess(actual, bottom..top) when (div(top - bottom,2)+bottom) > actual do
		IO.puts "Is it  #{div(top - bottom,2)+bottom} "
		guess(actual, (bottom)..(div( top - bottom,2)+bottom-1))
	end

	def guess(actual, bottom..top) when (div(top - bottom,2)+bottom) < actual do
		IO.puts "Is it  #{div(top - bottom,2)+bottom} "
		guess(actual, (div(top - bottom,2)+1+bottom)..top)
	end
	
end