defmodule ElixirNumToWordsTest do
  use ExUnit.Case
  doctest ElixirNumToWords

  test "can convert number to words" do
    words = [{1, "one"}, {2, "two"}, {3, "three"}, {4, "four"}, {5, "five"}, {6, "six"}, {7, "seven"}, {8, "eight"}, {9, "nine"}, {10, "ten"}, {20, "twenty"}, {21, "twenty one"}, {22, "twenty two"}, {23, "twenty three"}, {30, "thirty"}, {31, "thirty one"}, {45, "forty five"}, {72, "seventy two"}, {99, "ninety nine"}]

    Enum.each(words, fn {num, word} ->
      assert ElixirNumToWords.num_to_words(num) == word
    end)
  end
end
