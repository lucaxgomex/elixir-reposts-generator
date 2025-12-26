defmodule RepostsGenerator do
  @moduledoc """
  Documentation for `RepostsGenerator`.
  """

  @doc """
  Hello world.

  ## Examples

      iex> RepostsGenerator.hello()
      :world

  """

  def build(filename) do
    case File.read("reports/#{filename}") do
      {:ok, result} -> result
      {:error, reason} -> reason
      _ -> "Any case."
    end
  end
end
