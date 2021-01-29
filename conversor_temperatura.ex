defmodule ConversorTemp do 
  def celsius_to_fahrenheit(num) do 
    IO.puts (num*9/5) + 32
  end
  def fahrenheit_to_celsius(num) do 
    IO.puts (num-32)*5/9
  end
end
