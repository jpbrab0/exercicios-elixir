defmodule ExercisesTest do
  use ExUnit.Case
  doctest Exercises

  test "Convert 32°C to Fahrenheit." do
    assert Exercises.celsius_to_fahrenheit(32.0) == 89.6
  end
  test "Convert 89.6°F to celsius." do
    assert Exercises.fahrenheit_to_celsius(89.6) == 32.0
  end
  test "Verify if number is even." do 
    assert Exercises.number_odd_or_even(2) == "This number is even."
  end
  test "Search jpbrab0 in github." do
    {:ok, response} = Exercises.github_user_info("jpbrab0")
    assert response.status == 200
  end
  test "Check if the weight is above the indicated." do 
    assert Exercises.calc_imc("João", 1.50, 50) == "João, your weight is normal."
  end
  test "Checking if the countdown worked" do 
    assert Exercises.countdown(0,11) == "Finished countdown."
  end
  test "Vowels count of string" do 
    assert Exercises.count_vowels("salve galera") == 5
  end
  test "Validate cpf" do 
    assert Exercises.validate_cpf("142.340.300-23") == "This cpf is valid"
  end
  test "Validate cep" do 
    assert Exercises.validate_cep("12345-000") == "This cep is valid"
  end
  test "Test song decoder" do 
    assert Exercises.songdecoder("WUBWEWUBAREWUBWUBTHEWUBCHAMPIONSWUBMYWUBFRIENDWUB") == " WE ARE  THE CHAMPIONS MY FRIEND "
  end
end
