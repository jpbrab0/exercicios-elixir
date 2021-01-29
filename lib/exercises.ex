defmodule Exercises do
  use Tesla

  plug Tesla.Middleware.BaseUrl, "https://api.github.com"
  plug Tesla.Middleware.Headers, [{"user-agent", "elixir"}]
  plug Tesla.Middleware.JSON
  def celsius_to_fahrenheit(num) do 
    IO.puts (num*9/5) + 32
  end
  def fahrenheit_to_celsius(num) do 
    IO.puts (num-32)*5/9
  end
  def number_odd_or_pair(num) do
    if rem(num,2) == 0 do
      IO.puts "This number is pair."
      else 
        IO.puts "This number is odd."
    end
  end
  def github_user_info(user) do 
    get("/users/" <> user)
  end
end