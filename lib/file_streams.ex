defmodule FileStreams do
  def print_file(filename) do
    File.stream!(filename)
    |> Stream.map(fn line -> String.replace(line, "\n", "") end)
    |> Enum.each(fn line -> write(line) end)
  end

  def write(line) do
    Process.sleep(300)

    line
    |> String.split("")
    |> Enum.each(fn char -> write_char(char) end)
  end

  def write_char(c) do
    c |> IO.write()
  end
end
