defmodule Streams do
  @moduledoc """
  Work with `Streams` when you'd work with big lists.
  """

  def square_each_item(list) do
    list |> Stream.map(&(&1 * &1)) |> Enum.take(3)
  end

  def test_square_each_item(list) do
    list |> Enum.map(&(&1 * &1)) |> Enum.take(3)
  end
end
