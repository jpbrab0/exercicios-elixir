defmodule Exercises do
  use Tesla

  plug Tesla.Middleware.BaseUrl, "https://api.github.com"
  plug Tesla.Middleware.Headers, [{"user-agent", "elixir"}]
  plug Tesla.Middleware.JSON
  def celsius_to_fahrenheit(num) do 
    (num*9/5) + 32   
  end
  def fahrenheit_to_celsius(num) do 
    (num-32)*5/9
  end
  def number_odd_or_even(num) do
    if rem(num,2) == 0 do
      "This number is even."
      else 
        "This number is odd."
    end
  end
  def github_user_info(user) do 
    get("/users/" <> user)
  end
  def calc_imc(name, weight, height) do 
    imc = height / (weight*weight)
    if imc >= 30 do
      "#{name}, are you overweight."
      else
        "#{name}, your weight is normal."
    end
  end
  def regressive_count(start_count,end_count) do
    for x <- end_count..start_count do 
      IO.puts x - 1     
    end
    "Finished count."
  end
end
