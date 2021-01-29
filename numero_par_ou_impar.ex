defmodule NumberPairOrOdd do 
  def check_number(num) do
    if rem(num,2) == 0 do
      IO.puts "This number is pair."
      else 
        IO.puts "This number is odd."
    end
  end
end
