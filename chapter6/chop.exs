defmodule Chop do

	def make_guess( actual, _, actual) do
		IO.puts "It is #{actual}"
	end

	def make_guess( actual, bottom..top, guess) when guess > actual do
		IO.puts "Is it #{guess} ? "
		guess(actual,(bottom)..(div( top - bottom,2)+bottom-1)) 
	end

	def make_guess( actual, bottom..top, guess) when guess < actual do
		IO.puts "Is it #{guess} ? "
		guess(actual, (div(top - bottom,2)+1+bottom)..top)
	end


	def guess(actual, bottom..top)  do
		make_guess(actual, bottom..top, (div(top - bottom,2)+bottom))
	end
	
end