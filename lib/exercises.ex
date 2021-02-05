defmodule Exercises do
  use Tesla
  @vowels ~r/(a|e|i|o|u)/i
  @regex_cpf ~r/^[(0-9)]{3}.[(0-9)]{3}.[(0-9)]{3}-[(0-9)]{2}/
  @regex_cep ~r/^([0-9]){2}([0-9]){2}.-([0-9]){2}[^A-Z]$/

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
  def countdown(start_count,end_count) do
    for x <- end_count..start_count+1 do 
      IO.puts x - 1     
    end
    "Finished countdown."
  end
  def count_vowels(string) do
    @vowels 
    |> Regex.scan(string)
    |> Enum.count()
  end
  def validate_cpf(cpf) do 
    if @regex_cpf |> Regex.match?(cpf) do 
      "This cpf is valid"
      else
        "This cpf is invalid"
    end
  end 
  def validate_cep(cep) do 
    if @regex_cep |> Regex.match?(cep) do 
      "This cep is valid"
      else
        "This cep is invalid"
    end
  end
end
