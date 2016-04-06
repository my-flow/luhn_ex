defmodule Luhn do
  require Integer

  @spec valid?(integer, 2..36, 2..36 | nil) :: boolean
  def valid?(number, base \\ 10, mod \\ nil) do
    checksum(number, base, mod)
    |> Kernel.==(0)
  end

  def checksum(number, base \\ 10, mod \\ nil)

  @spec checksum(integer, 2..36, 2..36 | nil) :: integer
  def checksum(number, base, mod) when is_integer(number) do
    number
    |> Integer.to_string(base)
    |> checksum(base, mod)
  end

  @spec checksum(String.t, 2..36, 2..36 | nil) :: integer
  def checksum(number, base, mod) do
    mod = mod || base

    number
    |> String.split("", trim: true)
    |> Enum.reduce([], fn(n, acc) -> [String.to_integer(n, base)|acc] end)
    |> double(mod, 0)
    |> rem(mod)
  end

  def double([], _, acc), do: acc
  def double([x], _, acc), do: x + acc
  def double([x,y|tail], mod, acc), do: double(tail, mod, acc + x + sum(y * 2, mod))

  defp sum(number, mod) when number >= mod, do: sum(number - mod + 1, mod)
  defp sum(number, _), do: number
end
