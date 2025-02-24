```elixir
list = [1, 2, 3, 4, 5]

Enum.map(list, fn x ->
  if x == 3 do
    Process.sleep(1000)
  end
  {x, x} # Return a tuple, order is maintained
  end) |> Enum.each(fn {x, _} -> IO.puts(x) end)
```