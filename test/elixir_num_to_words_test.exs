defmodule ElixirNumToWordsTest do
  use ExUnit.Case
  doctest ElixirNumToWords

  test "can convert number to words" do
    number_word_tuples = [{1, "one"}, {2, "two"}, {3, "three"}, {4, "four"}, {5, "five"}, {6, "six"}, {7, "seven"}, {8, "eight"}, {9, "nine"}, {10, "ten"}, {20, "twenty"}, {21, "twenty one"}, {22, "twenty two"}, {23, "twenty three"}, {30, "thirty"}, {31, "thirty one"}, {45, "forty five"}, {72, "seventy two"}, {99, "ninety nine"}]

    loop_number_words(number_word_tuples)
  end

  def loop_number_words([]), do: nil
  def loop_number_words([{num, word} | words]) do
    assert ElixirNumToWords.num_to_words(num) == word
    loop_number_words(words)
  end
end
