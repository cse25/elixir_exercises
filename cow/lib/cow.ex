defmodule Cow do
  def get_name do
    IO.gets("What is your name?")
    |> String.trim
  end

  def get_cow_lover do
    IO.getn("Do you like cows? [y|n] ", 1)
  end

  def interrogate do
    name = get_name()
    case String.downcase(get_cow_lover()) do
      "y" ->
        IO.puts("Great, here's a cow for you #{name}.")
      "n" ->
        IO.puts("That's a shame, #{name}.")
      _ ->
        IO.puts("You should have entered 'y' or 'n'.")
    end
  end
end
