defmodule ElixirNumToWords do
  @moduledoc """
  Documentation for ElixirNumToWords.
  """

  @units ["one", "two", "three", "four", "five", "six", "seven", "eight", "nine"]
  @tens ["ten", "twenty", "thirty", "forty", "fifty", "sixty", "seventy", "eighty", "ninety"]

  def num_to_words(num) when num <= 9, do: get_at_index(@units, num)
  def num_to_words(num) when num > 9 do
    tens = @tens |> get_at_index(div(num, 10))
    units = num |> get_remainder |> maybe_get_units
    print_word(tens, units)
  end

  defp print_word(tens, ""), do: tens
  defp print_word(tens, units), do: tens <> " " <> units

  defp get_remainder(num), do: rem(num, 10)

  defp maybe_get_units(0), do: ""
  defp maybe_get_units(index), do: get_at_index(@units, index)

  defp get_at_index(list, index) do
    Enum.at(list, index - 1)
  end
end
