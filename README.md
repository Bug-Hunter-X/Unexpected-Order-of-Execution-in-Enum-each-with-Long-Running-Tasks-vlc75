# Elixir Enum.each Unexpected Order Issue

This example demonstrates a potential issue with `Enum.each` when the function passed to it contains long-running operations.  While it appears that the loop should iterate sequentially, the order of output may be unpredictable. This is due to how `Enum.each` handles concurrent tasks.

**Reproduce the issue:** run `bug.ex`. Observe that while the `IO.puts` function mostly maintains the order, it is not guaranteed due to concurrency.

**Solution:** Use `Enum.map` if the order of processing and results is critical.  If you need to perform side effects, consider using tasks and managing their execution explicitly.